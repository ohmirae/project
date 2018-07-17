<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 본문 시작 -->
<h1>내정보수정</h1>
<p>
이메일, 주소, 번호 변경이 가능합니다<br />
비밀번호는 <a href="/shop01/changePasswd/">비밀번호 변경</a>을 이용하세요.<br />
</p>
<form id="editAccountForm" action="/shop01/membersEdit/" method="post" onsubmit="return check()">
<table>
<tr>
    <td>이메일</td>
    <td><input type="text" name="name" value="${check.email }" /></td>
</tr>
<tr>
    <td>주소</td>
    <td><input type="text" name="mobile" value="${check.address }" /></td>
</tr>
<tr>
    <td>전화번호</td>
    <td><input type="text" name="mobile" value="${check.hp }" /></td>
</tr>

<tr>
    <td colspan="2"><input type="submit" value="확인" /></td>
</tr>
</table>
</form>
<!--  본문 끝 -->
 
</body>
</html>