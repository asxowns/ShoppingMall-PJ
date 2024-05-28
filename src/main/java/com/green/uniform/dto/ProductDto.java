package com.green.uniform.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {

	private int pcode;
	private String pname;
	private String imgurl;
	private MultipartFile imgName;
	private int amount;
	private int price;
	private String description;
	
	
}
