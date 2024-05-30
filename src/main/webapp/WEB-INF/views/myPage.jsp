<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
main {
	width: 1240px;
	margin: 100px auto;
}

h1 {
	text-align: center;
	margin-bottom: 50px;
}

.my-menu {
	display: flex;
	justify-content: center;
	gap: 50px;
}

.my-menu a {
	padding: 15px 30px;
	background: #0071be;
	color: #fff;
}
</style>
</head>
<body>

	<header>
		<%@ include file="./common/header.jsp"%>
	</header>

	<main>
		<h1>My Page</h1>

		<div class="my-menu">
			<div>
				<a href="updateForm?mid=${sessionScope.mid }">내 정보수정</a>
			</div>
			<div>
				<a href="cartPage?mid=${sessionScope.mid }">장바구니</a>
			</div>
		</div>

	</main>
</body>
</html>