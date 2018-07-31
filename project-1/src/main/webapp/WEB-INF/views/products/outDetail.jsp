<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<style type="text/css">
.location01 {
	padding-top: 0px;
	padding-left: 250px;
}

.pagination {
	display: inline-block;
	padding-left: 500px;
	margin: 30px 0;
	border-radius: 4px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</script>
<%@ include file="../template/header.jsp"%>
</head>
<body>
	<%@ include file="../template/header2.jsp"%>
	<div class="location01">
		<br /> <br /> <br />
		<div id="bbs">
			<table class="table table-hover">
				<thead>
					<tr>
						<th align="right" style="text-align: right; width: 100px;">상품번호</th>
						<th align="right" style="text-align: right; width: 600px;">상품이름</th>
						<th align="right" style="text-align: right; width: 400px;">가격</th>
						<th align="right" style="text-align: right; width: 400px;">상품</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="productsVo" varStatus="status">
						<tr>
							<%-- 														<td style="text-align: center;">${no - status.index}</td>  --%>
							<!-- 게시물 내림차순 정렬 -->
							<td align="right" style="text-align: right; width: 100px;">${productsVo.productNum }</td>
							<td align="right" style="text-align: right; width: 600px;"><a
								href="javascript:goView('${productsVo.productNum }')">${productsVo.productName }</a>
							</td>
							<td align="right" style="text-align: right; width: 400px;">${productsVo.price }</td>
							<td align="right" style="text-align: right; width: 400px;">${productsVo.product_url }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
<!-- 			<div id="gul-content"> -->
<!-- 						<p id="file-list" style="text-align: right;"> -->
<%-- 								<c:forEach var="file" items="${attachFileList }" --%>
<%-- 									varStatus="status"> --%>
<%-- 									 <img src="../resources/imgs2/${file.filename}" align="left"/> --%>
<!-- 									<br/> -->
<!-- 									<br/> -->
<%-- 								</c:forEach> --%>
<!-- 							</p> -->
	
	
	
	
<!-- 		<div id="list-menu" style="text-align: right;"> -->
<!-- 		<input type="button" value="글쓰기" onclick="goWrite()" -->
<!-- 			class="btn btn-info btn-sm active" /> -->
<!-- 	</div> -->
	
	<br />
	
	<div id="search" style="text-align: center; margin-left: 1317px;">
		<form id="searchForm" action="/shop01/outer/" method="get"
			style="margin: 0; padding: 0;">
			<p style="margin: 0; padding: 0;">
				<input type="hidden" name="procd" value="${procd }" /> <input
					type="text" name="searchWord" size="20" maxlength="30" /> <input
					type="submit" value="검색">
			</p>
		</form>
	</div>

	<nav aria-label="Page navigation" style="padding-left: 600px;">
		<ul class="pagination">
			<li><a href="/shop01/outer/?procd=outer&curPage=1"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=1">1</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=2">2</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=3">3</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=4">4</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=5">5</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=6">6</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=7">7</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=8">8</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=9">9</a></li>
			<li><a href="/shop01/outer/?procd=outer&curPage=10">10</a></li>
						<li><a href="/shop01/outer/?procd=outer&curPage=11" 
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> 
			</a></li> 
		</ul>
	</nav>

	<br />
	<br />
	<br />
	<br />
	<%@ include file="../template/footer.jsp"%>
	<div id="form-group" style="display: none;">
		<form id="listForm" action="/shop01/outer/" method="get">
			<p>
				<input type="hidden" name="procd" value="${procd }" /> <input
					type="hidden" name="curPage" /> <input type="hidden"
					name="searchWord" value="${param.searchWord }" />
			</p>
		</form>
		<form id="writeForm" action="/shop01/outer_write/" method="get">
			<p>
				<input type="hidden" name="procd" value="${procd }" /> <input
					type="hidden" name="curPage" value="${curPage }" /> <input
					type="hidden" name="searchWord" value="${param.searchWord }" />
			</p>
		</form>

		<form id="viewForm" action="/shop01/outer_detail/" method="get">
			<p>
				<input type="hidden" name="productNum" /> <input type="hidden"
					name="procd" value="${procd }" /> <input type="hidden"
					name="curPage" value="${curPage }" /> <input type="hidden"
					name="searchWord" value="${param.searchWord }" />
			</p>
		</form>
	</div>
	<%-- param.curPage : ${param.curPage }, ${curPage } --%>
</body>
</html>