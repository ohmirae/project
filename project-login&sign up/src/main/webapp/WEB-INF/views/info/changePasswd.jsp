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
<meta name="Keywords" content="비밀번호 변경" />
<meta name="Description" content="비빌번호 변경" />
<title>비밀번호 변경</title>
<script type="text/javascript">
//<![CDATA[
    function check() {
        var form = document.getElementById("changePasswordForm");
        if (form.memPassword.value == form.confirm.value) {
            return true;   
        } else {
            alert("[변경 비밀번호]와 [변경 비밀번호 확인]값이 같지 않습니다.");
            return false;
        }
    }        
//]]>
</script>          
<%@ include file="../template/header.jsp" %>
</head>
<body>
<%@ include file="../template/header2.jsp" %>
<div class="location01">
<form id="join" class="form-horizontal" action="/shop01/changePasswd/" method="POST" onsubmit="return check()">
  <fieldset>
    <div id="legend">
      <legend>비밀번호 변경</legend>
    </div>
    <div class="control-group">
      <label class="control-label" for="name">${check.memName}님은 로그인 상태입니다.</label><br/>
      <label class="control-label" for="id">아이디 ${check.memId}</label><br/>
      <label class="control-label" for="e-mail">이메일 ${check.email}</label>
      <br/>
      <label class="control-label" for="password">PASSWORD</label>
      <div class="controls">
        <input type="password" id="memPassword" name="memPassword" placeholder="" class="input-xlarge"
         style="padding-left: 130px">
      <br/>
      </div>
    </div>
    
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">PASSWORD CHECK</label>
      <div class="controls">
        <input type="password" id="memPassword" name="memPasswordConfirm" placeholder="" class="input-xlarge"
         style="padding-left: 130px">
      <br/>
      </div>
    </div>

    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <br/>
        <br/>
        <button class="btn btn-info btn-sm active" style="width: 288px" type="submit">OK</button>
      </div>
    </div>
  </fieldset>
</form>

</div>
<%@ include file="../template/footer.jsp" %>
      </body>    
</html>