package com.java.controller.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.java.controller.CommonController;
import com.java.entity.Brand;
import com.java.entity.Category;
import com.java.entity.Product;
import com.java.repository.BrandRepository;
import com.java.repository.CategoryRepository;
import com.java.repository.ProductRepository;

@Controller
public class ProductController extends CommonController{
	
	@Value("${upload.path}")
	private String pathUploadImage;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	BrandRepository brandRepository;

	//tạo constructor
	public ProductController(CategoryRepository categoryRepository, BrandRepository brandRepository,
			ProductRepository productRepository) {
		this.productRepository = productRepository;
		this.categoryRepository = categoryRepository;
		this.brandRepository = brandRepository;
	}

	// tìm list sản phẩm và gán cho products attribute 
	@ModelAttribute("products")
	public List<Product> showProduct(Model model) {
		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);

		return products;
	}
	//Phần xử lý show sản phẩm
	@GetMapping(value = "/admin/products")
	public String products(Model model, Principal principal) {
		//tạo đối tượng product
		Product product = new Product();
		//gán model product = đối tượng product
		model.addAttribute("product", product);

		return "admin/products";
	}

	// thêm sản phẩm
	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("product") Product product, ModelMap model,
			@RequestParam("file") MultipartFile file, HttpServletRequest httpServletRequest) {
		//dùng try catch
		try {
			//xử lý file
			File convFile = new File(pathUploadImage + "/" + file.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(convFile);//ghi dữ liệu vào một file theo định dạng byte
			fos.write(file.getBytes());
			fos.close();
		} catch (IOException e) {

		}
		//gán thuộc tính image cho product
		product.setImage(file.getOriginalFilename());
		//lưu sản phẩm
		Product p = productRepository.save(product);
		//nếu p tồn tại thì gán attribute model mess là update thành công
		if (null != p) {
			model.addAttribute("message", "Update success");
			model.addAttribute("product", product);
		} else {
			//ngược lại thì thông báo fail
			model.addAttribute("message", "Update failure");
			model.addAttribute("product", product);
		}
		return "redirect:/admin/products";
	}
	
	

	// tìm kiếm kiếm list category và gán cho modelattribute categoryList
	@ModelAttribute("categoryList")
	public List<Category> showCategory(Model model) {
		List<Category> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);

		return categoryList;
	}

	// tìm kiếm kiếm list brand và gán cho modelattribute brandList
	@ModelAttribute("brandList")
	public List<Brand> brandList(Model model) {
		
		List<Brand> brandList = brandRepository.findAll();
		model.addAttribute("brandList", brandList);

		return brandList;
	}
	
	// tìm sản phẩm theo id 
	@GetMapping(value = "/editProduct/{id}")
	public String editCategory(@PathVariable("id") Integer id, ModelMap model) {
		Product product = productRepository.findById(id).orElse(null);
		
		model.addAttribute("product", product);

		return "admin/editProduct";
	}

	// delete sản phầm theo id
	@GetMapping("/deleteProduct/{id}")
	public String delProduct(@PathVariable("id") Integer id, Model model) {
		productRepository.deleteById(id);
		model.addAttribute("message", "Delete successful!");

		return "redirect:/admin/products";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
}
