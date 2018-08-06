<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.location01 {
	padding-top: 10px;
	padding-left: 680px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="회원가입" />
<meta name="Description" content="회원가입" />
<script type="text/javascript">
//<![CDATA[
    function check() {
        var form = document.getElementById("signUpForm");
        //TODO 유효성 검사
        return true;
    }
//]]>
</script>
<%@ include file="../template/header.jsp"%>
<script type="text/javascript">
$(document).ready(function() {
	 $("#join").click(function() {
	 	var memId = $("#memId").val();
		var memName = $("#memName").val();
		var memPassword = $("#memPassword").val();
		var passwordCk = $("#passwordCk").val();
		var email = $("#email").val();
		var address = $("#address").val();
		var hp = $("#hp").val();
		
		//empty check
		if(memId == "") {
				alert("아이디를 입력하세요");
				$("#memId").focus();
				return false;
		}
		
		//id duplication function
// 		else if(memId != ""){
// 			$("#memId").keyup();
// 			$("#memId").keyup(function(){
// 				$.post(
// 				"<c:url value='/info/chkId'/>", 
// 				{"memId":$("#memId").val()}, 
// 				function(data){
// 					console.log(data);
					
// 					if(data=="true") {
// 						$("#chkResult").txt("이미 사용중인 아이디입니다");
// 					} else {
// 						$("#chkResult").txt("이미 사용중인 아이디입니다");
// 					}
// 				});
// 			});
// 		}
		
		else if(memName == "") {
			alert("이름을 입력하세요");
			$("#memName").focus();
			return false;
		}
		
		else if(memPassword == "") {
			alert("비밀번호를 입력하세요");
			$("#memPassword").focus();
			return false;
		}
		
		else if(passwordCk == "") {
			alert("비밀번호를 다시 입력하세요");
			$("#passwordCk").focus();
			return false;
		}
		
		//pw check
		else if(passwordCk != memPassword) {
			alert("비밀번호가 다릅니다 \n비밀번호를 다시 입력하세요");
			$("#passwordCk").focus();
			return false;
		}
		
		else if(email == "") {
			alert("이메일을 입력하세요");
			$("#email").focus();
			return false;
		}
		
		else if(address == "") {
			alert("주소를 입력하세요");
			$("#address").focus();
			return false;
		}
		
		else if(hp == "") {
			alert("전화번호를 입력하세요(-는 제외)");
			$("#hp").focus();
			return false;
		}

		
		document.join1.action = "/shop01/join";
		document.join1.submit();
		
	});
	 
// 	var xmlReq;
	
// 	function createAjax() {
// 		xmlReq = new XMLHttpRequest();
// 	}
	
// 	function ajaxSend() {
// 		createAjax();
// 		var memId = document.getElementById("memId").value;
// 		xmlReq.onreadystatechange = callBack;
// 		xmlReq.open("GET", "chkId.jsp?memId="+memId, true);
// 		xmlReq.send(null);
// 	}
	
// 	function callBack() {
// 		if(xmlReq.readyState == 4) {
// 			if(xmlReq.status == 200) {
// 				printData();
// 			}
// 		}
// 	}
	
// 	function prindtData() {
// 		var result = xmlReq.responseXML;
		
// 		var rootNode = result.documentElement;
// 		var rootTag = document.getElementById("result");
		
// 		var idNode = rootNode.firstChild.nodeValue;
// 		var idValue = idNode.item(0).firstChild.nodeValue;
// 		var idTag = document.getElementById("idTxt");
		
// 		if(rootValue == "true") {
// 			rootTag.innerHTML = "사용 가능한 아이디 입니다";
// 			idTag.innerHTML = "<br/>"+idValue;
// 		}else{
// 			rootTag.innerHTML = "이미 사용중인 아이디 입니다";
// 			idTag.innerHTML = "<br/>"+idValue;
// 		}
// 	}
	
});
</script>
</head>
<body>
	<%@ include file="../template/header2.jsp"%>
	<div class="location01">
		<form id="signUpForm" class="form-horizontal" action="/shop01/join/"
			method="POST" onsubmit="return check()">
			<fieldset>
				<div class="control-group">
					<!-- ID -->
					<label class="control-label" for="ID">ID</label>
					<div class="controls">
						<input type="text" id="memId" name="memId" placeholder=" 아이디를 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;" onkeydown="ajaxSend()">
<!-- 							<span id="result" style="color: BLUE;"></span> -->
<!-- 							<span id="idTxt" style="color: GREEN;"></span> -->
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="name">NAME</label>
					<div class="controls">
						<input type="text" id="memName" name="memName" placeholder=" 이름을 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="password">PASSWORD</label>
					<div class="controls">
						<input type="password" id="memPassword" name="memPassword"
							placeholder=" 비밀번호를 입력하세요" class="input-xlarge"
							style="text-align: Left; width: 288px;"> <br />
					</div>
				</div>

			    <div class="control-group">
			      <label class="control-label" for="passwordCk">PASSWORD CHECK</label>
			      <div class="controls">
			        <input type="password" id="passwordCk" name="passwordCk" placeholder=" 비밀번호를 다시 입력하세요" class="input-xlarge"
			         style="text-align: Left; width: 288px;">
			      <br/>
			      </div>
			    </div>


				<div class="control-group">
					<!-- E-mail -->
					<label class="control-label" for="email">E-MAIL</label>
					<div class="controls">
						<input type="email" id="email" name="email" placeholder=" 이메일을 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>


				<div class="control-group">
					<!-- ADDRESS-->
					<label class="control-label" for="address">ADDRESS</label>
					<div class="controls">
						<input type="text" id="address" name="address" placeholder=" 주소를 입력하세요"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>
				<div class="control-group">
					<!-- HP-->
					<label class="control-label" for="hp">HP</label>
					<div class="controls">
						<input type="number" id="hp" name="hp" placeholder=" 전화번호를 입력하세요(-는 제외)"
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br /> <br />
					</div>
				</div>
				<div class="control-group">
					<!-- Button -->
					<div class="controls">
						<a href="#"><button id="join" class="btn btn-info btn-sm active"
								style="width: 288px" type="submit">JOIN</button></a> <br /> <br />
						<button class="btn btn-info btn-sm active" style="width: 288px"
							type="reset">CANCEL</button>
					</div>
				</div>
			</fieldset>
		</form>

	</div>
	<%@ include file="../template/footer.jsp"%>
</body>
</html>