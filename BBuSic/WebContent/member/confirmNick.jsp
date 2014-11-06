<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head><title>NICKNAME 중복확인</title>


<body bgcolor="${bodyback_c}">

<c:if test="${check == 1}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="${title_c}">
    <td height="39" >${nickname}이미 사용중인 닉네임입니다.</td>
  </tr>
</table>
<form name="checkForm" method="post" action="confirmNick.action">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="${value_c}" align="center">
       다른 닉네임를 선택하세요.<p>
       <input type="text" size="10" maxlength="12" name="nickname">
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
      <p>입력하신 ${nickname} 는 사용하실 수 있는 닉네임입니다. </p>
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
    	opener.document.userinput.nickname.value="${nickname}";
    	opener.document.userinput.confirm_nick.value="check";
		window.close();
	}
		-->
</script>
