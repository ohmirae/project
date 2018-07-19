<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body { font-family: 'Nanum Gothic', sans-serif;}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
//<![CDATA[
 
    function goWrite() {
        var form = document.getElementById("writeForm");
        form.submit();
    }
//]]>
</script>  
<%@ include file="../template/header.jsp" %>
</head>
<body>
<%@ include file="../template/header2.jsp" %>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div id="bbs">
<table class="table table-hover">
		<thead>
<!-- 		<tr> -->
<!--      <th class="col-md-1">NUM</th> -->
<!--      <th class="col-md-1">ID</th> -->
<!--      <th class="col-md-1">TITLE</th> -->
<!--      <th class="col-md-2">CONTENTS</th> -->
<!--      <th class="col-md-1">DATE</th> -->
<!--    </tr> -->
			<tr>
				<th align="right" style="text-align: right;">글번호</th>
				<th align="right" style="text-align: right;">제목</th>
				<th align="right" style="text-align: right;">날짜</th>
				<th align="right" style="text-align: right;">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="bbsVo" varStatus="status">
				<tr>
				<td align="right" style="text-align: right;">${bbsVo.bbseditno}</td>
				<td align="right" style="text-align: right;">${bbsVo.title }</td>
				<td align="right" style="text-align: right;">${bbsVo.bbs_date }</td>
				<td align="right" style="text-align: right;">${bbsVo.hit }</td>
				
<%--         <td style="text-align: center;">${bbsVo.bbseditno }</td> --%>
<!--         <td> -->
<%--             <a href="javascript:goView('${bbsVo.bbseditno }'">${bbsVo.title }</a> --%>
<!--         </td> -->
<%--         <td style="text-align: center;">${bbsVo.bbs_date }</td> --%>
<%--         <td style="text-align: center;">${bbsVo.hit }</td> --%>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	 <div id="list-menu" style="text-align:  right;">
        <input type="button" value="글쓰기"  onclick="goWrite()"  class="btn btn-info btn-sm active" />
<!--      <button><a href="/shop01/not_bbs_write/">글쓰기</a></button> -->
    </div>
        <br/>
        <br/>
	
<%@ include file="../template/footer.jsp" %>
 
<div id="form-group" style="display: none;">
 
    <form id="writeForm" action="/shop01/not_bbs_write/" method="get">
    <p>
        <input type="hidden" name="bbscd" value="${bbscd }" />
    </p>
    </form>
</div>
</body>
</html>
 
<!-- <!-- 본문 시작 -->
<%-- <h1>${bbsNm }</h1> --%>
<!-- <div id="bbs"> -->
<!--     <table> -->
<!--     <tr> -->
<!--         <th style="width: 60px;">NO</th> -->
<!--         <th>TITLE</th> -->
<!--         <th style="width: 84px;">DATE</th> -->
<!--         <th style="width: 60px;">HIT</th> -->
<!--     </tr> -->
<!--      반복 구간 시작 -->
<%--     <c:forEach var="bbsVo" items="${list }" varStatus="status">   --%>
<!--     <tr> -->
<%--         <td style="text-align: center;">${bbsVo.bbseditno }</td> --%>
<!--         <td> -->
<%--             <a href="javascript:goView('${bbsVo.bbseditno }')">${bbsVo.title }</a> --%>
<!--         </td> -->
<%--         <td style="text-align: center;">${bbsVo.bbs_date }</td> --%>
<%--         <td style="text-align: center;">${bbsVo.hit }</td> --%>
<!--     </tr> -->
<%--     </c:forEach> --%>
<!--      반복 구간 끝 -->
