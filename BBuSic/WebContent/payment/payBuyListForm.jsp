<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>뿌숑뮤직 상품구매</title>
		<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
		<link rel="stylesheet" href="css/popup_login.css"></link>
		<link rel="stylesheet" href="css/button.css"></link>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/header_jquery.js"></script>
		
		<script type="text/javascript">
			function buy(name, benefit, amount, sale) {
				if(${session.memId != null}) {
					
					window.location = "payBuyOption.action?pay_name="+name+"&pay_benefit="+benefit+
									  "&amount="+amount+"&sale="+sale;
					
				} else {
					jQuery(function($) {
						var layerWindow = $('.mw_layer');
						var layer = $('#layer');
				
						// Show Hide
						$('.button01').click(function() {
							layerWindow.addClass('open');
						});
						
						$('.button02').click(function() {
							layerWindow.addClass('open');
						});
						
						$('#layer .close').click(function() {
							layerWindow.removeClass('open');
						});
						
						// ESC Event
						$(document).keydown(function(event) {
							if (event.keyCode != 27)
								return true;
							if (layerWindow.hasClass('open')) {
								layerWindow.removeClass('open');
							}
							return false;
						});
				
						// Hide Window
						layerWindow.find('>.bg').mousedown(function(event) {
							layerWindow.removeClass('open');
							return false;
						});
					});
				}
			}
			
			function focusIt() {
				document.inform.id.focus();
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
	    		<table border="1">
					<c:forEach var="pay" items="${paylist}">
						<tr>
							<td>${pay.category}</td>
							<td>${pay.pay_name}</td>
							<td>${pay.pay_benefit}</td>
							<td>정기결제<br/>T멤버십 30% 차감시<br/>30일권</td>
							<td>
								<fmt:formatNumber value="${pay.amount}"/><br/>
								<fmt:formatNumber value="${pay.amount - (pay.amount*(pay.sale/100))}"/><br/>
								<fmt:formatNumber value="${pay.day30amount}"/>
							</td>
							<td>
				 				<input type="button" value="구매" class="button01" onclick="buy('${pay.pay_name}', '${pay.pay_benefit}', '${pay.amount}', '${pay.sale}')"/><br/>
								<input type="button" value="구매" class="button02" onclick="buy('${pay.pay_name}', '${pay.pay_benefit}', '${pay.day30amount}', '${pay.sale}')"/>
								<input type="button" value="선물" class="button02" onclick=""/>
							</td>
						</tr>
					</c:forEach>
				</table>	
				<div class="mw_layer">
					<div class="bg"></div>
					<div id="layer">
						<form name="inform" method="post" action="popupLoginPro.action"	onSubmit="return checkIt();">
							<table width=200 align="center">
								<tr>
									<td colspan="2" bgcolor="#7eb813" class="trTitle">
										<font color="#ffffff" size="5"> <b>로그인</b> </font>
									</td>
								</tr>
								<tr>
									<td>
										<table class="tablepadding">
											<tr>
												<td>
													<input type="text" name="id" class="input" placeholder="아이디" maxlength="10"/>
												</td>
												<td rowspan="2">
													<input type="submit" class="login" name="Submit" value="로그인"/>
												</td>
											</tr>
											<c:if test="${check == 1}">
												<tr>
													<td>
														<font color="red">아이디 or 패스워드가 틀렸습니다.</font>
													</td>
												</tr>
											</c:if>
											<tr>
												<td>
													<input type="password" name="passwd" placeholder="패스워드" class="input" maxlength="10"/>
												</td>
											</tr>
											<tr>
												<td colspan="2" class="lineX">
													<input type="checkbox" name="checkbox" value="on"/><font >자동로그인</font>
												</td>
											</tr>
											<tr>
												<td colspan="3">
													<input type="button" value="회원가입" onclick="javascript:window.location='agreement.action'"/>
												</td>	
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
	    	</div>
			<div id="box3"> 5번 </div>
		</div>
	</body>
</html>