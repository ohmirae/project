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
	function goView(bbseditno) {
		var form = document.getElementById("viewForm");
		form.bbseditno.value = bbseditno;
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
								href="javascript:goView('${bbsVo.bbseditno }')">${bbsVo.title }
								<c:if test="${bbsVo.attachFileNum > 0 }">
								<img src="../resources/imgs/file.png" alt="첨부파일" width="30px" />
							</c:if>
							<c:if test="${bbsVo.commentno > 0 }">
								<span class="bbs-strong">[${bbsVo.commentno }]</span>
							</c:if>	
								</a></td>
							<td align="right" style="text-align: right; width: 400px;">${bbsVo.bbs_date }</td>
							<td align="right" style="text-align: right; width: 400px;">${bbsVo.hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<nav aria-label="Page navigation" style="padding-left: 800px;">
		<ul class="pagination">
			<li><a href="/shop01/rev_bbs/?bbscd=rev_bbs&curPage=1"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=1">1</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=2">2</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=3">3</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=4">4</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=5">5</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=6">6</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=7">7</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=8">8</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=9">9</a></li>
			<li><a href="/shop01/rev_bbs/?bbscd=review&curPage=10">10</a></li>
			<!-- 			<li><a href="/shop01/not_bbs/?bbscd=review&curPage=11" 
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
	 <div id="search" style="text-align: center;">
     <form id="searchForm" action="/shop01/rev_bbs/" method="get" style="margin: 0;padding: 0;">
     <p style="margin: 0;padding: 0;">
     <input type="hidden" name="bbscd" value="${bbscd }" />
     <input type="text" name="searchWord" size="20" maxlength="30" />
     <input type="submit" value="검색">
     </p> 
     </form>
     </div>
	<br />
	<br />
	<br />
	<br />
	<%@ include file="../template/footer.jsp"%>
	<div id="form-group" style="display: none;">
		<form id="listForm" action="/shop01/rev_bbs/" method="get">
			<p>
				<input type="hidden" name="bbscd" value="${bbscd }" /> <input
					type="hidden" name="curPage" />
					<input type="hidden" name="searchWord" value="${param.searchWord }" />
			</p>
		</form>
		<form id="writeForm" action="/shop01/rev_bbs_write/" method="get">
			<p>
				<input type="hidden" name="bbscd" value="${bbscd }" /> <input
					type="hidden" name="curPage" value="${curPage }" />
					<input type="hidden" name="searchWord" value="${param.searchWord }" />
			</p>
		</form>

		<form id="viewForm" action="/shop01/rev_bbs_detail/" method="get">
			<p>
				<input type="hidden" name="bbseditno" /> <input type="hidden"
					name="bbscd" value="${bbscd }" /> <input type="hidden"
					name="curPage" value="${curPage }" />
					<input type="hidden" name="searchWord" value="${param.searchWord }" />
			</p>
		</form>
	</div>
</body>
</html>