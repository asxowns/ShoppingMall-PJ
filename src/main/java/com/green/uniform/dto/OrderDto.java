package com.green.uniform.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDto {

	private int oid;
	private int mid;
	private int pcode;
	private int amount;
	
}
