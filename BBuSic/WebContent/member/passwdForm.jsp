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
                     <li><a href="payBuyList.action?buy_id=${session.memId}"><img src="main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
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
		<center>
			<a href="modify.action"><img src="member/image/img_myInform.png" name="chart" border="0"/></a>
			<a href="passwdForm.action"><img src="member/image/img_change_pw.png" name="chart" border="0"/></a>
			<a href="myLoginListForm.action"><img src="member/image/img_login_inform.png" name="chart" border="0"/></a>
			<a href="deleteForm.action"><img src="member/image/img_delete.png" name="chart" border="0"/></a>
			<a href="cash_useForm.action?id=${session.memId}"><img src="member/image/cash.png" name="chart" border="0"/></a>
			<a href="pay_useForm.action?id=${session.memId}&type=보유"><img src="member/image/payment.png" name="chart" border="0"/></a>
		</center>
		<div id="box2">
			<div id="content">		
				<center><br/>
				<h1>비밀번호 변경</h1>
					<br/>
					<table width="850" border="0" cellspacing="10" cellpadding="3" align="center" class="id">
						<tr><td></td></tr>
						<tr>
							<td align="left">·주기적으로 비밀번호 변경은 개인정보를 안전하게 보호하고, 개인정보도용 피해를 예방합니다.</td>
						</tr>
						<tr>
							<td align="left">·전화번호, 생년월일 등 개인정보와 관련된 숫자 등 다른 사람이 알아낼 수 있는 비밀번호는 사용하지 마세요.</td>
						</tr>
						<tr>
							<td align="left">·영문(대소문자 구분), 특수기호를 혼합하여 비밀번호를 설정하시면, 더욱 안전한 비밀번호를 만드실 수 있습니다.</td>
						</tr>
						<tr><td></td></tr>
				    </table>
				    <br/>
					<form method="post" name="userinput" action="passwdPro.action" onsubmit="return checkIt();">
						<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
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
					    <br/>
						<input type="submit" class="next" value="비밀번호 변경"/>
					</form>
					<br/>
					</center>
				</div>
			</div>
		<div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
	</div>
</body>
</html>