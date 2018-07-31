<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
body { font-family: 'Nanum Gothic', sans-serif;}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<style type="text/css">
.location01{
  padding-top: 0px;
  padding-left: 470px;
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="게시판 수정하기 폼" />
<meta name="Description" content="게시판 수정하기 폼" />
<link rel="stylesheet" href="../resources/css/screen.css" type="text/css" media="screen" />
<title>${bbsnm }</title>
<script type="text/javascript">
   function check() {
       var form = document.getElementById("modifyForm");
       return true;
   }
 
   function goList() {
       var form = document.getElementById("listForm");
       form.submit();
   }
 
   function goView() {
       var form = document.getElementById("viewForm");
       form.submit();
   }
   
//    function goModify(){
//        var form = document.getElementById("modifyForm");
//        form.submit();
      
//    }
//    function goDelete(){
//        var form = document.getElementById("deleteForm");
//        form.submit();
//    }
</script>
<%@ include file="../template/header.jsp" %>
</head>
<body>
<%@ include file="../template/header2.jsp" %>
<div class="location01">
 
<div id="wrap">
 
    <div id="header">
    </div>
 
    <div id="main-menu">
    </div>
 
    <div id="container">
        <div id="content" style="min-height: 800px;">
            <div id="url-navi"></div>
           
<!-- 본문 시작 -->
<h3>${bbsnm }</h3>
<hr class="line">
<div id="bbs">
<form id="modifyForm" action="/shop01/dress_edit/" method="post" enctype="multipart/form-data" onsubmit="return check()">
<p style="margin: 0;padding: 0;">
    <input type="hidden"  name="productNum" value="${param.productNum }" />
    <input type="hidden"  name="procd" value="${param.procd }" />
     <input type="hidden" name="curPage" value="${param.curPage }" />
    <input type="hidden" name="searchWord" value="${param.searchWord }" />
</p>
<table id="write-form">

<tr>
    <td>제목</td>
    <td><input type="text" name="productName" size="71" style="height: 40px;" value="${thisProductsVo.productName }"/></td>
</tr>
 
<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td>내용</td>
</tr> 
 
<tr>
    <td>&nbsp;</td>
</tr>  

<tr>
    <td colspan="2"><textarea name="explan" rows="20" style="width: 653px">${thisProductsVo.explan }</textarea>
    </td>
</tr>
<tr>
 <td>파일첨부</td>
 <td><input type="file" name="upload" multiple/></td>
</tr>



 
</table>
<br/>
<hr class="line">
<div style="text-align: center;padding-bottom: 15px; padding-right: 397px;">
    <input type="submit" value="전송" class="btn btn-info btn-sm active" />
    <input type="button" value="뒤로" onclick="goView()" class="btn btn-info btn-sm active" />
    <input type="button" value="목록" onclick="goList()" class="btn btn-info btn-sm active" />
</div>
</form>
   
</div><!-- bbs 끝 -->
<!--  본문 끝 -->
        </div><!-- content 끝 -->
    </div><!--  container 끝 -->
   
    <div id="sidebar">
    </div>
   
    <div id="extra">
    </div>
 
    <div id="footer">
    </div>
 
</div>
 
<div id="form-group" style="display: none;">
    <form id="listForm" action="/shop01/dress/" method="get">
        <p>
        <input type="hidden" name="procd" value="${param.procd }" />
        <input type="hidden" name="searchWord" value="${param.searchWord }" />
        </p>
    </form>
    <form id="viewForm" action="/shop01/dress_detail/" method="get">
        <p>
        <input type="hidden" name="productNum" value="${param.productNum }"/>
        <input type="hidden" name="procd" value="${param.procd }" />
         <input type="hidden" name="curPage" value="${param.curPage }" />
        <input type="hidden" name="searchWord" value="${param.searchWord }" />
        </p>
    </form>
<!--      <form id="modifyForm" action="/shop01/not_bbs_edit/" method="get"> -->
<!--     <p> -->
<%--         <input type="hidden" name="bbseditno" value="${thisBbsVo.bbseditno }"/> --%>
<%--         <input type="hidden" name="bbscd" value="${bbscd }" /> --%>
<!--     </p> -->
<!--     </form> -->
<!--     <form id="deleteForm" action="/shop01/not_bbs_delete/" method="get"> -->
<!--     <p> -->
<%--         <input type="hidden" name="bbseditno" value="${thisBbsVo.bbseditno }"/> /> --%>
<%--         <input type="hidden" name="bbscd" value="${bbscd }" /> --%>
<!--     </p> -->
<!--     </form> -->
</div>
</div>
     <%@ include file="../template/footer.jsp" %>
</body>
</html>