<%@ page contentType="text/html; charset=utf-8"%>
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
		<h2>아이디 찾기</h2>
		<form method="get" name="userinput" action="findIdPro.action" onsubmit="return checkIt();">
			<table width="400" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
				<td width="200">아이디</td>
				<td width="400" align="left">
				<input type="text" name="id" maxlength="15"/>
				</td>
			</tr>
				<tr>
					<td width="200">이메일</td>
					<td width="400" align="left">
						<input type="text" name="email" maxlength="25"/>
					</td>
				</tr>
		    </table>
		    <br/>
			<input type="submit" class="next" value="확인"/>
		</form>
		</center>
	</body>
</html>