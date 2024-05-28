package com.green.uniform.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.green.uniform.dto.MemberDto;
import com.green.uniform.dto.ProductDto;

@Mapper
public interface Iuniformdao {

	//회원가입
	public void regist(MemberDto memberDto);
	
	//로그인
	public MemberDto login(MemberDto member);
	
	//상품등록
	public void productRegist(ProductDto product);
	
	//상품조회
	public List<ProductDto> productList();
	
	//상품개별조회
	public ProductDto productGetPcode(@Param("pcode") int pcode);
	
	//상품수정
	public void productUpdate(ProductDto product);
	
	//상품삭제
	public void productDelete(@Param("pcode") int pcode);
	
}
