<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<html>
<head>
<style type="text/css">
.location01 {
	padding-top: 0px;
	padding-left: 500px;
}

hr.line {
	width: 653px;
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
<%@ include file="../template/header.jsp"%>
</head>
<body>
	<%@ include file="../template/header2.jsp"%>
	<div class="location01">

		<div id="wrap">

			<div id="header"></div>

			<div id="main-menu"></div>

			<div id="container">
				<div id="content" style="min-height: 800px;">
					<div id="url-navi"></div>

					<!-- 본문 시작 -->
					<h3>${pronm }</h3>
					<hr class="line">
					<div id="outer">
						<h3>제목: ${thisProductsVo.productNum}</h3>
						<hr class="line">
						<table>
							<tr>
								<br />
								<th>작성자 ${thisProductsVo.productName }</th>
								<th style="width: 60px; text-align: right;">DATE&nbsp;&nbsp;</th>
<%-- 								<th style="width: 90px; color: #555;">${thisBbsVo.bbs_date }</th> --%>
<%-- 								<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회수 ${thisBbsVo.hit }</th> --%>
							</tr>
						</table>
						<hr class="line">
						
						<div id="gul-content">
						<p id="file-list" style="text-align: right;">
								<c:forEach var="file" items="${attachFileList }"
									varStatus="status">
									 <img src="../resources/imgs2/${file.filename}" align="left"/>
									<br/>
									<br/>
								</c:forEach>
							</p>
						
						
						<br /> <br />
						<div id="gul-content">
							<p>${thisProductsVo.explan}</p>
						</div>
						<br /> <br /> <br /> <br />
						<hr class="line">


                       <hr class="line">

						<div id="view-menu">
							<br />
							<div>
<!-- 								<input type="button" value="수정" onclick="goModify();" -->
<!-- 									style="margin-left: 250px" class="btn btn-info btn-sm active" /> -->
<!-- 								<input type="button" value="삭제" onclick="goDelete()" -->
<!-- 									style="margin-left: 0px" class="btn btn-info btn-sm active" /> -->

								<input type="button" value="목록"
									onclick="goList('${param.curPage }')" style="margin-left: 0px"
									class="btn btn-info btn-sm active" />
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

			<form id="listForm" action="/shop01/dress/" method="get">
				<p>
					<input type="hidden" name="procd" value="${param.procd }" /> <input
						type="hidden" name="curPage" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="writeForm" action="/shop01/dress_write/" method="get">
				<p>
					<input type="hidden" name="procd" value="${param.procd }" />
				</p>
			</form>

			<form id="viewForm" action="/shop01/dress_detail/" method="get">
				<p>
					<input type="hidden" name="productNum" /> <input type="hidden"
						name="procd" value="${param.procd }" /> <input type="hidden"
						name="curPage" value="${param.curPage }" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="modifyForm" action="/shop01/dress_edit/" method="get">
				<p>
					<input type="hidden" name="productNum" value="${param.productNum }" />
					<input type="hidden" name="procd" value="${param.procd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="deleteForm" action="/shop01/dress_delete/" method="get">
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