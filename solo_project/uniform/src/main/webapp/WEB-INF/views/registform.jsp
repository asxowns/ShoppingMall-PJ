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
	main h1{
		text-align:center;
		margin-bottom:50px;
	}
	
	table, tr, th, td{
		border-collapse:collapse;
		border:1px solid #ccc;
		padding:5px;
	}
	.table-area{
		width:1200px;
	}
	table{
		margin:0 auto;
	}
	th{
		text-align:right;
	}
	input[type="submit"]{
		width:100%;
		height:50px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>
	
	<main>
	<h1>회원 가입</h1>
		<form action="regist" method="post">
			<div class="table-area">
				<table>
					<tr>
						<th>이름 : </th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>아이디 : </th>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<th>비밀번호 : </th>
						<td><input type="text" name="userpw"></td>
					</tr>
					<tr>
						<th>휴대폰 번호 : </th>
						<td><input type="text" name="phone"></td>
					</tr>
					<tr>
						<th>주소 : </th>
						<td><input type="text" name="addr"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="회원가입"></td>
					</tr>
				</table>
			</div>
		</form>
	</main>
</body>
</html>