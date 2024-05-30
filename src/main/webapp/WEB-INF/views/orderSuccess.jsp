<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- JSTL Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a{
	text-decoration:none;
	color:#333;
}

main {
	width: 1200px;
	margin: 100px auto;
}

main h1 {
	text-align: center;
	margin-bottom: 50px;
}
main h2 {
	text-align:center;
}
.goMain{
	text-align:center;
	margin-top:80px;
}
.goMain a{
	display:inline-block;
	width:180px;
	padding:15px 0;
	color:#fff;
	background:#0071be;
}
</style>
</head>
<body>
	<main>
		<h1>주문 성공!!</h1>
			<c:if test="${not empty successMsg }">
				<h2>${successMsg }</h2>
			</c:if>
			<div class="goMain">
				<a href="/">메인으로 돌아가기</a>
			</div>
	</main>
</body>
</html>