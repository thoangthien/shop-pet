package com.java.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoadImageController {
	
	@Value("${upload.path}")
	private String pathUploadImage;
	
	@GetMapping(value = "loadImage")
	@ResponseBody
	public byte[] index(@RequestParam(value = "imageName") String imageName, HttpServletResponse response)
			throws IOException {
		response.setContentType("image/jpeg");// được đưa vào "phản hồi HTTP" để thông báo cho trình duyệt về định dạng của phản hồi, để trình duyệt có thể diễn giải nó.
		File file = new File(pathUploadImage + File.separatorChar + imageName); // File.separatorChar phân tách các đường dẫn tệp riêng lẻ trong danh sách đường dẫn tệp
		InputStream inputStream = null; //Lớp trừu tượng này là lớp cha của tất cả các lớp đại diện cho một luồng byte đầu vào.
		if (file.exists()) {
			try {
				inputStream = new FileInputStream(file); // đọc dữ liệu từ một tệp dưới dạng chuỗi byte
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			if (inputStream != null) {
				return IOUtils.toByteArray(inputStream);
			}
		}
		return null;
	}

}
