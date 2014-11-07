<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/view/color.jspf"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script type="text/javascript">
		
		function checkIt(){
			if(!document.userinput.email.value){
				alert("이메일을 입력하지 않으셨습니다.");
				document.userinput.eamil.focus();
				return false;
			}
		}
		
		function checkConfirm(userinput){
			if(!userinput.confirmNumber.value){
				alert("인증번호를 입력하지 않으셨습니다.");
				userinput.confirmNumber.focus();
				return false;
			}
			if(userinput.confirmNumber.value != "${num}"){
				alert("인증번호가 다릅니다.");
				document.myform.check.value = "no";
				return false;
			}else{
				alert("인증되었습니다.");
				document.myform.check.value = "check";
			}
			
		}
		
		function checkNum(){
			if(document.myform.check.value != "check"){
				alert("인증번호를 확인하세요");
				return false;
			}
		}
	</script>
</head>
<style>
	.next{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:70px;
		height:40px;
		text-align:center;
		padding:3px;
	}
</style>
<body>
	<center>
	<h2>가입인증</h2>
	<table>
		<tr>
			<td align="left">· 아이디/비밀번호 분실 등 본인여부 확인이 필요한 경우 사용됩니다.</td>
		</tr>
		<tr>
			<td align="left">· 허위 정보를 입력하면 본인확인을 할 수 없어 민원발생 시 도움을 드릴 수 없습니다.</td>
		</tr>
	</table>
	<br/>
	<form method="post" action="sendEmail.action" name="userinput" onSubmit="return checkIt()">
		<input type="hidden" name="pay_name" value="${pay_name}" />
		<input type="hidden" name="pay_benefit" value="${pay_benefit}" />
		<input type="hidden" name="pay_benefit" value="${amount}" />
		<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">	
			<tr>
				<td width="200">이메일</td>
				<td width="400" align="left">
					<input type="text" name="email" value="${email}" size="20" maxlength="25"/>
					<input type="submit" name="send" value="인증번호 발송"/><br/>
					<input type="text" name="confirmNumber" size="15" maxlength="15"/>
					<input type="button" value="인증하기" onclick="return checkConfirm(this.form)"/>
				</td>
			</tr>
		</table>
	</form>
	<br/>
	<form method="post" action="inputPro.action" name="myform" onSubmit="return checkNum()">
		<input type="hidden" name="name" value="${name}" />
		<input type="hidden" name="birth" value="${birth}" />
		<input type="hidden" name="sex" value="${sex}" />
		<input type="hidden" name="email" value="${email}" />
		<input type="hidden" name="id" value="${id}" />
		<input type="hidden" name="passwd" value="${passwd}" />
		<input type="hidden" name="nickname" value="${nickname}" />
		<input type="hidden" name="check" value="no"/>
		<input type="submit" class="next" name="confirm" value="인증완료"/>
	</form>
	</center>
</body>
</html>