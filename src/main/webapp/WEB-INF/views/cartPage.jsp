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

h1 {
	text-align: center;
	margin-bottom: 50px;
}

table, thead, tbody, tr, th, td {
	border-collapse: collapse;
	text-align: center;
}

.cartList {
	width: 1200px;
}

table {
	width: 100%;
	margin: 0 auto;
}

thead {
	border-top: 1px solid #333;
	border-bottom: 1px solid #ddd;
	height: 70px;
}

tbody{
	height:150px;
	border-bottom:1px solid #ddd;
}

.cart-img {
	width: 100px;
}

.cart-img img {
	width: 100%;
}

.checkbox-area {
	width: 100px;
}

.totalPrice{
	font-weight:600;
}


.total-price-info{
	width:1200px;
	margin:0 auto;
	background:#f8f8f8;
	border-radius:10px;
	margin-top:30px;
	padding:40px;
	display:flex;
	justify-content:center;
	align-items:center;
	gap:30px;
	text-align:center;
	box-sizing:border-box;
}
.total-price-info h4{
	padding-bottom:10px;
	font-weight:400;
	color:#888;
}
.total-price-info h4 span{
	font-weight:bold;
}
.total-price-info h2{
	font-size:26px;
}
.total-price-info .plus{
	font-size:60px;
	font-weight:100;
	color:#666;
}
.total-price-info .equals{
	font-size:60px;
	font-weight:100;
	color:#666;
}

#products{
	display:none;
}

#total-price-value2{
	color:#0071be;
}

.order-btn-area{
	width:1200px;
	margin:30px auto 0;
	display:flex;
	justify-content:center;
	gap:20px;
}
.order-btn-area a{
	display:inline-block;
	width:180px;
	height:60px;
	border:1px solid #0071be;
	border-radius:10px;
	text-align:center;
	line-height:58px;
	font-weight:bold;
}
.order-btn-area div:nth-child(1) a{
	background:#fff;
	border:2px solid #ddd;
}
.order-btn-area div:nth-child(2) a{
	background:#fff;
	border:2px solid #0071be;
	color:#0071be;
}
.order-btn-area div:nth-child(3) a{
	background:#0071be;
	color:#fff;
}
.delBtn a{
	display:inline-block;
	width:50px;
	padding:10px 0;
	background:#0071be;
	color:#fff;
	font-size:13px;
}
</style>
</head>
<body>
	<header>
		<%@ include file="./common/header.jsp"%>
	</header>

	<main>
		<h1>장바구니</h1>

		<table>
			<div class="cartList">
				<thead>
					<tr>
						<th class="checkbox-area">
						<input style="zoom:1.8" type="checkbox" id="select-all">
						</th>
						<th>이미지</th>
						<th>상품정보</th>
						<th>수량</th>
						<th>가격</th>
						<th>합계금액</th>
						<th>배송비</th>
						<th>제품삭제</th>
					</tr>
				</thead>
				<c:forEach var="cart" items="${cartlist }" varStatus="status">
					<tbody>
						<tr>
							<td>
							<input style="zoom:1.8" type="checkbox" class="product-checkbox">
							</td>
							<td id="products" >1</td>
							<td class="cart-img"><img
								src="/resource/img/${cart.imgurl }"></td>
							<td>${cart.pname }</td>
							<td>${cart.amount }개</td>
							<td>${cart.price } 원</td>
							<td class="totalPrice">${cart.totalprice } 원</td>
							<td>무료</td>
							<td class="delBtn"><a href="deleteCart?mid=${sessionScope.mid }&pcode=${cart.pcode}">삭제</a></td>
						</tr>
					</tbody>
				</c:forEach>
			</div>
		</table>
		
		<div class="total-price-info">
			<div>
				<h4>총 <span id="total-amount-value"></span>개의 상품금액</h4>
				<h2 id="total-price-value"></h2>
			</div>
			<div class="plus">
				+
			</div>
			<div>
				<h4>배송비</h4>
				<h2>0 원</h2>
			</div>
			<div class="equals">
				=
			</div>
			<div>
				<h4>총 합계금액</h4>
				<h2 id="total-price-value2"></h2>
			</div>
		</div>
		<div class="order-btn-area">
			<div>
				<a href="/">쇼핑 계속하기</a>
			</div>
			<div>
				<a href="orderPage">선택 상품 주문</a>
			</div>
			<div>
				<a href="orderPage?mid=${sessionScope.mid }">전체 상품 주문</a>
			</div>
		</div>
	</main>
	
	<script>
	
	 // 각 price 값을 가져와 합산하는 함수
    function calculateTotal() {
        // 리스트에 있는 모든 요소를 가져옵니다.
        const priceElements = document.querySelectorAll('.totalPrice');
        let total = 0; // 합계를 저장할 변수 초기화

        // 각 요소의 내용을 가져와 숫자로 변환하여 합산합니다.
        priceElements.forEach(function(element) {
            total += parseFloat(element.innerText);
        });

        return total; // 합계 반환
    }
	 
	 var totalText = document.getElementById("total-price-value");
	 var totalText2 = document.getElementById("total-price-value2");
	 totalText.innerText = calculateTotal() + " 원";
	 totalText2.innerText = calculateTotal() + " 원";
	 
	 
	// 각 수량 값을 가져와 합산하는 함수
	    function calculateTotalQuantity() {
	        // 리스트에 있는 모든 요소를 가져옵니다.
	        const quantityElements = document.querySelectorAll('#products');
	        let totalQuantity = 0; // 합계를 저장할 변수 초기화

	        // 각 요소의 내용을 가져와 숫자로 변환하여 합산합니다.
	        quantityElements.forEach(function(element) {
	            totalQuantity += parseInt(element.innerText);
	        });

	        return totalQuantity; // 합계 반환
	    }
	
		//체크박스
	    var totalCount = document.getElementById("total-amount-value");
	    totalCount.innerText = calculateTotalQuantity();
	
	    
	    // "모두 선택" 체크박스와 개별 체크박스들을 가져옵니다.
        const selectAllCheckbox = document.getElementById('select-all');
        const productCheckboxes = document.querySelectorAll('.product-checkbox');

        // "모두 선택" 체크박스를 클릭할 때의 이벤트 핸들러
        selectAllCheckbox.addEventListener('click', function() {
            productCheckboxes.forEach(function(checkbox) {
                checkbox.checked = selectAllCheckbox.checked;
            });
        });

        // 개별 체크박스를 클릭할 때의 이벤트 핸들러
        productCheckboxes.forEach(function(checkbox) {
            checkbox.addEventListener('click', function() {
                if (!checkbox.checked) {
                    selectAllCheckbox.checked = false;
                } else {
                    const allChecked = Array.from(productCheckboxes).every(function(cb) {
                        return cb.checked;
                    });
                    selectAllCheckbox.checked = allChecked;
                }
            });
        });
	    
	    
	</script>
	

</body>
</html>