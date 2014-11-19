<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 메인</title>
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
</head>

<script language="JavaScript">
	function successMOD(){
		if ( "${check}" == "check"){
			alert("새 비밀번호 변경이 완료 되었습니다.");
		}
	}
	
	function checkIt() {
		
		var userinput = eval("document.userinput");
		
		if (!userinput.oldPasswd.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
	
		if (userinput.oldPasswd.value != "${passwd}") {
			alert("현재 비밀번호를 잘못입력했습니다.");
			return false;
		}
		
		if (!userinput.Passwd.value) {
			alert("새 비밀번호를 입력하세요.");
			return false;
		}
		
		if (!userinput.Passwd2.value) {
			alert("새 비밀번호를 입력하세요.");
			return false;
		}
		
		if (userinput.passwd.value != userinput.passwd2.value) {
			alert("새 비밀번호를 동일하게 입력하세요.");
			return false;
		}
		
		if (userinput.oldPasswd.value == userinput.passwd.value) {
			alert("현재 비밀번호와 새 비밀번호가 동일합니다.");
			return false;
		}
	}
	
	function idCheck() {
		if(${session.memId == null}) {
			alert("로그인을 해주세요");
			window.location = "bbusic.action";
			return false;
		}
	}
	function bbusic_main() {
        document.bbu.action = "bbusic.action";
        document.bbu.submit();
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

<body style="overflow: hidden;" onload="successMOD()">
	<div id="box">
      <div id="header">
         <div id="header_1">
            <ul class="menu">
               <li><a href="ChartBoard.action?category=chart"><img src="main/bbu_main_img/chart.png" name="chart" border="0" class="rollover"/></a></li>
               <li><a href="NewChartBoard.action?category=new"><img src="main/bbu_main_img/new.png"  name="new" border="0" class="rollover"/></a></li>
   
               <li><a href="GenreChartBoard.action?category=genre"><img src="main/bbu_main_img/genre.png" name="genre" border="0" class="rollover"/></a>
                  <ul class="sub">
                     <li><a href="GenreChartBoard.action?category=genre&type=dance"><img src="main/bbu_main_img/dance.png" name="dance" border="0" class="rollover"/></a></li>
                     <li><a href="GenreChartBoard.action?category=genre&type=balad"><img src="main/bbu_main_img/balad.png" name="balad" border="0" class="rollover"/></a></li>
                  </ul>
               </li>
               <li>
                  <a href="#"><img src="main/bbu_main_img/payment.png" name="payment_buy" class="rollover" border="0"/></a>
                  <ul class="sub">
                     <li><a href="payBuyList.action"><img src="main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
                     <li><a href="cashCharge.action?my_id=${session.memId}" onclick="return idCheck();"><img src="main/bbu_main_img/cash.png" name="cash" border="0" class="rollover"/></a></li>
                  </ul>
               </li>
            </ul>
         </div>
        <div id="header_2">
			<center>
				<form name="bbu" method="post">
					<input type="hidden" name="id" value="${session.memId}"/>
 					<a href="#"><img src="main/bbu_main_img/BBuMainLogo.png" name="bbuMain" border="0" onclick="bbusic_main()"/></a>
				</form>
			</center>
		</div>
      </div>
   </div>

	<div id="box">
			<a href="findIdForm.action"><img src="member/image/findId.png" name="chart" border="0"/></a>
			<a href="resetPasswdForm.action"><img src="member/image/resetPasswd.png" name="chart" border="0"/></a>
		<div id="box2">
			<div id="content">		
				<center>
					<form method="post" name="userinput" action="passwdPro.action" onsubmit="return checkIt();">
						<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
							<tr>
								<td colspan="2" height="39" align="center" bgcolor="${value_c}">
									<font size="+1"><b>비밀번호 변경</b></font>
								</td>
							</tr>
							<tr>
								<td width="200">아이디</td>
								<td width="400">
									<c:out value="${id}"/>
									<input type="hidden" name="id" value="${id}"/>
									<input type="hidden" name="check"/>
								</td>
							</tr>
							<tr>
								<td width="200">현재 비밀번호</td>
								<td width="200">
									<input type="password" name="oldPasswd"/>
								</td>
							</tr>
							<tr>
								<td width="200">새 비밀번호</td>
								<td width="400">
									<input type="password" name="passwd"/>
								</td>
							</tr>
							<tr>
								<td width="200">새 비밀번호 확인</td>
								<td width="400">
									<input type="password" name="passwd2"/>
								</td>
							</tr>
					    </table>
					    
						<input type="submit" value="비밀번호 변경"/>
					</form>
					</center>
				</div>
			</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>
	
	<body onload = "successMOD()">
		<center>
		<form method="get" name="userinput" action="passwdPro.action" onsubmit="return checkIt();">
			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td colspan="2" height="39" align="center" bgcolor="${value_c}">
						<font size="+1"><b>비밀번호 변경</b></font>
					</td>
				</tr>
				<tr>
					<td width="200">아이디</td>
					<td width="400">
						<c:out value="${id}"/>
						<input type="hidden" name="id" value="${id}"/>
						<input type="hidden" name="check"/>
					</td>
				</tr>
				<tr>
					<td width="200">현재 비밀번호</td>
					<td width="200">
						<input type="password" name="oldPasswd"/>
					</td>
				</tr>
				<tr>
					<td width="200">새 비밀번호</td>
					<td width="400">
						<input type="password" name="passwd"/>
					</td>
				</tr>
				<tr>
					<td width="200">새 비밀번호 확인</td>
					<td width="400">
						<input type="password" name="passwd2"/>
					</td>
				</tr>
		    </table>
		    
			<input type="submit" class="next" value="비밀번호 변경"/>
		</form>
		</center>
	</body>
</html>