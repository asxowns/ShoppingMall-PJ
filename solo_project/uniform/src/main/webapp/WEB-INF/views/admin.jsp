<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.admin-menu{
		display:flex;
		justify-content:center;
		gap:50px;
	}
	.admin-menu a{
		padding:15px 30px;
		background:#0071be;
		color:#fff;
	}
	.admin-menu
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>

	<main>
		<h1>관리자 페이지</h1>
		
		<div class="admin-menu">
			<div>
				<a href="productRegistForm">상품 등록</a>
			</div>
			<div>
				<a href="productList">상품 조회</a>
			</div>
		</div>
	</main>

</body>
</html>