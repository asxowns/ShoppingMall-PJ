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
	<c:choose>
		<c:when test="${member.mid eq null }">
			<form action="regist" method="post">
		</c:when>
		<c:when test="${member.mid ne null }">
			<form action="update" method="post">
		</c:when>
	</c:choose>
			<div class="table-area">
				<table>
					<tr>
						<th>번호</th>
						<c:if test="${member.mid ne null }">
							<td><input type="text" name="mid" value="${member.mid }" readonly></td>
						</c:if>
					</tr>
					<tr>
						<th>이름 : </th>
						<c:choose>
							<c:when test="${member.name eq null }">
								<td><input type="text" name="name"></td>
							</c:when>
							<c:when test="${member.name ne null }">
								<td><input type="text" name="name" value="${member.name }"></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<th>아이디 : </th>
						<c:choose>
							<c:when test="${member.username eq null }">
								<td><input type="text" name="username"></td>
							</c:when>
							<c:when test="${member.username ne null }">
								<td><input type="text" name="username" value="${member.username }"></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<th>비밀번호 : </th>
						<c:choose>
							<c:when test="${member.userpw eq null }">
								<td><input type="text" name="userpw"></td>
							</c:when>
							<c:when test="${member.userpw ne null }">
								<td><input type="text" name="userpw" value="${member.userpw }"></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<th>휴대폰 번호 : </th>
						<c:choose>
							<c:when test="${member.phone eq null }">
								<td><input type="text" name="phone"></td>
							</c:when>
							<c:when test="${member.phone ne null }">
								<td><input type="text" name="phone" value="${member.phone }"></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<th>주소 : </th>
						<c:choose>
							<c:when test="${member.addr eq null }">
								<td><input type="text" name="addr"></td>
							</c:when>
							<c:when test="${member.addr ne null }">
								<td><input type="text" name="addr" value="${member.addr }"></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
					<c:choose>
						<c:when test="${member.mid eq null }">
							<td colspan="2"><input type="submit" value="회원가입"></td>
						</c:when>
						<c:when test="${member.mid ne null }">
							<td colspan="2"><input type="submit" value="수정하기"></td>
						</c:when>
					</c:choose>
					</tr>
				</table>
			</div>
		</form>
	</main>
</body>
</html>