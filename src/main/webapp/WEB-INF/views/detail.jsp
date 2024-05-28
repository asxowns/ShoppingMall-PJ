<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
main {
	width: 1200px;
	margin: 100px auto;
}

.detail-info {
	width: 100%;
	display: flex;
}

.detail-info-img {
	width: 50%;
}

.detail-info-img img {
	max-width: 100%;
}

.detail-info-text {
	width: 50%;
	padding: 30px;
	box-sizing: border-box;
}

.detail-info-text h2 {
	font-size: 28px;
}

.detail-info-text h3 {
	font-size: 16px;
	color: #888;
	font-weight: 400;
	padding: 10px 0 30px;
}

.detail-info-text h4 {
	font-size: 30px;
}

.detail-info-text-in2 {
	padding-top: 30px;
	margin-top: 30px;
	border-top: 1px solid #ccc;
}

.detail-info-text-in2 p {
	padding-bottom: 20px;
}

.detail-info-text-in2 p span {
	color: #888;
	padding-left: 20px;
}

.amount-count {
	background: #eee;
	padding: 30px;
	border-radius: 10px;
	margin-top: 20px;
}

.amount-count-box1 {
	padding-bottom: 10px;
}

.amount-count-box1 h5 {
	font-size: 16px;
	font-weight: 400;
}

.amount-count-box2 {
	display: flex;
}

.amount-count-box2 button {
	width: 30px;
	border: 1px solid #bbb;
	background: #fff;
	color: #0071be;
	font-size: 18px;
	cursor: pointer;
}

.amount-count-box2 input[type="number"] {
	width: 55px;
	text-align: center;
	border: 1px solid #ccc;
	font-size: 20px;
}

.amount-count-box2 input::-webkit-outer-spin-button, .amount-count-box2 input::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0;
}

.total-price {
	padding-left: 180px;
	font-size: 17px;
}

.total-price span {
	font-size: 20px;
	font-weight: 600;
}
.active-btn{
	margin-top:15px;
	display:flex;
	justify-content:space-between;
}
.active-btn a{
	display:inline-block;
	width:250px;
	background:#0071be;
	color:#fff;
	padding:25px 0;
	text-align:center;
	font-size:22px;
}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp"%>
	</header>

	<main>
		<div class="detail-info">
			<div class="detail-info-img">
				<img src="/resource/img/${prod.imgurl }">
			</div>
			<div class="detail-info-text">
				<div>
					<h2>${prod.pname }</h2>
					<h3>${prod.description }</h3>
					<h4>${prod.price }원</h4>
				</div>
				<div class="detail-info-text-in2">
					<p>
						배송비 : <span>무료</span>
					</p>
					<p>
						브랜드 : <span>귀뚜라미</span>
					</p>
					<p>
						카드혜택 : <span>무이자 할부</span>
					</p>
				</div>
				<div class="amount-count">
					<div class="amount-count-box1">
						<h5>${prod.pname }</h5>
					</div>
					<div class="amount-count-box2">
						<button type="button"
							onclick="this.parentNode.querySelector('[type=number]').stepDown();">
							-</button>

						<input type="number" name="number" min="0" max="100" value="0">

						<button type="button"
							onclick="this.parentNode.querySelector('[type=number]').stepUp();">
							+</button>
						<div class="total-price">
							<p>
								총 합계 금액 : <span>${prod.price }<span>원
							</p>
						</div>
					</div>
				</div>
				<div class="active-btn">
					<a href="" class="add-cart">장바구니</a>
					<a href="" class="order">주문하기</a>
				</div>
			</div>
		</div>
	</main>
</body>
</html>