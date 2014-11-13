<%@ page contentType="text/html; charset=UTF-8"%>
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
		
		<style type="text/css">
			.t_line{border-top: 3px solid #CCCCCC; background-color: #EEEEEE}
			.r_line{border-right: 1px solid #CCCCCC; border-bottom: 2px solid #CCCCCC;}
			.b_line{border-bottom: 2px solid #CCCCCC;}
			.a_line{border: 1px solid #CCCCCC;}
			.table1{border:3px solid blue; border-collapse: collapse;}
			table{border-collapse: collapse;}
		</style>
		
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
		    		<c:if test="${session.memId != null}">
		    			<center>
						<form action="" method="post">
							<table width="90%">
								<tr><td align="left">상품구매</td></tr>
								<tr>
									<th class="t_line">상품명</th><th class="t_line">제공 서비스</th><th class="t_line">판매가(부가세 10% 별도)</th><th class="t_line">이용안내</th>
								</tr>
								<tr>
									<td class="r_line"><input type="hidden" name="pay_name"  value="${pay_name}"/>${pay_name}</td>
									<td class="r_line"><input type="hidden" name="pay_benefit"  value="${pay_benefit}"/>${pay_benefit}</td>
									<td class="r_line"><input type="hidden" name="amount"  value="${amount}"/><fmt:formatNumber value="${amount}"/></td>
									<td class="b_line" align="center"><input type="button" name="an" value="이용안내"/></td>
								</tr>
								<tr height="15"><td></td></tr>
								<c:if test="${ sale != 0 }">
									<tr>
										<td colspan="4">
											<table width="100%">
												<tr>
													<td width="800px">
														해당 상품은 T멤버십 30% 추가할인 차감 사용이 가능한 상품입니다.
													</td>
													<td align="right">
														<input type="hidden" name="sale"/><fmt:formatNumber value="${amount * (sale/100)}"/> 원
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr height="15"><td></td></tr>
								</c:if>
								<tr>
									<td colspan="4" class="a_line">
										<br/>
										&nbsp;&nbsp;&nbsp;<b>구매 전 확인해 주세요!</b><br/>
										<font size="2">
										<ul>
											<li><font color="green">무제한 듣기는 PC, 안드로이드폰, 아이폰, 태블릿</font> 등에서 이용 가능합니다.</li>
											<li>다운로드 시 <font color="green">상품 이용기간 동안 재생 가능한 DCF파일로 다운로드되며, 안드로이드폰, 아이폰, 아이패드, DCF파일 지원 MP3 Player 등에서 재생 가능</font>합니다.</li>
											<li><font color="green">PC에서 제공하는 음악/어학 다운로드의 잔여 곡/어학은 다음 달로 이월되지 않습니다.</font></li>
											<li><font color="green">무제한 다운로드</font>를 제공하는 상품의 속성 상 <font color="green">중도 해지 및 이에 따른 환불은 불가능</font>하며, <font color="green">해지 신청 시 다음 결제예정일에 자동 해지완료</font>됩니다.</li>
											<li>결제취소는 결제 후 7일 내 서비스 미 이용 시 가능하며, 고객센터(1566-7727)나 이메일 문의로 신청하세요.</li>
											<li>일부 음원은 음원권리권자와의 계약 또는 요청에 의해 서비스가 제한될 수 있습니다.</li>
											<li><b>매월 정기 결제 시 SMS 등을 통한 별도의 <font color="green">거래내역 통지는 생략됩니다.</font></b><br/><br/></li>
										</ul>
										</font>
										<br/><br/>
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<input type="checkbox" name="Yac_chk1"/> 뿌숑 유료 이용약관 및 안내 내용, DCF파일 지원기기를 확인하였으며 상기 내용에 동의합니다.<br/> 
										<input type="checkbox" name="Yac_chk2"/> 매월 구매일 뿌숑상품 이용금액이 정기결제 되는 것에 동의합니다.
									</td>
								</tr>
								<tr>
									<td height="50"></td>
								</tr>
								<tr>
									<td colspan="4" class="a_line">
										<br/>
										&nbsp;&nbsp;&nbsp;<b>이벤트 안내</b><br/>
										<font size="2">
										<ul>
											<li>3개월 할인 특가 이벤트 참여 고객님을 위한 할인 프로모션으로, 3개월간의 이용 요금을 할인해 드립니다.</li>
											<li>첫 달에서 셋째 달까지 할인가격으로 결제되며, 넷째 달부터는 정상가로 결제됩니다.(VAT 별도)</li>
											<li>상품 이용 중 다른 상품으로 변경하시거나 해지하시면 이후부터는 더 이상 할인 혜택을 받으실 수 없습니다.<br/><br/></li>
										</ul>
										</font>
										
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<input type="checkbox" name="event_chk"/>이벤트 및 결제 안내 내용을 확인하였습니다.<br/> 
									</td>
								</tr>
								<tr>
									<td height="50"></td>
								</tr>
								<tr>
									<td colspan="4">
										정기 결제 방법 선택<br/> 
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%">
											<tr>
												<td align="center"><input type="radio" name="buy_option" value="T_buy"/></td>
												<td>
													<font size="2">SKT T멤버십 할인한도<br/>30% 차감 + SKT 휴대폰</font> 
												</td>
												<td align="center"><input type="radio" name="buy_option" value="SKT_buy"/></td>
												<td>
													<font size="2">휴대폰 SKT</font>
												</td>
												<td align="center"><input type="radio" name="buy_option" value="ALL_buy"/></td>
												<td>
													<font size="2">휴대폰 KT / LG U+ / 알뜰폰</font>
												</td>
											</tr>
										</table>					
									</td>
								</tr>
							</table>
							<input type="submit" value="결제하기"/>
							<input type="button" value="취소하기" onclick="javascript:window.history.go(-1) return false;"/>
						</form>
						</center>
					</c:if>
		    	</div>
	<!--    	<div id="box2_2"> 3번 </div>  -->
			</div>
			<div id="box3"> 5번 </div>
		</div>
	</body>
</html>