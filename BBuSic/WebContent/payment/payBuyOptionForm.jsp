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
			li{font-size: 15px;}
			
			.tt_line1{border-top: 3px solid #CCCCCC; background-color: #EEEEEE}
			.tr_line1{border-top: 1px solid #CCCCCC; background-color: #EEEEEE}
			.tb_line1{border-top: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC; background-color: #EEEEEE}
			
			.tt_line2{border-top: 3px solid #CCCCCC;}
			.tr_line2{border-top: 1px solid #CCCCCC;}
			.tb_line2{border-top: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC;}
			
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
			
			function pay_Method(delete_cash, amount, type) {
				var deleteCash = parseInt(delete_cash);
				var Amount = parseInt(amount);
				var form = document.payBuyOptionForm;
				
				if(type == "in"){
					alert("type in");
					form.cash_in.disabled = false;
					form.cash_in.value = 0;
					
					jQuery(function($) {
						$("#cash").text(deleteCash);
						<%--
						$("#add").hide();
						--%>
					});
				} else if(type == "all"){
					alert("type all");
					if(deleteCash >= Amount) {
						form.cash_in.value = Amount;
						
						jQuery(function($) {
							$("#cash").text(deleteCash - Amount);
							<%--
							$("#add").hide();
							--%>
						});
						
					} else if(deleteCash < Amount){
						form.cash_in.value = deleteCash;
						form.cash_in.disabled = true;
						
						jQuery(function($) {
							$("#cash").text(0);
							<%--
							$("#add").show();
							--%>
						});
					}
				}
			}
			
			function cash_keyUp(delete_cash, amount) {
				var form = document.payBuyOptionForm;
				var deleteCash = parseInt(delete_cash);
				var Amount = parseInt(amount);
				var Cash_In = parseInt(form.cash_in.value);
				
				if(form.cash_in.value == "" || form.cash_in.value == null) {
					jQuery(function($) {
						$("#cash").text(deleteCash);
					});
				}
				
				if(deleteCash >= Cash_In) {
					jQuery(function($) {
						$("#cash").text(deleteCash - Cash_In);
					});
				} else if(deleteCash < Cash_In){
					jQuery(function($) {
						$("#cash").text(0);
						form.cash_in.value = deleteCash;
					});
				}
			}
			
			function formChk() {
				var form = document.payBuyOptionForm;
				var Cash_In = parseInt(form.cash_in.value);
				var Money_In = parseInt(form.payment.value);
				var Add_Money = parseInt(form.add_money.value);
				var Amount = parseInt(form.amount.value);
				var Delete_cash = parseInt(form.delete_cash.value);
				var numIn = /^[0-9]*$/;
				alert(form.cash_in.value + " / " + form.add_money.value)
				
				if(form.Yac_chk1.checked == false) {
					alert("서비스 이용안내 내용을 확인해 주세요");
					return false;
				}
				if(form.Yac_chk2.checked == false) {
					alert("정기결제 이용안내 내용을 확인해 주세요");
					return false;
				}
				if(form.event_chk.checked == false) {
					alert("이벤트 동의 안내 내용을 확인해 주세요");
					return false;
				}
				if(!numIn.test(form.cash_in.value)) {
					alert("cash 숫자만 입력이 가능합니다.");
					return false;
				}
				if(!numIn.test(form.add_money.value)) {
					alert("add 숫자만 입력이 가능합니다.");
					return false;
				}
				
				if(form.cashMethod.value == "in") {
					if((Cash_In + Add_Money) > Amount) {
						alert("상품가격보다 크게 입력하셨습니다.");
						form.payment.value = Amount;
						if(Add_Money > Cash_In) {
							if(Cash_In == 0) {
								form.cash_in.value = 0;
								form.add_money.value = Amount;
								jQuery(function($) {
									$("#cash").text(Delete_cash);
								});
							} else {
								form.cash_in.value = Amount - Add_Money;
								jQuery(function($) {
									$("#cash").text(Delete_cash - (Amount - Add_Money));
								});
							}
							
						} else if (Add_Money < Cash_In) {
							if(Add_Money == 0) {
								form.add_money.value = 0;
								form.cash_in.value = Cash_In - (Cash_In - Amount);
								
								jQuery(function($) {
									$("#cash").text(Delete_cash - Cash_In);
								});
							} else {
								if(Cash_In == Amount) {
									form.add_money.value = 0;
									jQuery(function($) {
										$("#cash").text(Delete_cash - Cash_In);
									});	
								} else {
									form.add_money.value = Amount - Cash_In;
									jQuery(function($) {
										$("#cash").text(Delete_cash - Cash_In);
									});	
								}
							}
						}
						
						return false;
					} else if((Cash_In + Add_Money) < Amount) {
						alert("입력하신 금액이 상품가격보다  적습니다.");
						if(Add_Money > Cash_In) {
							form.cash_in.value = Amount - Add_Money;
							
						} else if (Add_Money < Cash_In) {
							form.add_money.value = Amount - Cash_In;
						}
						
						return false;
					}
					form.payment.value = Cash_In + Add_Money;
				} else if(form.cashMethod.value == "all") {
					if((Cash_In + Add_Money) < Amount) {
						alert("추가 금액을 적게 입력하셨습니다.");
						return false;
					} else if((Cash_In + Add_Money) > Amount) {
						alert("추가 금액을 많게 입력하셨습니다.");
						form.add_money.value = Amount - Cash_In;
						return false;
					}
					form.payment.value = Cash_In + Add_Money;
				}
			}
			function bbusic_main() {
				document.bbu.action = "bbusic.action";
				document.bbu.submit();
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
								<li><a href="payBuyList.action?buy_id=${session.memId}"><img src="main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
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
		    		<c:if test="${session.memId != null}">
		    			<center>
		    			<br/><br/>
						<form name = "payBuyOptionForm" action="buyPayment_SendEmailForm.action" method="post" onsubmit="return formChk();">
							<table width="90%">
								<tr><td align="left"><font size="5"><b>상품구매</b></font></td></tr>
								<tr height="15"><td></td></tr>
								<tr>
									<th class="t_line">상품명</th><th class="t_line">제공 서비스</th><th class="t_line">판매가(부가세 10% 별도)</th><th class="t_line">이용안내</th>
								</tr>
								<tr>
									<td class="r_line"><input type="hidden" name="pay_name"  value="${pay_name}"/>${pay_name}</td>
									<td class="r_line"><input type="hidden" name="pay_benefit"  value="${pay_benefit}"/>${pay_benefit}</td>
									<td class="r_line"><input type="hidden" name="amount"  value="${amount}"/><fmt:formatNumber value="${amount}"/></td>
									<td class="b_line" align="center"><input type="button" name="an" value="이용안내" onclick="javascript:window.location='AgreementOfUtilization.action'"/></td>
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
										<ul>
											<li><font color="green">무제한 듣기는 PC, 안드로이드폰, 아이폰, 태블릿</font> 등에서 이용 가능합니다.</li>
											<li>다운로드 시 <font color="green">상품 이용기간 동안 재생 가능한 DCF파일로 다운로드되며, 안드로이드폰, 아이폰, 아이패드, DCF파일 지원 MP3 Player 등에서 재생 가능</font>합니다.</li>
											<li><font color="green">PC에서 제공하는 음악/어학 다운로드의 잔여 곡/어학은 다음 달로 이월되지 않습니다.</font></li>
											<li><font color="green">무제한 다운로드</font>를 제공하는 상품의 속성 상 <font color="green">중도 해지 및 이에 따른 환불은 불가능</font>하며, <font color="green">해지 신청 시 다음 결제예정일에 자동 해지완료</font>됩니다.</li>
											<li>결제취소는 결제 후 7일 내 서비스 미 이용 시 가능하며, 고객센터(1566-7727)나 이메일 문의로 신청하세요.</li>
											<li>일부 음원은 음원권리권자와의 계약 또는 요청에 의해 서비스가 제한될 수 있습니다.</li>
											<li><b>매월 정기 결제 시 SMS 등을 통한 별도의 <font color="green">거래내역 통지는 생략됩니다.</font></b><br/><br/></li>
										</ul>
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
									<td colspan="4">
										<table width="100%">
											<tr>
												<td colspan="2"><b>결제 금액 확인</b></td>
												<td></td>
											</tr>
											<tr>
												<th class="tt_line1">총 결제 금액</th>
												<td class="tt_line2" align="right">
													<input type="text" name="add_money" value="0" size="2"/> 원</span>
												</td>
												<td class="tt_line2"></td>
											</tr>
											<tr>
												<th class="tr_line1">뿌숑 캐쉬 사용</th>
												<td class="tr_line2" align="right">
													<input type="text" name="cash_in" value="0" size="2" onkeyup="cash_keyUp('${delete_cash}','${amount}');"/> 원
													<!-- 
													<span id="add" style="display: none;">&nbsp;+&nbsp;<input type="text" name="add_money" value="0" size="2"/> 원</span>
													 -->
												</td>
												<td class="tr_line2">
													&nbsp;&nbsp;현재보유 뿌숑 캐쉬 <span id="cash">${delete_cash}</span>
													&nbsp;&nbsp;
													<input type="radio" name="cashMethod" value="in" onclick="pay_Method('${delete_cash}', '${amount}', 'in')" checked/>&nbsp;직접 입력
													&nbsp;&nbsp;
													<input type="radio" name="cashMethod" value="all" onclick="pay_Method('${delete_cash}', '${amount}', 'all')"/>&nbsp;전체 사용 
												</td>
											</tr>
											<tr>
												<th class="tr_line1">총 할인 금액</th>
												<td class="tr_line2" align="right">
													<font color="red"></font><input type="hidden" name="sale"/>원
												</td>
												<td class="tr_line2"></td>
											</tr>
											<tr>
												<th class="tb_line1" width="20%">최종 결제 금액</th>
												<td class="tb_line2" align="right" width="30%">
													<font color="red" size="5"><b>${amount}<font color="red" size="2">원</b> (부가세 10% 별도)</font>
												</td>
												<td class="tb_line2"></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="50"></td>
								</tr>
								<tr>
									<td colspan="4" class="a_line">
										<br/>
										&nbsp;&nbsp;&nbsp;<b>이벤트 안내</b><br/>
										<ul>
											<li>3개월 할인 특가 이벤트 참여 고객님을 위한 할인 프로모션으로, 3개월간의 이용 요금을 할인해 드립니다.</li>
											<li>첫 달에서 셋째 달까지 할인가격으로 결제되며, 넷째 달부터는 정상가로 결제됩니다.(VAT 별도)</li>
											<li>상품 이용 중 다른 상품으로 변경하시거나 해지하시면 이후부터는 더 이상 할인 혜택을 받으실 수 없습니다.<br/><br/></li>
										</ul>
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
										<table border="1" width="100%">
											<c:if test="${buy_type == 'regular'}">
												<tr><td colspan="4">정기 결제 방법 선택<br/></td></tr>
												<tr>
													<td>
														<input type="radio" name="buy_option" value="T_buy" checked/>
														<font size="2">SKT T멤버십 할인한도<br/>30% 차감 + SKT 휴대폰</font>
													</td>
													<td align="center">
														<input type="radio" name="buy_option" value="SKT_buy"/>
														<font size="2">휴대폰 SKT</font>
													</td>
													<td align="center">
														<input type="radio" name="buy_option" value="ALL_buy"/>
														<font size="2">휴대폰 KT / LG U+ / 알뜰폰</font>
													</td>
												</tr>
											</c:if>
											
											<c:if test="${buy_type == 'buy'}">
											<tr><td>결제방법 선택 및 결제정보 입력<br/></td></tr>
											<tr>
												<td align="center">
													<input type="radio" name="buy_option" value="SKT_buy" checked/>
													<font size="2">휴대폰 SKT</font>
												</td>
												<td align="center">
													<input type="radio" name="buy_option" value="ALL_buy"/>
													<font size="2">휴대폰 KT / LG U+ / 알뜰폰</font>
												</td>
											</tr>
											</c:if>
										</table> 
									</td>
								</tr>
							</table>
							<input type="hidden" name="buy_id" value="${buy_id}"/>
							<input type="hidden" name="delete_cash" value="${delete_cash}"/>
							<input type="hidden" name="payment" value="0"/>
							<input type="hidden" name="cash_use" value="0"/>
							<input type="hidden" name="download_count" value="${download_count}"/>
							<br></br>
							<input type="submit" class="button03" value="결제하기"/>
							<input type="button" class="button03" value="취소하기" onclick="javascript:window.history.go(-1) return false;"/>
						</form>
						</center>
						<br></br><br></br>
					</c:if>
		    	</div>
	<!--    	<div id="box2_2"> 3번 </div>  -->
			</div>
			<div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
		</div>
	</body>
</html>