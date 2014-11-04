<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/view/color.jspf"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>회원탈퇴</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
	function begin(){
		document.myform.passwd.focus();
	}
		
	function checkIt(){
		if(!document.myform.passwd.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.myform.passwd.focus();
			return false;
		}
		if(document.myform.passwd.value != "${passwd}"){
			alert("비밀번호가 다릅니다.");
			document.myform.passwd.focus();
			return false;
		}
	}

   </script>
</head>
<BODY onload="begin()">
<form name="myform" action="deletePro.action" method="post" onSubmit="return checkIt()">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  
  <TR height="30">
    <TD colspan="2" align="middle" bgcolor="${title_c}">
	  <font size="+1" ><b>회원 탈퇴</b></font></TD></TR>
  
  <TR height="30">
    <TD width="110" bgcolor="${value_c}" align=center>비밀번호</TD>
    <TD width="150" align=center>
      <INPUT type=password name="passwd" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle" bgcolor="${value_c}" >
      <INPUT type=submit value="회원탈퇴"> 
      <input type="button" value="취  소" onclick="javascript:window.location='loginForm.action'"></TD></TR>
</TABLE>
</form>
</BODY>
</HTML>
