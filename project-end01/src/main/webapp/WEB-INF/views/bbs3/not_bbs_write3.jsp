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
.location01{
	padding-top: 75px;
	padding-left: 500px;
}
hr.line{
  width: 653px;
  color: black;
  border: thin solid gray;
  border-bottom:2px;
  text-align:left; 
  margin-left: 0px;
  
  }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function check() {
		var form = document.getElementById("writeForm");
		//유효성 검사로직 추가
		return true;
	}
	function goList() {
		var form = document.getElementById("listForm");
		form.submit();
	}
</script>
<%@ include file="../template3/header.jsp"%>
</head>
<body>
	<%--  <%@ include file="../template/header2.jsp" %> --%>
	<%@ include file="../template3/header2.jsp" %>
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
					<form id="writeForm" action="/shop01/not_bbs_write3/" method="post"
						onsubmit="return check()">
						<p style="margin: 0; padding: 0;">
							<input type="hidden" name="bbscd" value="${param.bbscd }" />
						</p>
				     <table id="write-form">
                        <tr>
                           <td>제목</td>
                           <td><input type="text" name="title" size="74" style="height: 40px;" /></td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        <tr>
                         <tr>
                           <td>작성자</td>
                           <td><input type="hidden" name="memId" size="71" style="height: 40px;" value="${sessionScope.check.memId }" /></td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        <tr>
                           <td>내용</td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        </tr>
                        <tr>
                           <td colspan="4"><textarea name="contents" rows="20" style="width: 653px"></textarea>
                           </td>
                        </tr>

                     </table>
                     <br/>
                        <hr class="line">
						<div style="text-align: center; padding-bottom: 15px; padding-right: 386px;">
							<input type="submit" value="전송" class="btn btn-info btn-sm active" /> <input type="button"
								value="목록" onclick="goList()" class="btn btn-info btn-sm active" />
						</div>
					</form>
				</div>
				<!--  본문 끝 -->

			</div>
			<!-- content 끝 -->
		</div>
		<!--  container 끝 -->

		<div id="sidebar"></div>

		<div id="extra"></div>

		<div id="footer"></div>

	</div>
</div>
	<div id="form-group" style="display: none;">
		<form id="listForm" action="/shop01/not_bbs3/" method="get">
			<p>
				<input type="hidden" name="bbscd" value="${param.bbscd }" />
			</p>
		</form>
	</div>
	<%@ include file="../template3/footer.jsp"%>
</body>
</html>