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
		if("${cooId}"==""){
			document.inform.loginCheck.checked = false;
		}else{
			document.inform.loginCheck.checked = true;
			
		}
		if("${check}"==1){
			alert("아이디 또는 패스워드가 틀렸습니다.");
		}else if("${check}"=="delete"){
			alert("회원탈퇴 되셨습니다.");
		}else{
			document.inform.id.focus();
		}
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
	}
	function bbusic_main() {
        document.bbu.action = "bbusic.action";
        document.bbu.submit();
     }

</script>
</head>
<body onLoad="focusIt();">
	<c:if test="${session.memId == null}">
		<form name="inform" method="post" action="loginPro.action"	onSubmit="return checkIt();">
			<table class="tablepadding" align="center" cellspacing="10">
				<tr>
					<td>
						<input type="text" name="id" value="${cooId}" class="input" placeholder="아이디" maxlength="10"/>
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
						<font style="font-size: 8pt">
						<input type="checkbox" name="loginCheck" value="check"/>아이디저장
						&nbsp;<a href="findIdForm.action" title="아이디/비밀번호 찾기" style="color: gray;">아이디/비밀번호 찾기</a>
						&nbsp;<a href="agreement.action" title="회원가입" style="color: gray;"><strong>회원가입</strong></a>
						</font>
					</td>
				</tr>
			</table>
		</form>
	</c:if>

	<c:if test="${session.memId != null}">
		<table class="tablepadding" cellspacing="10" style="height: 135px;" align="center">
			<tr>
				<td>
					<strong><a href="javascript:window.location='modify.action'" style="color: black;"><c:out value="${session.memId}"/></a>님</strong>
				</td>
				<td>
					<a href="javascript:window.location='modify.action'" style="color: gray;">내정보</a>
					<a href="javascript:window.location='logout.action'" style="color: gray;">로그아웃</a>
					<br/>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
	 								<c:if test="${myinfo_DTO.delete_payname == null}">보유한 상품이 없습니다.</c:if>
					   				<c:if test="${myinfo_DTO.delete_payname != null}">${myinfo_DTO.delete_payname}</c:if>
					<a href="#"><img value="상품구매" name="payment" /></a><br/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				캐쉬 
	 					<c:if test="${myinfo_DTO.delete_cash == null}">0</c:if>
					   	<c:if test="${myinfo_DTO.delete_cash != null}">${myinfo_DTO.delete_cash}</c:if>
				</td>
			</tr>
		</table>
	</c:if>
</body>
</html>