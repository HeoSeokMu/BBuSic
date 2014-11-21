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

<style>
.next {
	background-color: #7eb813;
	color: #ffffff;
	border: 1px #dddddd dashed;
	width: 70px;
	height: 40px;
	text-align: center;
	padding: 3px;
}
</style>
<script language="JavaScript">
	function checkIt() {
		var userinput = eval("document.userinput");
		
		if (!userinput.id.value) {
			alert("아이디을 입력하세요.");
			return false;
		}
		
		if (!userinput.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!userinput.email.value) {
			alert("이메일을 입력하세요.");
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

<body style="overflow: hidden;">
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
			<a href="findIdForm.action"><img src="member/image/findId.png" name="chart" border="0"/></a>
			<a href="resetPasswdForm.action"><img src="member/image/resetPasswd.png" name="chart" border="0"/></a>
		<div id="box2">
			
			<div id="content">		
				<center>
					<h2>비밀번호 재설정</h2>
					<form method="post" name="userinput" action="resetPasswdPro.action" onsubmit="return checkIt();">
						<table width="400" border="1" cellspacing="0" cellpadding="3"
							align="center">
							<tr>
								<td width="150">아이디</td>
								<td width="200" align="left">
									<input type="text" name="id" size="20" />
								</td>
							</tr>
							<tr>
								<td width="150">이름</td>
								<td width="200" align="left">
									<input type="text" name="name" size="20" />
								</td>
							</tr>
							<tr>
								<td width="150">이메일</td>
								<td width="200" align="left">
									<input type="text" name="email" size="30" />
								</td>
							</tr>
						</table>
						<br /> <input type="submit" class="next" value="확인" />
					</form>
					<br/>
				</center>
			</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>

<body>
	
</body>
</html>