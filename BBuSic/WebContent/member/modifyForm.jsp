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
	
		function checkIt() {	
			var userinput = eval("document.userinput");

			if (!userinput.passwd.value) {
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			if (!userinput.email.value) {
				alert("이메일을 입력하세요");
				return false;
			}
			
			if (!userinput.nickname.value) {
				alert("닉네임을 입력하세요");
				return false;
			}
		}
		
		function reCheck(){
			if(!document.userinput.id_check.value) {
				document.userinput.id_check.value == null;
			}
		}
		
		 function openConfirmNick(userinput) {
		        // 아이디를 입력했는지 검사
		        if (userinput.nickname.value == "") {
		            alert("닉네임을 입력하세요");
		            return;
		        }
		        
		        if (userinput.nickname.value == ${mDTO.nickname}) {
		            alert("변경사항이 없습니다.");
		            return;
		        }
		        
		        // url과 사용자 입력 id를 조합합니다.
		        url = "/PooSic/confirmNick.action?nickname=" + userinput.nickname.value;
		        
		        // 새로운 윈도우를 엽니다.
		        open(url, "confirmNick", 
		        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
		    }
		
	</script>
	<body>
		<center>
		<form method="post" action="modifyPro.action" name="userinput" onSubmit="return checkIt()">
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>회원가입</b></font>
					</td>
				</tr>

				<tr>
					<td width="200">아이디</td>
					<td width="400">
						<c:out value="${mDTO.id}"/>
						<input type="hidden" name="id" value="${mDTO.id}"/>
					</td>
				</tr>
				<tr>
					<td width="200">닉네임</td>
					<td width="200">
						<input type="text" name="nickname" value="${mDTO.nickname}"/>
						<input type="button" name="confirm_nick" value="중복확인" onclick="openConfirmNick(this.form)"/>
					</td>
				</tr>
				<tr>
					<td width="200">성별</td>
					<td width="400">
						<c:out value="${mDTO.sex}"/>
					</td>
				</tr>
				<tr>
					<td width="200">생년월일</td>
					<td width="400">
						<c:out value="${mDTO.birth}"/>
					</td>
				</tr>
				<tr>
					<td width="200">이메일</td>
					<td width="400">
						<input type="text" name="email" value="${mDTO.email}"/>
					</td>
				</tr>
			</table>
			<input type="submit" name="soaka" value="정보수정"/>
		</form>
		</center>
	</body>
</html>
