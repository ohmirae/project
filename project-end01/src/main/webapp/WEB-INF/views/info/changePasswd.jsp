<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.location01 {
	padding-top: 10px;
	padding-left: 650px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="회원정보 변경" />
<meta name="Description" content="회원정보 변경" />
<title>회원정보 변경</title>
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
<%@ include file="../template2/header.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#okay").click(function() {
			var memPassword = $("#memPassword").val();
			var passwordChk = $("#passwordChk").val();
			
			if(passwordChk != memPassword){
				alert("비밀번호가 다릅니다 \n비밀번호를 다시 입력하세요");
				$("#passwordChk").focus();
				return false;
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="../template2/header2.jsp"%>
	<div class="location01">
		<form id="changePasswordForm" class="form-horizontal" action="/shop01/changePasswd/"
			method="POST" onsubmit="return check()">
			<fieldset>
				<div id="legend">
					<legend>회원정보 보기 및 변경</legend>
				</div>
				<div class="control-group">
					<label class="control-label" for="id">${check.memId }님의 회원정보</label><br />
					<label class="control-label" for="password">비밀번호 : ${check.memPassword}</label><br /> 
						<label class="control-label" for="name">이름: ${check.memName}</label><br /> 
						<label class="control-label" for="e-mail">이메일: ${check.email}</label><br /> 
						<label class="control-label" for="address">주소: ${check.address}</label><br />
						 <label class="control-label" for="hp">전화번호: ${check.hp}</label><br /> <br /> 
						 
						<label class="control-label" for="password">PASSWORD</label>
					    <div class="controls">
						<input type="password" id="memPassword" name="memPassword"
							placeholder="비밀번호를 입력하세요" class="input-xlarge"
							style="text-align: Left; width: 288px;"> <br />
					</div>
				</div>
					
				<div class="control-group">
					<label class="control-label" for="password">PASSWORD CHECK</label>
					<div class="controls">
						<input type="password" id="passwordChk" name="passwordChk"
							placeholder="비밀번호를 다시 입력하세요" class="input-xlarge"
							style="text-align: Left; width: 288px;"> <br />
					</div>
				</div>

				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="password">이메일 변경</label><br />
					<div class="controls">
						<input type="email" id="email" name="email" placeholder="이메일을 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="address">주소 변경</label>
					<div class="controls">
						<input type="text" id="address" name="address" placeholder="주소를 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="hp">전화번호 변경</label>
					<div class="controls">
						<input type="number" id="hp" name="hp" placeholder="전화번호를 입력하세요(-는 제외)"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>



				<div class="control-group">
					<!-- Button -->
					<div class="controls">
						<br /> <br />
						<button class="btn btn-info btn-sm active" style="width: 288px"
							type="submit">OK</button>
					</div>
				</div>
			</fieldset>
		</form>

	</div>
	<%@ include file="../template/footer.jsp"%>
</body>
</html>