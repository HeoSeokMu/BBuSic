<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>회원가입</title>
</head>
<style>
.next {
	background-color: #7eb813;
	color: #ffffff;
	border: 1px #dddddd dashed;
	width: 120px;
	height: 40px;
	text-align: center;
	padding: 3px;
}
	.id{
		background-color:#dddddd;
		border:1px #dddddd dashed;
		text-align:center;
		padding:3px;
	}
</style>
<script language="JavaScript">
	function checkCK() {
		if ("${check}"=="check") {
			alert("비밀번호 변경이 완료되었습니다.");
			window:location="/BBuSic/bbusic.action";
		}
	}
	
	function checkIt() {
		var userinput = eval("document.userinput");
		
		if (!userinput.id.value) {
			alert("아이디을 입력하세요.");
			return false;
		}
		
		if (!userinput.passwd.value) {
			alert("새 비밀번호를 입력하세요.");
			return false;
		}

		if (!userinput.passwd2.value) {
			alert("새 비밀번호 확인을 입력하세요.");
			return false;
		}
		
		if(userinput.passwd.value != userinput.passwd2.value){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	}
</script>
<body onload="checkCK()">
	<center>
		<h2>비밀번호 재설정</h2>
		<p>본인확인 절차가 모두 완료되었습니다. 새로운 비밀번호를 등록해 주시기 바랍니다.</p>
				<table width="850" border="0" cellspacing="0" cellpadding="3" align="center" class="id">
					<tr>
						<td align="left">·영문(대소문자 구분), 특수기호를 혼합하여 비밀번호를 설정하시면, 더욱 안전한 비밀번호를 만드실 수 있습니다.</td>
					</tr>
					<tr>
						<td align="left">·전화번호, 생년월일 등 개인정보와 관련된 숫자 등 다른 사람이 알아낼 수 있는 비밀번호는 사용하지 마세요.</td>
					</tr>
			    </table>
			    <br/>
		<form method="post" name="userinput" action="resetPasswdFinish.action" onsubmit="return checkIt();">
			<table width="400" border="1" cellspacing="0" cellpadding="3"
				align="center">
				<tr>
					<td width="150">아이디</td>
					<td width="200" align="left">
						<input type="hidden" name="id" value="${id}"/>
						<c:out value="${id}"/>
					</td>
				</tr>
				<tr>
					<td width="150">새 비밀번호</td>
					<td width="200" align="left">
						<input type="text" name="passwd" value="${passwd}" size="20" />
					</td>
				</tr>
				<tr>
					<td width="150">새 비밀번호 확인</td>
					<td width="200" align="left">
						<input type="text" name="passwd2" value="${passwd}" size="20" />
					</td>
				</tr>
			</table>
			<br /> <input type="submit" class="next" value="비밀번호 변경" />
			
		</form>
		<br />
	</center>
</body>
</html>