package com.java.entity;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import lombok.Data;

@Data
public class OrderExcelExporter {
	
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;

	private List<Order> listOrDetails;

	public OrderExcelExporter(List<Order> listOrDetails) {

		this.listOrDetails = listOrDetails;
		workbook = new XSSFWorkbook();
		sheet = workbook.createSheet("OrderDetails");
	}
	
	private void writeHeaderRow() {

		Row row = sheet.createRow(0);

		Cell cell = row.createCell(0);
		cell.setCellValue("ID");
		
		cell = row.createCell(1);
		cell.setCellValue("Mô tả sản phẩm");

		cell = row.createCell(2);
		cell.setCellValue("Giá");

		cell = row.createCell(3);
		cell.setCellValue("Tên người đặt");

		cell = row.createCell(4);
		cell.setCellValue("Sđt");

		cell = row.createCell(5);
		cell.setCellValue("Địa chỉ");

//		cell = row.createCell(6);
//		cell.setCellValue("OrderDate");

	}
	
	private void writeDataRows() {
		int rowCount = 1;
		for (Order order : listOrDetails) {
			Row row = sheet.createRow(rowCount++);

			Cell cell = row.createCell(0);
			cell.setCellValue(order.getOrderId());

			cell = row.createCell(1);
			cell.setCellValue(order.getDescription());

			cell = row.createCell(2);
			cell.setCellValue(order.getTotalPrice());

			cell = row.createCell(3);
			cell.setCellValue(order.getReceiver());

			cell = row.createCell(4);
			cell.setCellValue(order.getPhone());
			
			cell = row.createCell(5);
			cell.setCellValue(order.getAddress());
			
//			cell = row.createCell(6);
//			cell.setCellValue(order.getOrderDate());

		}

	}
	
	public void export(HttpServletResponse response) throws IOException {

		writeHeaderRow();
		writeDataRows();

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();

	}

}
