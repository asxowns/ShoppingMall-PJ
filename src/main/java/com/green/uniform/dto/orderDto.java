package com.green.uniform.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class orderDto {

	private int oid;
	private int total_amount;
	private String status;
	
}
