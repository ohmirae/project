<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%-- <link rel="stylesheet" href="/${path }/css/bootstrap.css"> --%>
<%-- <script type="text/javascript" src="/${path }/js/jquery-1.12.4.min.js"></script> --%>
<%-- <script type="text/javascript" src="/${path }/js/bootstrap.js"></script> --%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>


<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
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
	font-size: 18;
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

.sidebar-nav>.sidebar-brand {
	font-size: 1.3em;
	line-height: 3em;
}

.position2 {
	margin: 0px 0px 20px 0px;
}

#image {
	height: 85%;
}

.col-md-3 {
	left: 300px;
	top: 100px;
}

#container {
	font-size: 18px;
}

#mymy {
	font-size: 18px;
}
</style>


</head>
<h1>성공인가요???</h1>
<nav class="navbar navbar-info">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/shop01/home3/"> <!--       <p style="font-size: 23">CIELO</p> -->
				<img height="280%" alt="..." src="../resources/imgs/cielo.jpg" />

			</a>
		</div>
		<ul class="nav navbar-nav navbar-right" style="font-size: 18;">
			<br />
			<li><a>${check.memId}</a></li>
			<li><a href="/shop01/logout/">Logout</a></li>
			<li><a href="/shop01/mypage/">MyPage</a></li>
			<li><a href="#">Cart</a></li>
		</ul>
	</div>
</nav>



<div id="page-wrapper">
	<!-- 사이드바-->
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li style="text-decoration: underline;">Products</li>
			<li><a href="/shop01/outer3/">Outer</a></li>
			<li><a href="/shop01/top3/">Top</a></li>
			<li><a href="/shop01/bottom3/">Bottom</a></li>
			<li><a href="/shop01/dress3/">Dress</a></li>
			<li><a href="/shop01/shoeacc3/">Shoes&Acc</a></li>
			<li><a href="/shop01/sale3/" class="position2">Sale</a></li>

			<li><a href="/shop01/not_bbs3/">Notice</a></li>
			<li><a href="/shop01/qna3/">Q&A</a></li>
			<li><a href="/shop01/rev_bbs3/">Review</a></li>
		</ul>
	</div>
</div>
<div id="carousel-example-generic" class="carousel slide"
	data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img id="image" src="../resources/imgs/dre58-1.jpg" alt="..."
				width="100%" />
		</div>
		<div class="item">
			<img id="image" src="../resources/imgs/dre44-21.jpg" alt="..."
				width="100%" />
		</div>
		<div class="item">
			<img id="image" src="../resources/imgs/dre49-17.jpg" alt="..."
				width="100%" />
		</div>
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>


<div class="container">
	<div class="row">
		<div class="col-md-3">
			<a><img src="../resources/imgs/img01.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img01.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img01.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img01.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br />
		</div>
		<div class="col-md-3">
			<a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>25,000원</h5>
			<br /> <a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br />
		</div>
		<div class="col-md-3">
			<a><img src="../resources/imgs/img01.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>42,000원</h5>
			<br /> <a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img04.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br /> <a><img src="../resources/imgs/img02.jpg" alt="..."
				class="img-responsive img-rounded"></a> <br /> <a href="#">하늘하늘원피스(5
				color)</a>
			<h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
			<h5>35,000원</h5>
			<br />
		</div>
	</div>
</div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<!-- <p align="center">footer test</p> -->
<hr class="line">
<div style="padding-top: 0px; padding-left: 300px;">
    <div class="footer01">
      <div class="col-md-4">
          <h4>CS CENTER</h4>
          <h5>1320-1004<h5>
          <br/>
          <h7>Weekday. am10:00 - pm17:00<br>Closed. Sat. Sun. Holiday</h7>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <h7>HOME&nbsp;</h7>
          <h7>COMPANY&nbsp;</h7>
          <h7>AGREEMENT&nbsp;</h7>
          <h7>GUIDE</h7>
          <br/>
          <h7 style="word-spacing:63px;"><b><ins>개인정보취급방침&nbsp;</b></ins></h7>
          <h7>사업자정보확인</h7><br/>        
          <h7 style="word-spacing:110px;">에스크로&nbsp;</h7>
          <h7>제휴/단체복문의</h7>
          <br/>
          <br/>
          <h7 style="word-spacing:7px;">COMPANY&nbsp;</h7> 
          <h7 style="word-spacing:4px;">MAIL ORDER LICENSE&nbsp;</h7> 
          <h7>OWNER</h7>
          
          <br/>
          
          <h7 style="word-spacing:40px;">씨엘로&nbsp;</h7>
          <h7 style="word-spacing:19px;">2018-서울뭐하구-132&nbsp;</h7>
          <h7>JAVA KIM</h7>
          
        </div>
        
        <div class="col-md-1">     
        </div>
        <div class="col-md-2">
          <h4>BANKING</h4>
          <h6>국민 142423-52-131424<br>우리 2402-424-224244<br>신한 142-535-242424<br></h6>
          <h7><br>예금주:㈜씨엘로</h7>
          <br/><br/><br/><br/><br/><br/>
          <h7>CHIEF MANAGER</h7>
          
          <br/>
          
          <h7>IN-SUNG JO</h7>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-4">
           <h4>ADDRESS</h4>
           <h6>서울시 뭐하구 릴리동2가 221-4241번지 AD빌딩 5,6층<br></h6>
           <br><h7>(교환/반품 주소)<br></h7>
           <h6>서울 리얼로40 서강대학교우편취급국 2층 씨엘로 앞<br></h6>
           <h7><br>(방문수령 및 타택배 반품시)<br></h7><h6>서울시 뭐하구 릴리동2가 221-4241번지 AD빌딩 5층</h6>
         <br/>
         <h7>COMPANY E-MAIL</h7>
         
         <br/>
         
         <h7>CIELO@NAVER.COM</h7>
         <br />
         <br />
         <br />
         <br />
      </div>
     </div>
   </div>
</body>
</html>