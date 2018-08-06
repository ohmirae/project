<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart List</title>
<%@ include file="../template2/header.jsp"%>
<style type="text/css">
	h2{
		padding-left: 800px;
	}
	
	#form1 {
		padding-top: 10px;
		padding-left: 300px;
		right: 0; left: 0; margin-bottom: auto; margin-left: auto; margin-right: auto; margin-top: auto; 
	}
	
	table{
		width: 90%;
	}
	
	body>p {
		padding-top: 10px;
		padding-left: 300px;
		right: 0; left: 0; margin-bottom: auto; margin-left: auto; margin-right: auto; margin-top: auto; 
	}
	
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
		//Go Home
		$('#btnHome').click(function() {
			location.href="/shop01/home2/";
		});
		
		//Update
// 		$('#btnUpdate').click(function() {
// 			location.href = "/shop01/cart2/update/";
// 		});
	});
</script>
</head>
<body>
<%@ include file="../template2/header2.jsp"%>
	<h2>장바구니</h2>
	<c:choose>
		<c:when test="${map.count < 0 }">
			<p>장바구니가 비었습니다.</p>
		</c:when>
		<c:otherwise>
			<form name="form1" id="form1" method="post" action="/shop01/cart2/update">
			<div class="continer">
				<div class="row p-5">
						<div class="col-md-10 ">
							<table class="table">
								<thead>
								<tr>
									<th class="border-0 text-uppercase small font-weight-bold text-center">PRODUCT</th>
									<th class="border-0 text-uppercase small font-weight-bold text-center">NAME</th>
									<th class="border-0 text-uppercase small font-weight-bold text-center">PRICE</th>
									<th class="border-0 text-uppercase small font-weight-bold text-center">QUANTITY</th>
									<th class="border-0 text-uppercase small font-weight-bold text-center">SUMPRICE</th>
									<th class="border-0 text-uppercase small font-weight-bold text-center">DELETE</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="cartVo" items="${map.list }" varStatus="i">
								<tr class="text-center" >
									<td>
										<img alt="Product Photo" src="../resources/imgs2/${cartVo.product_url }"
										style="width: 150px; transform:translateX(-250px) " align="right"  hspace="30" >
									</td>
									<td>
										<strong>${cartVo.productName }</strong><br/>
										<strong>COLOR</strong> : ${cartVo.colors }<br/>
										<strong>SIZE</strong> : ${cartVo.sizename } 
									</td>
									<td style="width: 80px" align="right">
										&#8361;<fmt:formatNumber pattern="###,###,###" value="${cartVo.price }"/>
									</td>
									<td class="text-center">
										<input type="number" style="width: 40px" name="quantity" value="${cartVo.quantity }" min="1" max="10" />
										<input type="hidden" name="productNum" value="${cartVo.productNum }" />개
									</td>
									<td style="width: 100px" align="right">
										&#8361;<fmt:formatNumber pattern="###,###,###" value="${cartVo.sumPrice }" />
									</td>
									<td>
										<button type="button" id="btnDel"><a href="/shop01/cart2/delete/?basketNum=${cartVo.basketNum }">삭제</a></button>
									</td>
								</tr>
								</c:forEach>
								<tr>
									<td colspan="6" align="right">
									<br/>
										<p><strong>장바구니 금액 합계</strong> : &#8361;<fmt:formatNumber pattern="###,###,###" value="${map.sumPrice }" /></p>
										<p><strong>배송료</strong> : &#8361;${map.fee }</p>
										<strong>전체 주문 금액</strong> : &#8361;<fmt:formatNumber pattern="###,###,###" value="${map.AllSum }" />
									</td>
								</tr>
								</tbody>
							</table>
							<div class="d-flex flex-row-reverse text-white p-4 text-right">
								<div class="py-3 px-5">
									<p><input type="hidden" name="count" value="${map.count }"></p>
									<button type="submit" id="btnUpdate" class="btn btn-info btn-sm active">수정</button>&nbsp;&nbsp;
									<button type="button" id="btnSel" class="btn btn-info btn-sm active">주문하기</button>&nbsp;&nbsp;<!-- 결제로 이동 -->
									<button type="button" id="btnHome" class="btn btn-info btn-sm active">쇼핑 계속하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:otherwise>
	</c:choose>
<%@ include file="../template/footer.jsp"%>
</body>
</html>