package com.green.uniform.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDto {

	private int cid;
	private int mid;
	private int pcode;
	private int amount;
	private String pname;
	private String imgurl;
	private String name;
	private String addr;
	private String phone;
	private int price;
	private int totalprice;
}
