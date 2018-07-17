<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body { font-family: 'Nanum Gothic', sans-serif;}
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


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

   height: 85%;

}

.col-md-3 { 

   
 left: 300px; 
 top: 100px;

} 




</style>


</head>
<nav class="navbar navbar-info">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/shop01/home2/">
<!--       <p style="font-size: 23">CIELO</p> -->
          <img height="280%" alt="..."  src="../resources/imgs/cielo.jpg" />

      </a>
    </div>
    <ul class="nav navbar-nav navbar-right" style="font-size: 16;">
    <br/>
    
       <li><a>${check.memId}</a></li> 
       <li><a onclick="location.href='/shop01/info/logout'">Logout</a></li> 
	   <li><a href="/shop01/changePasswd/">MyPage</a></li> 
	   <li><a href="/shop01/cart/">Cart</a></li> 
      </ul>
  </div>
</nav>


 
<div id="page-wrapper">
  <!-- 사이드바-->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li style="text-decoration: underline;">Products</li>
      <li><a href="/shop01/outer2/">Outer</a></li>
      <li><a href="/shop01/top2/">Top</a></li>
      <li><a href="/shop01/bottom2/">Bottom</a></li>
      <li><a href="/shop01/dress2/">Dress</a></li>
      <li><a href="/shop01/shoeacc2/">Shoes&Acc</a></li>
      <li><a href="/shop01/sale2/" class="position2">Sale</a></li>
      
      <li><a href="#">Notice</a></li>
      <li><a href="#">Q&A</a></li>
      <li><a href="#">Review</a></li>
    </ul>
  </div>
  </div>
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img id="image" src="../resources/imgs/bot08-12.jpg" alt="..." width="100%" />
    </div>
    <div class="item">
      <img id="image" src="../resources/imgs/dre44-21.jpg" alt="..." width="100%" />
    </div>
     <div class="item">
      <img id="image" src="../resources/imgs/dre58-1.jpg" alt="..." width="100%" />
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  

<div class="container">
	<div class="row">
	  <div class="col-md-3">
	    <a><img  src="../resources/imgs/img01.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	    <a><img  src="../resources/imgs/img01.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img01.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img01.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	  </div>  
	  <div class="col-md-3">
	    <a><img src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>25,000원</h5>
	    <br/>
	    <a><img  src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	  </div>  
	  <div class="col-md-3">  
	    <a><img src="../resources/imgs/img01.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>42,000원</h5>
	    <br/>
	    <a><img  src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img04.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	     <a><img  src="../resources/imgs/img02.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a href="#">하늘하늘원피스(5 color)</a>
	    <h6>누구에게나 잘 어울리는 하늘색 원피스</h6>
	    <h5>35,000원</h5>
	    <br/>
	  </div>
	  </div>
	  </div>
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
</div>
</body>
</html>