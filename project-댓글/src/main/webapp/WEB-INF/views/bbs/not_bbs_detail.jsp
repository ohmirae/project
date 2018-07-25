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
	padding-left: 650px;
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
<title>${bbsnm }</title>
<script type="text/javascript">
	function deleteComment(commentno) {
		var chk = confirm("정말로 삭제하시겠습니까?");
		if (chk == true) {
			var form = document.getElementById("deleteCommentForm");
			form.commentno.value = commentno;
			form.submit();
		}
	}

	function updateComment(no) {
		var commentno = "comment" + no;
		var formno = "modifyCommentForm" + no;
		var pele = document.getElementById(commentno);
		var formele = document.getElementById(formno);
		var pdisplay;
		var formdisplay;
		if (pele.style.display) {
			pdisplay = '';
			formdisplay = 'none';
		} else {
			pdisplay = 'none';
			formdisplay = '';
		}
		pele.style.display = pdisplay;
		formele.style.display = formdisplay;
	}

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
					<h3>${bbsnm }</h3>
					<hr class="line">
					<div id="bbs">
						<h3>제목: ${thisBbsVo.title }</h3>
						<hr class="line">
						<table>
							<tr>
								<br />
								<th>작성자 ${thisBbsVo.memId }</th>
								<th style="width: 60px; text-align: right;">DATE&nbsp;&nbsp;</th>
								<th style="width: 90px; color: #555;">${thisBbsVo.bbs_date }</th>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회수 ${thisBbsVo.hit }</th>
							</tr>
						</table>
						<hr class="line">
						<br /> <br />
						<div id="gul-content">
							<p>${thisBbsVo.contents }</p>
						</div>
						<br /> <br /> <br /> <br />
						<hr class="line">


						<!--  덧글 반복 시작 -->
						<c:forEach var="comment" items="${commentList }"
							varStatus="status">
							<div class="comments">
								<h4>${comment.memId }</h4>
								<h5>${comment.bbs_date }</h5>
								<h6>
									<a href="javascript:updateComment('${comment.commentno }')">수정</a>
									| <a href="javascript:deleteComment('${comment.commentno }')">삭제</a>
								</h6>
								<p id="comment${comment.commentno }">${comment.memo }</p>

								<div class="modify-comment">
									<form id="modifyCommentForm${comment.commentno }"
										action="/shop01/not_bbs_detail/commentUpdate/" method="post" style="display: none;">
										<p>
											<input type="hidden" name="commentno"
												value="${comment.commentno }" /> <input type="hidden"
												name="bbscd" value="${param.bbscd }" /> <input
												type="hidden" name="bbseditno" value="${param.bbseditno }" />
											<input type="hidden" name="curPage" value="${param.curPage }" />
											<input type="hidden" name="searchWord"
												value="${param.searchWod }" />
										</p>
										<div class="fr">
											<a
												href="javascript:document.forms.modifyCommentForm${comment.commentno }.submit()">수정하기</a>
											| <a href="javascript:updateComment('${comment.commentno }')">취소</a>
										</div>
										<div>
											<textarea class="modify-comment-ta" name="memo" rows="7"
												cols="50">${comment.memo }</textarea>
										</div>
									</form>
								</div>
							</div>
						</c:forEach>
						<!--  덧글 반복 끝 -->




						<form id="addCommentForm" action="/shop01/not_bbs_detail/commentAdd/" method="post">
							<p style="margin: 0; padding: 0;">
								<input type="hidden" name="bbseditno"
									value="${param.bbseditno }" /> <input type="hidden"
									name="bbscd" value="${param.bbscd }" /> <input
									type="hidden" name="curPage" value="${param.curPage }" /> <input
									type="hidden" name="searchWord" value="${param.searchWord }" />
							</p>
							<div id="addComment">
								<textarea name="memo" rows="7" cols="50"></textarea>
							</div>
							<div style="text-align: center;">
								<input type="submit" value="확인" />
							</div>
						</form>




						<div id="next-prev">
							<c:if test="${nextBbsVo != null }">
								<p>
									다음글 : <a href="javascript:goView('${nextBbsVo.bbseditno }')">${nextBbsVo.title }</a>
								</p>
							</c:if>
							<c:if test="${prevBbsVo != null }">
								<p>
									이전글 : <a href="javascript:goView('${prevBbsVo.bbseditno }')">${prevBbsVo.title }</a>
								</p>
							</c:if>
						</div>
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
				<br /> <br />

				<!--paging-->
				<div id="paging" style="text-align: center;">

					<c:if test="${prevLink > 0 }">
						<a href="javascript:goList('${prevPage }')">[이전]</a>
					</c:if>

					<c:forEach var="i" items="${pageLinks }" varStatus="stat">
						<c:choose>
							<c:when test="${param.curPage == i}">
								<span class="bbs-strong">${i }</span>
							</c:when>
							<c:otherwise>
								<a href="javascript:goList('${i }')">${i }</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${nextLink > 0 }">
						<a href="javascript:goList('${nextPage }')">[다음]</a>
					</c:if>

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

			<form id="listForm" action="/shop01/not_bbs/" method="get">
				<p>
					<input type="hidden" name="bbscd" value="${param.bbscd }" /> <input
						type="hidden" name="curPage" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="writeForm" action="/shop01/not_bbs_write/" method="get">
				<p>
					<input type="hidden" name="bbscd" value="${param.bbscd }" />
				</p>
			</form>

			<form id="viewForm" action="/shop01/not_bbs_detail/" method="get">
				<p>
					<input type="hidden" name="bbseditno" /> <input type="hidden"
						name="bbscd" value="${param.bbscd }" /> <input type="hidden"
						name="curPage" value="${param.curPage }" /> <input type="hidden"
						name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="modifyForm" action="/shop01/not_bbs_edit/" method="get">
				<p>
					<input type="hidden" name="bbseditno" value="${param.bbseditno }" />
					<input type="hidden" name="bbscd" value="${param.bbscd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>

			<form id="deleteForm" action="/shop01/not_bbs_delete/" method="get">
				<p>
					<input type="hidden" name="bbseditno" value="${param.bbseditno }" />
					<input type="hidden" name="bbscd" value="${param.bbscd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>
			<form id="deleteCommentForm" action="/shop01/not_bbs_detail/commentDel" method="post">
				<p>
					<input type="hidden" name="commentno" /> <input type="hidden"
						name="bbseditno" value="${param.bbseditno }" /> <input
						type="hidden" name="bbscd" value="${param.bbscd }" /> <input
						type="hidden" name="curPage" value="${param.curPage }" /> <input
						type="hidden" name="searchWord" value="${param.searchWord }" />
				</p>
			</form>


		</div>
	</div>
</body>
</html>