<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
</head>

<body style="overflow: hidden;">
	<div id="box">
		<div id="header">
			<ul class="menu">
				<li><a href="ChartBoard.action?category=chart"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/chart.png" name="chart" border="0" class="rollover"/></a></li>
				<li><a href="NewChartBoard.action?category=new"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/new.png"  name="new" border="0" class="rollover"/></a></li>
						<li><a href="GenreChartBoard.action?category=genre"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/genre.png" name="genre" border="0" class="rollover"/></a>
					<ul class="sub">
						<li><a href="GenreChartBoard.action?category=genre&type=dance"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/dance.png" name="dance" border="0" class="rollover"/></a></li>
						<li><a href="GenreChartBoard.action?category=genre&type=balad"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/balad.png" name="balad" border="0" class="rollover"/></a></li>
					</ul>
				</li>
				<li>
					<a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/payment.png" name="payment_buy" class="rollover" border="0"/></a>
					<ul class="sub">
						<li><a href="payBuyList.action"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
						<li><a href="cashCharge.action"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/cash.png" name="cash" border="0" class="rollover"/></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
		
	<div id="box">
		<div id="box2">
	    	<div id="content">
	    		<center>
		    		<h1>
		    			캐쉬가 정상적으로 충전되었습니다.<br/>
		    			5초뒤 메인으로 이동됩니다.
		    			${myinfo_DTO.my_id}    ${myinfo_DTO.cash}
		    		</h1>
					<meta http-equiv="Refresh" content="5;url=bbusic.action?pay_id=${myinfo_DTO.my_id}&cash=${myinfo_DTO.cash}">
				</center>
	    		<br/><br/>
	   		</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>