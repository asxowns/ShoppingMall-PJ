<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.min.css" />
<style>
	*{
		margin:0;
		padding:0;
	}
	body{
		color:#333;
		font-size:16px;
		font-family: "Pretendard Variable", Pretendard;
	}
	ul{
		list-style:none;
	}
	a{
		text-decoration:none;
		color:#333;
	}
	
	#header{
		width:100%;
		height:80px;
		margin:0 auto;
		border-bottom:1px solid #eee;
	}
	.head{
		width:1200px;
		height:100%;
		margin:0 auto;
		display:flex;
		justify-content:space-between;
		align-items:center;
	}
	
	.nav-bar ul{
		display:flex;
	}
	.nav-bar ul li{
		padding:0 30px;
		font-size:20px;
	}
	
	.info-area ul{
		display:flex;
	}
	.info-area ul li{
		padding:0 10px;
		padding-top:40px;
		font-size:13px;
	}
</style>
</head>
<body>
	
	<div id="header">
		<div class="head">
			<div class="logo">
				<a href="/"><img src="/resource/img/logo.png"></a>
			</div>
			<div class="nav-bar">
				<ul>
					<li><a href="">베스트</a></li>
					<li><a href="">신상품</a></li>
					<li><a href="">상품후기</a></li>
					<li><a href="">고객센터</a></li>
				</ul>
			</div>
			<div class="info-area">
				<ul>
				<c:if test="${sessionScope.username eq null }">
					<li><a href="loginform">로그인</a></li>
				</c:if>
					<c:if test="${sessionScope.username ne null }">
						<c:choose>
							<c:when test="${sessionScope.role eq 'ROLE_ADMIN'}">
								<li><a href="admin">관리자</a>
							</c:when>
							<c:otherwise>
								<li><a href="myPage">${sessionScope.username } 님</a></li>
							</c:otherwise>
						</c:choose>
					</c:if>
					
				<c:if test="${sessionScope.username eq null }">
					<li><a href="registform">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.username ne null }">
					<li><a href="logout">로그아웃</a></li>
				</c:if>
					<li><a href="cart">장바구니</a></li>
				</ul>
			</div>
		</div>
	</div>
	
</body>
</html>