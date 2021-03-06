<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<style type="text/css">
.location01 {
	padding-top: 20px;
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
	function goView(bbseditno) {
		var form = document.getElementById("viewForm");
		form.bbseditno.value = bbseditno;
		form.submit();
	}
</script>
<%@ include file="../template3/header.jsp"%>
</head>
<body>
	<%@ include file="../template3/header2.jsp"%>
	<div class="location01">
		<br /> <br /> <br />
		<div id="bbs">
			<table class="table table-hover">
				<thead>
					<tr>
						<th align="right" style="text-align: right; width: 100px;">글번호</th>
						<th align="right" style="text-align: right; width: 600px;">제목</th>
						<th align="right" style="text-align: right; width: 400px;">날짜</th>
						<th align="right" style="text-align: right; width: 400px;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="bbsVo" varStatus="status">
						<tr>
<%-- 														<td style="text-align: center;">${no - status.index}</td>  --%>
							<!-- 게시물 내림차순 정렬 -->
							<td align="right" style="text-align: right; width: 100px;">${bbsVo.bbseditno }</td>
							<td align="right" style="text-align: right; width: 600px;"><a
								href="javascript:goView('${bbsVo.bbseditno }')">${bbsVo.title }</a></td>
							<td align="right" style="text-align: right; width: 400px;">${bbsVo.bbs_date }</td>
							<td align="right" style="text-align: right; width: 400px;">${bbsVo.hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<nav aria-label="Page navigation" style="padding-left: 600px;">
		<ul class="pagination">
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=1"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=1">1</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=2">2</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=3">3</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=4">4</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=5">5</a></li>
			<li><a href="/shop01qna3/?bbscd=qna&curPage=6">6</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=7">7</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=8">8</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=9">9</a></li>
			<li><a href="/shop01/qna3/?bbscd=qna&curPage=10">10</a></li>
<!-- 			<li><a href="/shop01/not_bbs/?bbscd=notice&curPage=11" 
<!-- 				aria-label="Next"> <span aria-hidden="true">&raquo;</span> 
<!-- 			</a></li> -->
		</ul>
	</nav>

                <!--paging -->

<!--                     <ul class="pagination"> -->
<%-- 					<c:if test="${prevLink > 0 }"> --%>
<%-- 						<li><a href="javascript:goList('${prevPage }')">[이전]</a></li> --%>
<%-- 					</c:if> --%>
<!-- 					</ul> -->

<%-- 					<c:forEach var="i" items="${pageLinks }" varStatus="stat"> --%>
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${curPage == i}"> --%>
<%-- 								<span class="bbs-strong">${i }</span> --%>
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								<a href="javascript:goList('${i }')">${i }</a> --%>
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
<%-- 					</c:forEach> --%>

<%-- 					<c:if test="${nextLink > 0 }"> --%>
<%-- 						<a href="javascript:goList('${nextPage }')">[다음]</a> --%>
<%-- 					</c:if> --%>
<!-- 				</div> --> 
<!--  			</div>  --> 
<!--  		</div>  --> 
<!--  		</nav> --> 


	<div id="list-menu" style="text-align: right;">
		<input type="button" value="글쓰기" onclick="goWrite()"
			class="btn btn-info btn-sm active" />
	</div>
	<br />
	<br />
	<br />
	<br />
	<%@ include file="../template3/footer.jsp"%>
	<div id="form-group" style="display: none;">
		<form id="listForm" action="/shop01/qna3/" method="get">
			<p>
				<input type="hidden" name="bbscd" value="${bbscd }" /> <input
					type="hidden" name="curPage" />
			</p>
		</form>
		<form id="writeForm" action="/shop01/qna_write3/" method="get">
			<p>
				<input type="hidden" name="bbscd" value="${bbscd }" /> <input
					type="hidden" name="curPage" value="${curPage }" />
			</p>
		</form>

		<form id="viewForm" action="/shop01/qna_detail3/" method="get">
			<p>
				<input type="hidden" name="bbseditno" /> <input type="hidden"
					name="bbscd" value="${bbscd }" /> <input type="hidden"
					name="curPage" value="${curPage }" />
			</p>
		</form>
	</div>
	<%-- param.curPage : ${param.curPage }, ${curPage } --%>
</body>
</html>