<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/view/color.jspf"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>로그인</title>
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
	}
</script>
	<c:if test="${check == 1}">
		<script>
			alert("패스워드가 틀렸습니다.");
		</script>
	</c:if>

</head>
<body onLoad="focusIt();" bgcolor="${bodyback_c}">
	<c:if test="${session.memId == null}">
		<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
			<form name="inform" method="post" action="loginPro.action"	onSubmit="return checkIt();">
				<tr>
					<td width="300" bgcolor="${bodyback_c}" height="20">&nbsp;</td>
					<td bgcolor="${title_c}" width="100" align="right">아이디</td>
					<td width="100" bgcolor="${value_c}">
					<input type="text" name="id" size="15" maxlength="10"/></td>
				</tr>
				<tr>
					<td rowspan="2" bgcolor="${bodyback_c}" width="300">메인입니다. 
						<input type="checkbox" name="checkbox" value="on"/>자동로그인
					</td>
					<td bgcolor="${title_c}" width="100" align="right">패스워드
					</td>
					<td width="100" bgcolor="${value_c}">
						<input type="password" name="passwd" size="15" maxlength="10"/>
					</td>
				</tr>
				<tr>
					<td colspan="3" bgcolor="${title_c}" align="center">
						<input type="submit" name="Submit" value="로그인"/>
						<input type="button" value="회원가입" onclick="javascript:window.location='Agreement.action'"/>
					</td>	
				</tr>
			</form>
		</table>
	</c:if>








	<c:if test="${session.memId != null}">
		<table width="500" cellpadding="0" cellspacing="0" align="center" border="1">
			<tr>
				<td width="300" bgcolor="${bodyback_c}" height="20">하하하</td>
				<td rowspan="3" bgcolor="${value_c}" align="center"> ${session.memId} 님이 방문하셨습니다 <br/>
						<input type="button" value="로그아웃" onclick="javascript:window.location=logout.action"/>
						<input type="button" value="회원정보변경" onclick="javascript:window.location='modify.jsp'"/>
						<input type="button" value="게시판" onclick="javascript:window.location='../board/list.jsp'"/>
						<input type="button" value="피자" onclick="javascript:window.location='../dominoOrder/addressChoiceForm.jsp'"/>
					</form>
				</td>
			</tr>
			<tr>
				<td rowspan="2" bgcolor="${bodyback_c}" width="300">메인입니다.</td>
			</tr>
		</table>
		</c:if>
</body>
</html>