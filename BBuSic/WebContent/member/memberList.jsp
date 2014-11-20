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

<style type="text/css">
	.next{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:70px;
		height:40px;
		text-align:center;
		padding:3px;
</style>

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
		<div id="box2">
			<div id="content">
		<center>
			<h2>회원정보</h2>

			<table border="1" cellspacing="0" cellpadding="2" align="center">
				<tr>
					<td width="600" align="center">아이디</td>
					<td width="500" align="center">이름</td>
					<td width="800" align="center">이메일</td>
					<td width="500" align="center">닉네임</td>
					<td width="1000" align="center">가입일자</td>
					<td width="400" align="center">캐쉬</td>
					<td width="600"  align="center">상품구매내역</td>
				</tr>
  				
				<c:forEach items="${list}" var="dt">
					<tr>
						<td width="600" align="center">${dt.id}</td>
						<td width="500" align="center">${dt.name}</td>
						<td width="800" align="center">${dt.email}</td>
						<td width="500" align="center">${dt.nickname}</td>
						<td width="1000" align="center">${dt.regdate}</td>
						<td width="400" align="center">${dt.delete_cash}</td>
						<td width="600" align="center"><a href=".action?id=${dt.id}">상품구매내역</a></td>
					</tr>
				</c:forEach>

			</table>
			<br/>
			<input type="button" class="next" value="멜론홈" onclick="javascript:window.location='bbusic.action'"/>
		</form>
		</center>
		<br/>
			</div>
		</div>
		<div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
	</div>
</body>
</html>