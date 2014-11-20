<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 상품내역</title>
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
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
		function bbusic_main() {
			document.bbu.action = "bbusic.action";
			document.bbu.submit();
		}
		
		function loadXMLDoc(type) {
			var xmlhttp;
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari 
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5 
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("payBuy").innerHTML = xmlhttp.responseText;
				}
			};				
			xmlhttp.open("GET", "pay_useForm.action?type="+type, true);				
			xmlhttp.send();
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
	    		<center>
	    		<br/><br/>
		    		<table border="1" width="880px">
		    			<tr>
		    				<td width="25%" align="center">
		    					<a href="pay_useForm.action?id=${session.memId}&type=보유">	보유현황</a>
		    				</td>
		    				<td width="25%" align="center">
		    					<a href="pay_useForm.action?id=${session.memId}&type=결제">	결제내역</a>
		    				</td>
		    			</tr>
		    		</table>
		    	</center>
		    	<br/><br/>
		    	<center>
		    		<c:if test="${type == '보유'}">
						<hr width="880px" size="1" color="gray"/>
						<table width="880px">
							<tr align="center">
								<td width="10%">NO</td>
								<td width="35%">멜론 상품</td>
								<td width="35%">이용 가능 서비스</td>
								<td width="20%">다음결제 안내</td>
							</tr>
						</table>
						
						<hr width="880px" size="3" color="#CC3D3D"/>
							<c:set var="count" value="0" />
							<c:if test="${totalCount < 1}">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<table border="0">
									<tr>
										<td align="left">이용중인 뿌숑 상품이 없습니다.</td>
									</tr>
								</table>
							</c:if>
					
							<c:if test="${totalCount > 0}">
								<table width="880px">
									<c:forEach var="list" items="${list}" varStatus="checkValue">
										<c:if test="${list.pay_benefit != '없음' }">
											<tr align="center" height="50px">																	
												<!-- No -->
												<td width="10%">
													${(currentPage-1) * 10 + (checkValue.index + 1)}
												</td>
												<!--날짜-->
												<td width="35%">
													${list.delete_payname}
												</td>
												<!--내용-->
												<td width="35%">
													${list.delete_paybenefit}
												</td>
												<!--적립금액-->
												<td width="20%">
													${list.buy_option}
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</table>
							</c:if>
							<hr width="880px" size="1" />
							<br/>
							<p>
								<s:property value="pagingHtml" escape="false"/>
							</p>
						</c:if>
						<c:if test="${type == '결제'}">
						<hr width="880px" size="1" color="gray"/>
						<table width="880px">
							<tr align="center">
								<td width="10%">NO</td>
								<td width="30%">멜론 상품</td>
								<td width="30%">결제일</td>
								<td width="15%">결제금액</td>
								<td width="15%">결제방법</td>
							</tr>
						</table>
						
						<hr width="880px" size="3" color="#CC3D3D"/>
							<c:set var="count" value="0" />
							<c:if test="${totalCount < 1}">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<table border="0">
									<tr>
										<td align="left">뿌숑 상품 결제내역이 없습니다.</td>
									</tr>
								</table>
							</c:if>
					
							<c:if test="${totalCount > 0}">
								<table width="880px">
									<c:forEach var="list" items="${list}" varStatus="checkValue">
										<c:if test="${list.pay_benefit != '없음' }">
											<tr align="center" height="50px">																	
												<!-- No -->
												<td width="10%">
													${(currentPage-1) * 10 + (checkValue.index + 1)}
												</td>
												<!--날짜-->
												<td width="30%">
													${list.pay_name}
												</td>
												<!--결제일-->
												<td width="30%">
													<fmt:formatDate value="${list.settlement_date}" type="date" dateStyle="long"/>
												</td>
												<!--결제금액-->
												<td width="15%">
													${list.payment}
												</td>
												<!--결제방법-->
												<td width="15%">
													${list.buy_option}
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</table>
							</c:if>
							<hr width="880px" size="1" />
							<br/>
							<p>
								<s:property value="pagingHtml" escape="false"/>
							</p>
						</c:if>
				</center>
	    	</div>
		</div>
		<div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
	</div>
</body>
</html>