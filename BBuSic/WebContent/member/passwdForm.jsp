<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>회원가입</title>
	<script language="JavaScript">
		function successMOD(){
			if ( "${check}" == "check"){
				alert("새 비밀번호 변경이 완료 되었습니다.");
			}
		}
		
		function checkIt() {
			
			var userinput = eval("document.userinput");
			
			if (!userinput.oldPasswd.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
		
			if (userinput.oldPasswd.value != "${passwd}") {
				alert("현재 비밀번호를 잘못입력했습니다.");
				return false;
			}
			
			if (!userinput.Passwd.value) {
				alert("새 비밀번호를 입력하세요.");
				return false;
			}
			
			if (!userinput.Passwd2.value) {
				alert("새 비밀번호를 입력하세요.");
				return false;
			}
			
			if (userinput.passwd.value != userinput.passwd2.value) {
				alert("새 비밀번호를 동일하게 입력하세요.");
				return false;
			}
			
			if (userinput.oldPasswd.value == userinput.passwd.value) {
				alert("현재 비밀번호와 새 비밀번호가 동일합니다.");
				return false;
			}
		}
	</script>
	<body onload = "successMOD()">
		<center>
		<form method="get" name="userinput" action="passwdPro.action" onsubmit="return checkIt();">
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>비밀번호 변경</b></font>
					</td>
				</tr>
				<tr>
					<td width="200">아이디</td>
					<td width="400">
						<c:out value="${id}"/>
						<input type="hidden" name="id" value="${id}"/>
						<input type="hidden" name="check"/>
					</td>
				</tr>
				<tr>
					<td width="200">현재 비밀번호</td>
					<td width="200">
						<input type="password" name="oldPasswd"/>
					</td>
				</tr>
				<tr>
					<td width="200">새 비밀번호</td>
					<td width="400">
						<input type="password" name="passwd"/>
					</td>
				</tr>
				<tr>
					<td width="200">새 비밀번호 확인</td>
					<td width="400">
						<input type="password" name="passwd2"/>
					</td>
				</tr>
		    </table>
		    
			<input type="submit" value="비밀번호 변경"/>
		</form>
		</center>
	</body>
</html>