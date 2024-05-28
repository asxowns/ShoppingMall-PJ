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
	table, tr, th, td{
		border-collapse:collapse;
		border:1px solid #ccc;
		padding:5px;
	}
	
	.productRegist-area{
		width:1200px;
	}
	table{
		margin:0 auto;
	}
	th{
		text-align:right;
	}
	
	input[type="text"]{
		width:98%;
	}
	input[type="submit"]{
		width:100%;
		height:50px;
	}
	textarea{
		width:98%;
		height:100px;
	}
	.productRegistBtn{
		width:600px;
		margin:20px auto;
		text-align:right;
	}
	.productRegistBtn a{
		display:inline-block;
		padding:15px 30px;
		background:#0071be;
		color:#fff;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>
	
	<main>
		<h1>상품 등록</h1>
		
		<div class="productRegistBtn">
			<a href="productList">상품리스트</a>
		</div>
		
		<c:if test="${prod.pcode eq null }">
			<form action="productRegist" method="post" enctype="multipart/form-data">
		</c:if>
		<c:if test="${prod.pcode ne null }">
			<form action="productUpdate?pcode=${prod.pcode }" method="post" enctype="multipart/form-data">
		</c:if>
			<div class="productRegist-area">
				<table>
					<tr>
						<th>상품 이름 : </th>
						<c:if test="${prod.pname eq null }">
							<td><input type="text" name="pname"></td>
						</c:if>
						<c:if test="${prod.pname ne null }">
							<td><input type="text" name="pname" value="${prod.pname }"></td>
						</c:if>
					</tr>
					<tr>
						<th>상품 이미지 : </th>
						<td><input type="file" name="imgName"></td>
					</tr>
					<tr>
						<th>상품 수량 : </th>
						<c:if test="${prod.amount eq null }">
							<td><input type="text" name="amount"></td>
						</c:if>
						<c:if test="${prod.amount ne null }">
							<td><input type="text" name="amount" value="${prod.amount }"></td>
						</c:if>
					</tr>
					<tr>
						<th>상품 가격 : </th>
						<c:if test="${prod.price eq null }">
							<td><input type="text" name="price"></td>
						</c:if>
						<c:if test="${prod.price ne null }">
							<td><input type="text" name="price" value="${prod.price }"></td>
						</c:if>
					</tr>
					<tr>
						<th>상품 설명 : </th>
						<c:if test="${prod.description eq null}">
							<td><textarea name="description"></textarea></td>
						</c:if>
						<c:if test="${prod.description ne null}">
							<td><textarea name="description">${prod.description }</textarea></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${prod.pcode eq null }">
							<td colspan="2"><input type="submit" value="등록하기"></td>
						</c:if>
						<c:if test="${prod.pcode ne null }">
							<td colspan="2"><input type="submit" value="수정하기"></td>
						</c:if>
					</tr>
				</table>
			</div>
		</form>
		
	</main>

</body>
</html>