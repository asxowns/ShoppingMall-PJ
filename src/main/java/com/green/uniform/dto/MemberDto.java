package com.green.uniform.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {

	private int mid;
	private String name;
	private String username;
	private String userpw;
	private String phone;
	private String addr;
	private String role;
	
}
