<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<html>
<head>
<style type="text/css">
.location01 {
	padding-top: 40px;
	padding-left: 500px;
}
hr.line {
	width: 990px;
	color: black;
	border: thin solid gray;
	border-bottom: 2px;
	text-align: left;
	margin-left: 0px;
}
hr.line2 {
	width: 370px;
	color: black;
	border: thin solid gray;
	border-bottom: 2px;
	text-align: left;
	margin-left: 0px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="게시판 상세보기" />
<meta name="Description" content="게시판 상세보기" />
<link rel="stylesheet" href="../resources/css/screen.css"
	type="text/css" media="screen" />
<title>${pronm }</title>
<script type="text/javascript">
	function goList(page) {
		var form = document.getElementById("listForm");
		form.curPage.value = page;
		form.submit();
	}
	function goWrite() {
		var form = document.getElementById("writeForm");
		form.submit();
	}
	function goView(productNum) {
		var form = document.getElementById("viewForm");
		form.productNum.value = productNum;
		form.submit();
	}
	function goModify() {
		var form = document.getElementById("modifyForm");
		form.submit();
	}
	function goDelete() {
		var form = document.getElementById("deleteForm");
		form.submit();
	}
</script>
<%@ include file="../template3/header.jsp"%>
</head>
<body>
	<%@ include file="../template3/header2.jsp"%>
	<div class="location01">

		<div id="wrap">

			<div id="header"></div>

			<div id="main-menu"></div>

			<div id="container">
				<div id="content" style="min-height: 800px;">
					<div id="url-navi"></div>

					<!-- 본문 시작 -->
					<h3 style="transform:translateX(235px)">OUTER</h3>
					<hr style="transform:translateX(-230px)" class="line">
					<img src="../resources/imgs2/${thisProductsVo.product_url }" alt="..." 
					style="width: 600px; transform:translateX(-250px) " align=left hspace=20>
					<div id="outer">
					
						<h3 style="transform:translateX(-250px)">${thisProductsVo.productName}</h3>
						 <hr class="line2" style="transform:translateX(-250px)">
						 
						 <div id="gul-content">
							<h4 style="transform:translateX(-250px)">${thisProductsVo.htmlExplan}</h4>
						 </div>
						 <br />
						 <hr class="line2" style="transform:translateX(-250px)">
						 <h4 style="transform:translateX(-250px)">code : ${thisProductsVo.productNum}</h4>
						 <h4 style="transform:translateX(-250px)">price : ${thisProductsVo.price}원</h4>
						 
						 <div class="container">
							<div class="row">
<!-- 								<h5 style="transform: translateX(-250px)">상품갯수</h5> -->
<!-- 								Single button -->
<!-- 								<div style="transform: translateX(-250px);" class="btn-group"> -->

<!-- 									<select style="transform: translateX(60px) translateY(-33px);"> -->
<!-- 										<option value="1">1</option> -->
<!-- 										<option value="2">2</option> -->
<!-- 										<option value="3">3</option> -->
<!-- 										<option value="4">4</option> -->
<!-- 										<option value="5">5</option> -->
<!-- 										<option value="6">6</option> -->
<!-- 										<option value="7">7</option> -->
<!-- 										<option value="8">8</option> -->
<!-- 										<option value="9">9</option> -->
<!-- 										<option value="10">10</option> -->
<!-- 									</select> -->
<!--                                  </div> -->
                                
								 <input class="btn btn-info btn-sm active" style="width: 185px; transform:translateX(-250px)"
							type="hidden" value="장바구니" />
						 <input class="btn btn-info btn-sm active" style="width: 185px; transform:translateX(-250px)"
							type="hidden"  value="결제하기" />
						 <br clear=left>



									<!-- 						<br /> -->

									<hr style="transform: translateX(-230px)" class="line">
									<br />
									<br />
									<br />
									<br />
									<br />
									<br />
									<br />
									<div id="gul-content">
										<p id="file-list" style="text-align: right;">
											<c:forEach var="file" items="${attachFileList }"
												varStatus="status">
												<img src="../resources/imgs2/${file.filename}" align="left" />
												<br />
												<br />
											</c:forEach>
										</p>


										<br /> <br /> <br clear=left>						
						
						<br clear=left>
                      

						<div id="view-menu">
							<br />
							<div>
								<input type="button" value="수정" onclick="goModify();"
									style="margin-left: 250px" class="btn btn-info btn-sm active" />
								<input type="button" value="삭제" onclick="goDelete()"
									style="margin-left: 0px" class="btn btn-info btn-sm active" />

								<input type="button" value="목록"
									onclick="goList('${param.curPage }')" style="margin-left: 0px"
									class="btn btn-info btn-sm active" />
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				</div>
				<br /> <br />


					<!--  <div id="search" style="text-align: center;"> -->
					<!--   <form id="searchForm" action="/shop01/not_bbs/" method="get" style="margin: 0;padding: 0;"> -->
					<!--    <p style="margin: 0;padding: 0;"> -->
					<%--     <input type="hidden" name="bbscd" value="${param.bbscd }" /> --%>
					<!--     <input type="text" name="searchWord" size="15" maxlength="30" /> -->
					<!--     <input type="submit" value="검색" /> -->
					<!--    </p>  -->
					<!--   </form> -->
					<!--  </div>  -->
				</div>
				<!-- content 끝 -->
			</div>
			<!--  container 끝 -->


		</div>

		<!-- 자바스크립트와 연결 -->

		<div id="form-group" style="display: none;">

			<form id="listForm" action="/shop01/outer3/" method="get">
				<p>
					<input type="hidden" name="procd" value="${param.procd }" /> <input
						type="hidden" name="curPage" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="writeForm" action="/shop01/outer_write3/" method="get">
				<p>
					<input type="hidden" name="procd" value="${param.procd }" />
				</p>
			</form>

			<form id="viewForm" action="/shop01/outer_detail3/" method="get">
				<p>
					<input type="hidden" name="productNum" /> <input type="hidden"
						name="procd" value="${param.procd }" /> <input type="hidden"
						name="curPage" value="${param.curPage }" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="modifyForm" action="/shop01/outer_edit3/" method="get">
				<p>
					<input type="hidden" name="productNum" value="${param.productNum }" />
					<input type="hidden" name="procd" value="${param.procd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="deleteForm" action="/shop01/outer_delete3/" method="get">
				<p>
					<input type="hidden" name="productNum" value="${param.productNum }" />
					<input type="hidden" name="procd" value="${param.procd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

		</div>
</body>
</html>