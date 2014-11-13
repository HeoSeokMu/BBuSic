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
<script>
	function checkIt() {
		if ("${check}"=="check") {
			alert("이메일을 전송하였습니다. 아이디를 확인해주세요.");
			return false;0
		}
	}
</script>
<style>
	.next{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:200px;
		height:40px;
		text-align:center;
		padding:3px;
	}
	.id{
		background-color:#dddddd;
		border:1px #dddddd dashed;
		width:400px;
		height:40px;
		text-align:center;
		padding:3px;
	}
</style>
	<body onLoad="return checkIt();">
		<center>
		<h2>아이디 찾기</h2>
			<c:if test="${date != null}">
				<p>비밀번호 재설정은 회원정보에 등록된 이메일 인증이 필요합니다.</p>
				<table width="400" border="0" cellspacing="0" cellpadding="3" align="center" class="id">
					<tr>
						<td align="left"><c:out value="아이디 : ${id}"/></td> <td align="right">가입일 : ${date}</td>
					</tr>
			    </table><br/>
			    <table border="0">
			    	<tr>
			    		<td align="left">
						    · 입력하신 정보와 일치하는 아이디 목록 입니다.<br/>
						    · 보안을 위해 아이디는 무조건 8자리로 표기되며 끝 4자리는 *로 표시됩니다.<br/>
						    · 아이디 선택 후 회원정보에 등록된 이메일 인증을 거쳐 아이디 뒷자리를 확인 할 수 있습니다.<br/>
			    		</td>
			    	</tr>			    	
			    </table>
			    <br/>
			    <table>
				  	<form method="post" action="sendEmail.action" name="userinput">
				  		<tr>
							<td width="200">이메일</td>
							<td width="400" align="left">
							<input type="text" name="email" value="${email}" size="20" maxlength="25"/>
							<input type="submit" name="send" value="인증번호 발송"/><br/>
							<input type="text" name="confirmNumber" size="15" maxlength="15"/>
							<input type="button" value="인증하기" onclick="return checkConfirm(this.form)"/>
							</td>
						</tr>
					</form>
				</table>
				
			</c:if>
			<c:if test="${date == null}">
				입력하신 정보와 일치하는 아이디가 없습니다.<br/><br/>
				<input type="button" class="next" style="width: 100px" value="아이디 찾기" onclick="javascript:window.location='findIdForm.action'"/>
			</c:if>
		</center>
	</body>
</html>