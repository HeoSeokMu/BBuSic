<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		
		<style>
			.button01 {
				background-color:#000000;
				color:#ffffff;
				width:100%;
				height:40px;
				border:1px #dddddd dashed;
				text-align:center;
				padding:3px;
			}
			
			.button02 {
				background-color:#000000;
				color:#ffffff;
				border:1px #dddddd dashed;
				text-align:center;
				padding:3px;
			}
			
			.login{
				background-color:#7eb813;
				color:#ffffff;
				border:1px #dddddd dashed;
				width:70px;
				height:60px;
				text-align:center;
				padding:3px;
			}
			.trTitle {
				height:15px;
			}
			.input{
				size: 15px;
			}
			
			.lineX {
				border-bottom: 1px solid #dddddd;
			}
			.tablepadding {
				padding-left: 15px;
				padding-right: 15px;
			}
			
			/* UI Object */
			html,body {
				height: 100%;
				margin: 0
			}
			
			.mw_layer {
				display: none;
				position: fixed;
				_position: absolute;
				top: 0;
				left: 0;
				z-index: 10000;
				width: 100%;
				height: 100%
			}
			
			.mw_layer.open {
				display: block
			}
			
			.mw_layer .bg {
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: #000;
				opacity: .5;
				filter: alpha(opacity = 50)
			}
			
			#layer {
				position: absolute;
				top: 50%;
				left: 50%;
				width: 400px;
				height: 180px;
				margin: -150px 0 0 -194px;
				padding: 28px 28px 0 28px;
				border: 2px solid #555;
				background: #fff;
				font-size: 12px;
				font-family: Tahoma, Geneva, sans-serif;
				color: #767676;
				line-height: normal;
				white-space: normal
			}
			/* //UI Object */
		</style>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
			function buy(name, benefit, amount, sale) {
				if(${session.memId != null}) {
					jQuery(function($) {
						$('.button01').each()(function(){
							$('.button01').click()(function(){
								$("#content").load("payBuyOption.action?pay_name="+name+"&pay_benefit="+benefit+
										  		   "&amount="+amount+"&sale="+sale);
							});
						});
					});
				
					<!--
					window.location = "payBuyOption.action?pay_name="+name+"&pay_benefit="+benefit+
									  "&amount="+amount+"&sale="+sale;
					-->
					
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
				window.close();
			}
		</script>
		
		<c:if test="${check == 1}">
		<script>
			alert("패스워드가 틀렸습니다.");
		</script>
	</c:if>
	</head>
	
	<body>
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
	</body>
</html>