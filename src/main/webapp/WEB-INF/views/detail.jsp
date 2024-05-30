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
	justify-content: space-between;
	height: 30px;
}

.amount-count-box2 button {
	width: 30px;
	border: 1px solid #bbb;
	background: #fff;
	color: #0071be;
	font-size: 18px;
	cursor: pointer;
	border-radius: 50px;
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

.amount-count-box2-btn {
	display: flex;
}

.total-price {
	text-align: right;
	font-size: 17px;
}

.total-price span {
	font-size: 20px;
	font-weight: 600;
}

.active-btn {
	margin-top: 25px;
	display: flex;
	justify-content: space-between;
}

.active-btn a {
	display: inline-block;
	width: 450px;
	background: #0071be;
	border: 1px solid #0071be;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	font-size: 28px;
	border-radius: 10px;
	box-sizing: border-box;
}

.active-btn .add-cart {
	border: 1px solid #0071be;
	background: #fff;
	width: 80px;
}

.review-area-title {
	margin-top: 100px;
}

.review-area-title h1 {
	font-size: 22px;
	color: #0071be;
}

.review-area-zone {
	width: 1200px;
	border-top: 1px solid #000;
	margin: 10px auto;
}

.review-area {
	display: flex;
	justify-content: space-between;
	border-bottom: 1px solid #ddd;
	padding: 30px 0;
}

.review-area .review-area-content h2 {
	font-size: 18px;
}

.review-area .review-area-content h3 {
	font-size: 14px;
	color: #888;
	padding: 10px 0 25px;
	font-weight: 400;
}

.review-area .review-area-content h4 {
	font-size: 14px;
	font-weight: 400;
}

.review-area .review-area-info p {
	color: #999;
	font-size: 15px;
}

.review-area .review-area-info p span {
	padding-left: 30px;
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
						<div class="amount-count-box2-btn">
							<button type="button" onclick="updateValue(this, 'down');">
								-</button>

							<input type="number" name="number" id="amount-num" min="1"
								max="100" value="1">

							<button type="button" onclick="updateValue(this, 'up');">
								+</button>
						</div>
						<div class="total-price">
							<p>
								총 합계 금액 : <span id="total-price-result">${prod.price }<span>
										원 
							</p>
						</div>
					</div>
				</div>
				<div class="active-btn">
					<a href="" id="send-link" class="add-cart"> <img
						src="/resource/img/cart.png">
					</a> <a href="" id="order-link" class="order">바로주문</a>
				</div>
			</div>
		</div>

		<c:if test="${not empty msg}">
			<script>
				alert("${msg}");
			</script>
		</c:if>
		


		<div class="review-area-title">
			<h1>상품 후기</h1>
		</div>

		<div class="review-area-zone">
			<div class="review-area">
				<div class="review-area-content">
					<h2>아주 좋습니다.</h2>
					<h3>[자가설치] 창문형 에어컨</h3>
					<h4>아주 시원하고 소음도 적어요</h4>
				</div>
				<div class="review-area-info">
					<p>
						김**님 <span>2012-08-21</span>
					</p>
				</div>
			</div>
		</div>

	</main>


	<script>

	
	function updateValue(button, direction) {
		var totalPriceResult = document.getElementById("total-price-result");
        var input = button.parentNode.querySelector('[type=number]');
        if (direction === 'up') {
            input.stepUp();
        } else if (direction === 'down') {
            input.stepDown();
        }
        // 입력 요소의 값을 가져옵니다
        var value = input.value;
        
        totalPriceResult.innerText = ${prod.price} * value + " 원";
        
        // 장바구니 - 링크 요소의 href를 설정합니다
        document.getElementById('send-link').href = '/cartAdd?pcode=${prod.pcode }&mid=${sessionScope.mid}&amount=' + value;
        
        // 바로주문
        document.getElementById('order-link').href = '/order?mid=${sessionScope.mid}&pcode=${prod.pcode}&amount=' + value;
    };
    // 장바구니 - 초기 링크 href 설정
    document.getElementById('send-link').href = '/cartAdd?pcode=${prod.pcode }&mid=${sessionScope.mid}&amount=1';
    // 바로주문
    document.getElementById('order-link').href = '/order?mid=${sessionScope.mid}&pcode=${prod.pcode}&amount=1';
	
  
	</script>


</body>
</html>