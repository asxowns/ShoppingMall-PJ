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
	table, tr, th, td{
		border-collapse:collapse;
		border:1px solid #000;
		padding:5px;
	}
	h1{
		text-align:center;
		margin-bottom:50px;
	}
	.login-area{
		width:1200px;
	}
	table{
		margin:0 auto;
	}
	input[type="submit"]{
		width:100%;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>
	
	<main>
	<h1>로그인</h1>
		<form action="login" method="get">
			<table>
				<div class="login-area">
					<tr>
						<th>아이디 : </th>
						<td><input type="text" name="username" id="username"></td>
					</tr>
					<tr>
						<th>비밀번호 : </th>
						<td><input type="text" name="userpw"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="로그인"></td>
					</tr>
				</div>
			</table>
		</form>
	</main>
	
	<!-- 에러 메시지 표시 -->
    <c:if test="${not empty error}">
        <script>
            const username = document.getElementById("username");
            alert("${error}");
            username.focus();
        </script>
    </c:if>
	
</body>
</html>