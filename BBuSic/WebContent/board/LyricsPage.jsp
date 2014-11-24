<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>

	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
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
	    	<div id="content"></div>
	<div style="font-weight:bold; font-size:24px; line-height:30px; font-family:"맑은 고딕", "Malgun Gothic","돋움", Dotum,"Apple Gothic", sans-serif;0 letter-spacing:-2px;">앨범 정보</div>
	<br /><br />
	<c:if test="${albumInfo.name == null}">
		<table style="width: 880px;height: 290px" border="1" rules="none">
			<tr>
				<td align="center">
					등록된 정보가 없습니다.
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${albumInfo.name != null}">
	<table style="width: 880px;height: 290px" border="1" rules="none">
		<tr>
			<td rowspan="7" width="250px"  align="center">
				<table style="width: 200px;height: 220px" border="1">
					<tr>
						<td>
							<img src="/BBusic/upload/${imagePath}" width="200px" height="220px" />
						</td>
					</tr>
				</table>
					<input type="button" value="앨범듣기" onclick="" />
					<input type="button" value="다운로드" onclick="" />
			</td>
			<td width="20px">
			</td>
			<td width="630px" height="45px" colspan="2">
				<font size="6"><strong>${albumInfo.name}</strong></font>
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				아티스트
			</td>
			<td height="1px">
				${albumInfo.singer}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				발매일
			</td>
			<td height="1px">
				${albumInfo.year}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				발매사
			</td>
			<td height="1px">
				${albumInfo.publisher}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				기획사
			</td>
			<td height="1px">
				${albumInfo.entertain}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				장르
			</td>
			<td height="1px">
				${albumInfo.genre}
			</td>
		</tr>
		<tr>
			<td colspan="3" height="30px">
			</td>
		</tr>
	</table>
	</c:if>
	<br />
	<br />
	<font size="5"><strong>가사</strong></font>
	<br />
	<hr width="880px" size="1" color="gray" align="left" />
	<br />
	<c:if test="${lyrics == null}">
		가사 정보가 없습니다
	<br /><br />
	</c:if>
	<c:if test="${lyrics != null}">
		${lyrics}
	</c:if>
	<br />
	<hr width="880px" size="1" color="gray" align="left" />
						 </div>
      <div id="box3"></div>
   </div>
</body>
</html>