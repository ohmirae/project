<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body { font-family: 'Nanum Gothic', sans-serif;}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%-- <link rel="stylesheet" href="/${path }/css/bootstrap.css"> --%>
<%-- <script type="text/javascript" src="/${path }/js/jquery-1.12.4.min.js"></script> --%>
<%-- <script type="text/javascript" src="/${path }/js/bootstrap.js"></script> --%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body { font-family: 'Nanum Gothic', sans-serif;}
 /* 사이드바 래퍼 스타일 */
  
  #page-wrapper {
    padding-left: 250px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 250px;
    height: 100%;
    margin-left: -250px;
    background: #fff;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  /* 사이드바 스타일 */
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
    font-size: 16;
    
  }
  
  .sidebar-nav li {
    text-indent: 1.5em;
    line-height: 2.8em;
    
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999;
  }
  
  .sidebar-nav li a:hover {
    color: black;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
   
  }

  .position2{
    margin: 0px 0px 20px 0px;
  }

#image {

   height: 100%;

}

.col-md-3 { 

   
 left: 300px; 
 top: 100px;

} 
html, div, body, h3 {
	margin: 0;
	padding: 0;
}

h3 {
	display: inline-block;
	padding: 0.6em;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var name = ${result}.response.name;
		var email = ${result}.response.email;
		$("#name").html("환영합니다. "+name+"님");
		$("#email").html(email);
	  });
</script>
</head>
<nav class="navbar navbar-info">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/shop01/">
<!--       <p style="font-size: 23">CIELO</p> -->
          <img height="280%" alt="..."  src="resources/imgs/cielo.jpg" />

      </a>
    </div>
    <ul class="nav navbar-nav navbar-right" style="font-size: 16;">
    <br/>
       <li><a href="http://nid.naver.com/nidlogin.logout">Logout</a></li> 
	   <li><a href="/shop01/mypage/">MyPage</a></li> 
	   <li><a href="/shop01/cart/">Cart</a></li> 
      </ul>
  </div>
</nav>
<div id="page-wrapper">
  <!-- 사이드바-->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li style="text-decoration: underline;">Products</li>
      <li><a href="/shop01/outer/">Outer</a></li>
      <li><a href="/shop01/top/">Top</a></li>
      <li><a href="/shop01/bottom/">Bottom</a></li>
      <li><a href="/shop01/dress/">Dress</a></li>
      <li><a href="/shop01/shoeacc/">Shoes&Acc</a></li>
      <li><a href="/shop01/sale/" class="position2">Sale</a></li>
      
      <li><a href="#">Notice</a></li>
      <li><a href="#">Q&A</a></li>
      <li><a href="#">Review</a></li>
    </ul>
  </div>
  </div>
<body>
	<div
		style="background-color: #15a181; width: 100%; height: 50px; text-align: center; color: white;">
		<h3>SIST Naver_Login Success</h3>
	</div>
	
	<br>
	<h2 style="text-align: center" id="name"></h2>
	<h4 style="text-align: center" id="email"></h4>
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
<br/>
<br/>
<br/>
<br/>
<br/>
<p align="center">footer test</p>
</body>
</html>
