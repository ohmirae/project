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
        var form = document.getElementById("changePasswd");
        if (form.memPassword.value == form.changePasswdConfirm.value) {
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
<%@ include file="../template2/header2.jsp" %>
<div class="location01">
<form id="join" class="form-horizontal" action="/shop01/changePasswd/" method="POST" onsubmit="return check()">
  <fieldset>
    <div id="legend">
      <legend>회원정보 보기 및 변경</legend>
    </div>
    <div class="control-group">
      <label class="control-label" for="id">${check.memId}님의 회원정보</label><br/>
      <label class="control-label" for="password">비밀번호 : ${check.memPassword}</label><br/>
      <label class="control-label" for="name">이름 : ${check.memName}</label><br/>
      <label class="control-label" for="e-mail">이메일 : ${check.email}</label><br/>
      <label class="control-label" for="address">주소 : ${check.address}</label><br/>
      <label class="control-label" for="hp">전화번호 : ${check.hp}</label><br/>
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
      <label class="control-label" for="password">이메일 변경</label><br/>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge"
         style="padding-left: 130px">
      <br/>
      </div>
    </div>
    
      <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="address">주소 변경</label>
      <div class="controls">
        <input type="text" id="address" name="address" placeholder="" class="input-xlarge"
         style="padding-left: 130px">
      <br/>
      </div>
    </div>
    
      <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="hp">전화번호 변경</label>
      <div class="controls">
        <input type="text" id="hp" name="hp" placeholder="" class="input-xlarge"
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