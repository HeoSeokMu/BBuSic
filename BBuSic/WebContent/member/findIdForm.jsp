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
			
			if (!userinput.name.value) {
				alert("이름를 입력하세요.");
				return false;
			}
		
			if (!userinput.eamil.value) {
				alert("이메일을 입력하세요.");
				return false;
			}
		}
	</script>
	<body>
		<center>
		<form method="get" name="userinput" action="findIdPro.action" onsubmit="return checkIt();">
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>아이디찾기</b></font>
					</td>
				</tr>
				<tr>
					<td width="200">이름</td>
					<td width="400">
						<input type="text" name="name"/>
					</td>
				</tr>
				<tr>
					<td width="200">이메일</td>
					<td width="400">
						<input type="text" name="email"/>
					</td>
				</tr>
		    </table>
		    
			<input type="submit" value="확인"/>
		</form>
		</center>
	</body>
</html>