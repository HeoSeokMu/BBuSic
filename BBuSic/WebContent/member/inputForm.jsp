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
			
			userinput.birth.value=userinput.year.value +"/"+ userinput.month.value +"/"+ userinput.date.value;
			
			if (!userinput.id.value) {
				alert("ID를 입력하세요");
				return false;
			}

			if (!userinput.passwd.value) {
				alert("비밀번호를 입력하세요");
				return false;
			}
			if (userinput.passwd.value != userinput.passwd2.value) {
				alert("비밀번호를 동일하게 입력하세요");
				return false;
			}

			if (!userinput.username.value) {
				alert("사용자 이름을 입력하세요");
				return false;
			}
			if (!userinput.jumin1.value || !userinput.jumin2.value) {
				alert("주민등록번호를 입력하세요");
				return false;
			}
		}
	</script>

	<body bgcolor="${bodyback_c}">
		<center>
		<form method="post" action="confirm.action" name="userinput" onSubmit="return checkIt()">
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>회원가입</b></font>
					</td>
				</tr>

				<tr>
					<td width="200">이름</td>
					<td width="400"><input type="text" name="name" size="10" maxlength="13"/></td>
				</tr>
				<tr>
					<td width="200">생년월일</td>
					<td width="200">
						<select name="year">
								<c:forEach var="for" begin="1900" end="2014" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
						<select name="month">
								<c:forEach var="for" begin="1" end="12" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
						<select name="date">
								<c:forEach var="for" begin="1" end="30" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
					</td>
				</tr>
				<input type="hidden" name="birth" value=""/>
				<tr>
					<td width="200">성별</td>
					<td width="400">
					<input type="radio" name="sex"value="남자"/> 남자 
					<input type="radio" name="sex" value="여자"/> 여자</td>
				</tr>
				<tr>
					<td width="200">이메일</td>
					<td width="400"><input type="text" name="email" size="40" maxlength="30"/></td>
				</tr>
				<tr>
					<td width="200">아이디</td>
					<td width="400">
					<input type="text" name="id" size="20" maxlength="10"/>
					</td>
				</tr>
				<tr>
					<td width="200">비밀번호</td>
					<td width="400">
					<input type="passwd" name="passwd" size="20" maxlength="10"/><br/>
					<input type="passwd2" name="passwd2" size="20" maxlength="10"/>
					</td>
				</tr>
				<tr>
					<td width="200">닉네임</td>
					<td width="400">
					<input type="text" name="nickname" size="20" maxlength="10"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center" bgcolor="${value_c}">
					<input type="submit" name="confirm" value="다음단계"/></td>
				</tr>
			</table>
		</form>
		</center>
	</body>
</html>