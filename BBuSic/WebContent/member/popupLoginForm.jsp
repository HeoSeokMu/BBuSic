<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>로그인</title>

<style>
	.login{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:70px;
		height:60px;
		text-align:center;
		padding:3px;
	}
	.trTitle {
		height:15px;
	}
	.input{
		size: 15px;
	}
	
	.lineX {
		border-bottom: 1px solid #dddddd;
	}
	.tablepadding {
		padding-left: 15px;
		padding-right: 15px;
	}
</style>
</head>

<script language="javascript">
	function focusIt() {
		document.inform.id.focus();
	}

	function checkIt() {
		inputForm = eval("document.inform");
		if (!inputForm.id.value) {
			alert("아이디를 입력하세요..");
			inputForm.id.focus();
			return false;
		}
		if (!inputForm.passwd.value) {
			alert("패스워드를 입력하세요..");
			inputForm.passwd.focus();
			return false;
		}
		return ture;
		window.close();
	}
</script>
	<c:if test="${check == 1}">
		<script>
			alert("패스워드가 틀렸습니다.");
		</script>
	</c:if>
</head>

<body onLoad="focusIt();">
	<c:if test="${session.memId == null}">
		<form name="inform" method="post" action="popupLoginPro.action"	onSubmit="return checkIt();">
			<table width=200 align="center">
				<tr>
					<td colspan="2" bgcolor="#7eb813" class="trTitle">
						<font color="#ffffff" size="5"> <b>로그인</b> </font>
					</td>
				</tr>
				<tr>
					<td>
						<table class="tablepadding">
							<tr>
								<td>
									<input type="text" name="id" class="input" placeholder="아이디" maxlength="10"/>
								</td>
								<td rowspan="2">
									<input type="submit" class="login" name="Submit" value="로그인"/>
								</td>
							</tr>
							<tr>
								<td>
									<input type="password" name="passwd" placeholder="패스워드" class="input" maxlength="10"/>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="lineX">
									<input type="checkbox" name="checkbox" value="on"/><font >자동로그인</font>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<input type="button" value="회원가입" onclick="javascript:window.location='agreement.action'"/>
								</td>	
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</c:if>
</body>
</html>