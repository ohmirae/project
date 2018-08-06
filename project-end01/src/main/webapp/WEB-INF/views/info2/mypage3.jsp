<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.location01 {
	padding-top: 20px;
	padding-left: 420px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../template3/header.jsp"%>
</head>
<body>
	<%@ include file="../template3/header2.jsp"%>
	<div class="location01">
	<div class="col-md-9">
	<table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th style="width: 10%; margin: auto;
                vertical-align: middle; text-align:center; height: 70px;">상품명</th>
                <th style="width: 40%; margin: auto;
                vertical-align: middle; text-align:center; height: 70px;">등록페이지</th>
             
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">OUTER</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;" ><a onclick="location.href='http://localhost:8088/shop01/outer_write3/?procd=outer&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">TOP</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;"><a onclick="location.href='http://localhost:8088/shop01/top_write3/?procd=top&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">BOTTOM</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;"><a onclick="location.href='http://localhost:8088/shop01/bottom_write3/?procd=bottom&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">DRESS</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;"><a onclick="location.href='http://localhost:8088/shop01/dress_write3/?procd=dress&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">SHOES&ACC</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;"><a onclick="location.href='http://localhost:8088/shop01/shoeacc_write3/?procd=shoesNacc&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
            <tr>
                <td style="text-align:center; height: 70px; vertical-align: middle;">SALE</td>
                <td style="text-align:center; height: 70px; vertical-align: middle;"><a onclick="location.href='http://localhost:8088/shop01/sale_write3/?procd=sale&curPage=1&searchWord='">상품 등록하기</a></td>
                
            </tr>
        </tbody>
    </table>
	</div>
	</div>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<%@ include file="../template3/footer.jsp"%>
</body>
</html>