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

<script type="text/javascript">
function checkIt() {
	if ("${check}"=="check") {
		alert("이메일을 전송하였습니다. 아이디를 확인해주세요.");
		return false;0
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

<body style="overflow: hidden;" onLoad="return checkIt();">
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
					<h2>아이디 찾기</h2>
						<c:if test="${subId != null}">
							<p>입력하신 정보와 일치하는 아이디 목록 입니다.</p>
							<table width="400" border="0" cellspacing="0" cellpadding="3" align="center" class="id">
								<tr>
									<td align="left"><c:out value="아이디 : ${subId}***"/></td> <td align="right">가입일 : ${date}</td>
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
						  	<form method="post" action="sendID.action" name="userinput">
						  		<input type="hidden" name="subId" value="${subId}"/>
						  		<input type="hidden" name="date" value="${date}"/>
						  		<input type="hidden" name="id" value="${fullId}"/>
						  		<input type="hidden" name="email" value="${email}"/>
								<input type="submit" class="next" value="아이디 뒷자리 Email로 받기"/>&nbsp;
								<input type="button" class="next" style="width: 120px" value="로그인하러가기" onclick="javascript:window.location='bbusic.action'"/>
							</form>
							
						</c:if>
						<c:if test="${subId == null}">
							입력하신 정보와 일치하는 아이디가 없습니다.<br/><br/>
							<input type="button" class="next" style="width: 100px" value="아이디 찾기" onclick="javascript:window.location='findIdForm.action'"/>
							<input type="button" class="next" style="width: 80px" value="회원가입" onclick="javascript:window.location='agreement.action'"/>
							<br/>
						</c:if>
						<br/>
					</center>
			</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>
<script>
	
	
</script>

	<body >
		
	</body>
</html>