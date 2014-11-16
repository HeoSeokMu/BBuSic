<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 음악구매</title>
	<link rel="stylesheet" href="css/Mainpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
	
	<script type="text/javascript">
		function idCheck() {
			if(${session.memId == null}) {
				alert("로그인을 해주세요");
				window.location = "bbusic.action";
				return false;
			}
		}
	</script>
</head>

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
					<a href="bbusic.action"><img src="main/bbu_main_img/BBuMainLogo.png" name="bbuMain" border="0"/></a>
				</center>
			</div>
		</div>
	</div>

	<div id="box">
		<div id="box2">
	    	<div id="content">
	    		<form action="buyMusic_confirm.action" method="post">
		    		<center>
		    		<table border="1" width="100%">
		    			<tr>
		    				<td colspan="2">다운로드 요청 <font color="">${m_count} 곡</font>     /     결제 곡 수 <font color="">${m_count} 곡</font></td>
		    			</tr>
		    			<tr><td height="50"></td></tr>
		    			<tr>
		    				<td colspan="2" align="left">
		    					<ul>
			    					<li>개별곡 구매 후 다운로드는 1개 ID당 PC 3대까지 다운로드 받을 수 있습니다.</li>
									<li>다운로드 한 곡은 구매목록에서 1년 동안 재 다운로드 할 수 있습니다.</li>
									<li>일부 음원은 권리사의 요청에 의해 다운로드 제한이 있을 수 있습니다</li>
								</ul>
		    				</td>
		    			</tr>
		    			<tr><td height="50"></td></tr>
		    			<tr>
		    				<td>결제 수단</td>
		    				<td>
		    					<input type="radio" name="payMethod" value="결제"/>결제
		    					<input type="radio" name="payMethod" value="캐쉬"/>캐쉬
		    				</td>
		    			</tr>
		    			<tr>
		    				<td>구매자</td>
		    				<td><input type="text" name="music_id" value="${music_id}"/>${music_id}</td>
		    			</tr>
		    			<tr>
		    				<td>구매 음악</td>
		    				<td><input type="text" name="title" value="${title}"/>${title}</td>
		    			</tr>
		    			<tr>
		    				<td>가수명</td>
		    				<td><input type="text" name="singer" value="${singer}"/>${singer}</td>
		    			</tr>
		    			<tr>
		    				<td>앨범명</td>
		    				<td><input type="text" name="album" value="${album}"/>${album}</td>
		    			</tr>
		    		</table>
		    		</center>
	    		</form>
	    	</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>