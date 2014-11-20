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
.id{
		background-color:#dddddd;
		border:1px #dddddd dashed;
		text-align:center;
		padding:3px;
	}
</style>
<script language="JavaScript">
function checkIt(){
	if(!document.myform.passwd.value){
		alert("비밀번호를 입력하지 않으셨습니다.");
		document.myform.passwd.focus();
		return false;
	}
	if(document.myform.passwd.value != ${passwd}){
		alert("비밀번호가 다릅니다.");
		document.myform.passwd.focus();
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
			<a href="modify.action"><img src="member/image/img_myInform.png" name="chart" border="0"/></a>
			<a href="passwdForm.action"><img src="member/image/img_change_pw.png" name="chart" border="0"/></a>
			<a href="myLoginListForm.action"><img src="member/image/img_login_inform.png" name="chart" border="0"/></a>
			<a href="deleteForm.action"><img src="member/image/img_delete.png" name="chart" border="0"/></a>
		<div id="box2">
			
			<div id="content">		
				<center><br/>
					<h1>기본정보 관리</h1>
					<br/>
					<table width="850" border="0" cellspacing="10" cellpadding="3" align="center" class="id">
						<tr><td></td></tr>
						<tr>
							<td align="left">·본인확인을 위해 비밀번호를 한 번 더 입력해 주세요.</td>
						</tr>
						<tr>
							<td align="left">·항상 비밀번호는 타인에게 노출되지 않도록 주의해 주세요.</td>
						</tr>
						<tr><td></td></tr>
				    </table>
				    <br/>
					<form name="myform" action="modifyForm.action" method="post" onSubmit="return checkIt()">
						<table width="850" border="0" cellspacing="0" cellpadding="3" align="center" class="id">
							<tr>
								<td align="right">
									아이디
								</td>
								<td>
									<c:out value="${session.memId}"/>
								</td>
								<td >
									비밀번호
								</td>
								<td align="left">
									<input type=password name="passwd" size="15" maxlength="12">
								</td>
							</tr>
					    </table><br/>
						      <input type=submit class="next" value="정보수정">
						      <input type="button" class="next" value="취  소" onclick="bbusic_main()">
					</form>
					<br/>
				</center>
			</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>