package com.green.uniform.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.green.uniform.dto.CartDto;
import com.green.uniform.dto.MemberDto;
import com.green.uniform.dto.OrderDto;
import com.green.uniform.dto.ProductDto;

@Mapper
public interface Iuniformdao {

	//회원가입
	public void regist(MemberDto memberDto);
	
	//로그인
	public MemberDto login(MemberDto member);
	
	//회원 정보 개별조회
	public MemberDto memberGetMid(@Param("mid") int mid);
	
	//회원 정보수정
	public void update(MemberDto memberDto);
	
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
	
	//장바구니 담기(등록)
	public int cartAdd(CartDto cartDto);
	
	//장바구니 목록(리스트)
	public List<CartDto> cartList(@Param("mid") int mid);

	//주문페이지 목록(리스트)
	public List<CartDto> orderList(@Param("mid") int mid);
	
	//주문하기 (주문테이블 등록)
	public boolean orderNow(OrderDto orderDto);
	
	//장바구니 개별 조회
	public CartDto cartinfo(@Param("mid") int mid);
	
	//장바구니 전부삭제(mid)
	public void deleteCart(@Param("mid") int mid, @Param("pcode") int pcode);
	
}
