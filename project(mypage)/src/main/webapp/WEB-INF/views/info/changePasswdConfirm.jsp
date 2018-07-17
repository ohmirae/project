<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.location01{
  padding-top: 10px;
  padding-left: 550px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="비밀번호 변경 확인" />
<meta name="Description" content="비빌번호 변경 확인" />
<title>비밀번호 변경 결과</title>
<script type="text/javascript">
//<![CDATA[     
//]]>
</script>          
<%@ include file="../template/header.jsp" %>
</head>
<body>
<%@ include file="../template2/header2.jsp" %>
<div class="location01">
<form id="join" class="form-horizontal" action="/shop01/changePasswd/" method="POST" onsubmit="return check()">
  <fieldset>
    <div id="legend">
      <legend>비밀번호 변경</legend>
    </div>
    <div class="control-group">
      <label class="control-label" for="name">회원정보가 변경되었습니다</label><br/>
      <label class="control-label" for="name">이메일 : ${check.email}</label><br/>
      <label class="control-label" for="id">주소 : ${check.address}</label><br/>
      <label class="control-label" for="e-mail">전화번호 : ${check.hp}</label><br/>
      <label class="control-label" for="name">변경된 비밀번호로 다시 로그인하실 수 있습니다.</label><br/>
      <br/>
      </div>
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <br/>
        <br/>
          <button class="btn btn-info btn-sm active" style="width: 288px" type="button" onclick="javascript:location.href='/shop01/login/'" >LOGIN</button>
      </div>
    </div>
  </fieldset>
</form>

</div>
<%@ include file="../template/footer.jsp" %>
      </body>    
</html>