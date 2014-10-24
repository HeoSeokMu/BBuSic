<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/view/color.jspf"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<script>

	

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<title>회원가입</title>
</head>
<body>
<center>
<form method="post" action="inputPro.action" name="userinput" onSubmit="return checkIt()">
	<input type="hidden" name="name" value="${name}" />
	<input type="hidden" name="birth" value="${birth}" />
	<input type="hidden" name="sex" value="${sex}" />
	<input type="hidden" name="email" value="${email}" />
	<input type="hidden" name="id" value="${id}" />
	<input type="hidden" name="passwd" value="${passwd}" />
	<input type="hidden" name="nickname" value="${nickname}" />
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>가입인증</b></font>
					</td>
				</tr>

				<tr>
					<td width="200">이메일</td>
					<td width="400">
					<input type="text" name="confirmEmail" value="${birth}" size="20" maxlength="25"/>
					<input type="button" name="send" value="인증번호 발송"/><br/>
					<input type="text" name="confirmNumber" size="15" maxlength="15"/>
					<input type="button" name="confirm" value="인증하기"/>
					</td>
				</tr>
			</table>
			<input type="submit" name="confirm" value="가입완료"/>
		</form>
		</center>
</body>
</html>