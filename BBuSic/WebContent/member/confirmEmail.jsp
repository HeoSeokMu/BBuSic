<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head><title>EMAIL 중복확인</title>
<script language="JavaScript">
 function openConfirmEmail() {
	 var userinput = eval("document.userinput");
	 mailform = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
     // 아이디를 입력했는지 검사
     if (userinput.email.value == "") {
         alert("이메일을 입력하세요");
         return;
     }
     
     if(!mailform.test(userinput.email.value)){
         alert("이메일이 형식에 맞지 않습니다..");
         return false;
      }
 }
 
</script>
</head>
<body bgcolor="${bodyback_c}">

<c:if test="${check == 1}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="${title_c}">
    <td height="39" >${email}이미 사용중인 이메일입니다.</td>
  </tr>
</table>
<form name="userinput" method="post" action="confirmEmail.action" onSubmit="return openConfirmEmail()">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="${value_c}" align="center">
       다른 email을 선택하세요.<p>
       <input type="text" size="10" maxlength="30" name="email">
       <input type="submit" value="중복확인">
    </td>
  </tr>
</table>
</form>
</c:if>

<c:if test="${check == 0}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="${title_c}">
    <td align="center">
      <p>입력하신 ${email} 는 사용하실 수 있는 이메일입니다. </p>
      <input type="button" value="닫기" onclick="setnick()">
    </td>
  </tr>
</table>
</c:if>

</body>
</html>
<script language="javascript">
<!--
	function setnick(){
    	opener.document.userinput.email.value="${email}";
    	opener.document.userinput.email_check.value="check";
		window.close();
	}
		-->
</script>
