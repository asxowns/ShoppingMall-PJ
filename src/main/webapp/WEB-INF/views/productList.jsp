<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	main{
		width:1200px;
		margin:100px auto;
	}
	h1{
		text-align:center;
		margin-bottom:50px;
	}
	table, tr, th, td{
		border-collapse:collapse;
		border:1px solid #ccc;
		padding:5px;
	}
	.imgTd img{
		width:150px;
	}
	.amountTd{
		width:70px;
	}
	.priceTd{
		width:110px;
	}
	.productList-area{
		width:1200px;
	}
	table{
		width:1200px;
		margin:0 auto;
	}
	td{
		text-align:center;
	}
	.productRegistBtn{
		width:1200px;
		margin:20px auto;
		text-align:right;
	}
	.productRegistBtn a{
		display:inline-block;
		padding:15px 30px;
		background:#0071be;
		color:#fff;
	}
	.prod-name{
		text-decoration:underline;
	}
	.productUpdate a{
		width:80px;
		display:inline-block;
		background:#0071be;
		padding:10px 0;
		color:#fff;
		font-size:13px;
	}
	.productDelete a{
		width:80px;
		display:inline-block;
		background:#d44958;
		padding:10px 0;
		color:#fff;
		font-size:13px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>
	
	<main>
		<h1>상품 리스트</h1>
		<div class="productRegistBtn">
			<a href="productRegistForm">상품등록</a>
		</div>
		<div class="productList-area">
			<table>
				<tr>
					<th>번호</th>
					<th>상품명</th>
					<th>상품 이미지</th>
					<th>수량</th>
					<th>가격</th>
					<th>상품 설명</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="prod" items="${list }">
					<tr>
						<td>${prod.pcode }</td>
						<td><a href="" class="prod-name">${prod.pname }</a></td>
						<td class="imgTd"><img src="/resource/img/${prod.imgurl }"></td>
						<td class="amountTd">${prod.amount }개</td>
						<td class="priceTd">${prod.price } 원</td>
						<td>${prod.description }</td>
						<td class="productUpdate"><a href="productUpdateForm?pcode=${prod.pcode }">상품수정</a></td>
						<td class="productDelete"><a href="productDelete?pcode=${prod.pcode }">상품삭제</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</main>
</body>
</html>