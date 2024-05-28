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
	main h1{
		text-align:center;
		margin-bottom:50px;
	}
	
	.best-item ul{
		display:flex;
		flex-wrap:wrap;
		gap:25px;
	}
	.best-item ul li{
		width:280px;
	}
	.best-item ul li:hover img{
		transform: scale(1.1);
	}
	
	.best-item ul li .item-img img{
		transition:0.3s;
		max-width:100%;
	}
	.item-info{
		padding-top:20px;
	}
	.item-info h3{
		font-weight:400;
		padding-bottom:10px;
	}
	
	.pname{
		font-size:17px;
	}
	.price{
		font-size:18px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp" %>
	</header>
	
	<main>
		<h1>베스트</h1>
		<div class="best-item">
			<ul>
				<c:forEach var="prod" items="${list }">
					<li>
						<a href="detail?pcode=${prod.pcode }">
							<div class="item-img">
								<img src="/resource/img/${prod.imgurl }">
							</div>
							<div class="item-info">
								<h3 class="pname">${prod.pname }</h3>
								<h2 class="price">${prod.price } 원</h2>
							</div>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</main>
	
	
</body>
</html>