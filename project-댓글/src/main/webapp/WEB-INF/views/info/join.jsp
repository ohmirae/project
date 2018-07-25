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
<meta name="Keywords" content="회원가입" />
<meta name="Description" content="회원가입" />
<script type="text/javascript">
//<![CDATA[
    function check() {
        var form = document.getElementById("join");
        //TODO 유효성 검사
        return true;
    }
//]]>
</script>
<%@ include file="../template/header.jsp"%>
</head>
<body>
	<%@ include file="../template/header2.jsp"%>
	<div class="location01">
		<form id="join" class="form-horizontal" action="/shop01/join/"
			method="POST" onsubmit="return check()">
			<fieldset>
				<div id="legend">
					<legend>JOIN</legend>
				</div>
				<div class="control-group">
					<!-- ID -->
					<label class="control-label" for="ID">ID</label>
					<div class="controls">
						<input type="text" id="memId" name="memId" placeholder=""
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Username -->
					<label class="control-label" for="name">NAME</label>
					<div class="controls">
						<input type="text" id="memName" name="memName" placeholder=""
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>

				<div class="control-group">
					<!-- Password-->
					<label class="control-label" for="password">PASSWORD</label>
					<div class="controls">
						<input type="password" id="memPassword" name="memPassword"
							placeholder="" class="input-xlarge"
							style="text-align: Left; width: 288px;"> <br />
					</div>
				</div>

				<!--     <div class="control-group"> -->
				<!--       <label class="control-label" for="passwordCk">PASSWORD CHECK</label> -->
				<!--       <div class="controls"> -->
				<!--         <input type="password" id="memPassword" name="memPassword" placeholder="" class="input-xlarge" -->
				<!--          style="padding-left: 130px"> -->
				<!--       <br/> -->
				<!--       </div> -->
				<!--     </div> -->


				<div class="control-group">
					<!-- E-mail -->
					<label class="control-label" for="email">E-MAIL</label>
					<div class="controls">
						<input type="text" id="email" name="email" placeholder=""
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>


				<div class="control-group">
					<!-- ADDRESS-->
					<label class="control-label" for="address">ADDRESS</label>
					<div class="controls">
						<input type="text" id="address" name="address" placeholder=""
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br />
					</div>
				</div>
				<div class="control-group">
					<!-- HP-->
					<label class="control-label" for="hp">HP</label>
					<div class="controls">
						<input type="text" id="hp" name="hp" placeholder=""
							class="input-xlarge" style="text-align: Left; width: 288px;">
						<br /> <br />
					</div>
				</div>
				<div class="control-group">
					<!-- Button -->
					<div class="controls">
						<a href="#"><button class="btn btn-info btn-sm active"
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