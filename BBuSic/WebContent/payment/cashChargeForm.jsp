<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>뿌숑뮤직 캐쉬구매</title>
		
		<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
		<link rel="stylesheet" href="css/popup_login.css"></link>
		<link rel="stylesheet" href="css/button.css"></link>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/header_jquery.js"></script>
		
		<script type="text/javascript">
			
			function moneyIn_sel() {
				$($("input[name='chargeMoney_sel']:radio[value='sel_in']")).click(function(){
					$("select[name='moneyIn_Sel']").show();
					$("input[name='moneyIn_Text']").hide();
					cashCharge.money_in.value = 0;
				});
				
				$($("input[name='chargeMoney_sel']:radio[value='self_in']")).click(function(){
					$("select[name='moneyIn_Sel']").hide();
					$("input[name='moneyIn_Text']").show();
					cashCharge.money_in.value = 0;
				});
			}
			
			function money_Check() {
				moneyIn = /^[0-9]*$/;
				
				if(moneyIn.test(money_in.value)) {
					alert("숫자만 입력이 가능합니다.");
					return false;
				}
				
				if(!cashCharge.money_in.value) {
					alert("값을 입력해주세요.");
					return false;
				}
				
				if(cashCharge.money_in.value < 1000) {
					alert("1000원 이상 입력해주세요");
					return false;
				} else if((cashCharge.money_in.value) % 1000 > 0) {
					alert("1000원 단위로 입력하세요");
					return false;
				}
				
				return true;
			}
			
			function moneySet_Sel() {
				cashCharge.money_in.value = cashCharge.moneyIn_Sel.value;
			}
			
			function moneySet_Text() {
				cashCharge.money_in.value = cashCharge.moneyIn_Text.value;
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
	</head>
	
	<body>
		<c:if test="${session.memId == null}">
			<script type="text/javascript">
				alert("로그인을 해주세요");
			</script>
			<meta http-equiv="Refresh" content="0;url=bbusic.action">
		</c:if>
		
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
		    		<c:if test="${session.memId != null}">
						<form name="cashCharge" action="buyCash_SendEmailForm.action" method="post" onsubmit="return money_Check();">
							<br/><br/>
							<table border="1">
								<tr>
									<td colspan="2">
										뿌숑캐쉬는 뿌숑상품(클럽형, 티켓형, 곡, 뮤직비디오 등) 결제 시 사용 가능합니다.
										결제금액과 뿌숑캐쉬는 1:1 배율로써 충전금액 3,000원을 선택하시면 뿌숑캐쉬 3,000원이 충전됩니다.
										실제 결제금액은 부가가치세 10% 포함된 금액으로, 3,300원입니다.
									</td>
								</tr>
								<tr height="20px">
								</tr>
								<tr>
									<td>
										<table border="1" width="100%">
											<tr>
												<td>뿌숑캐쉬 잔액</td><td>${delete_cash}</td>
											</tr>
											<tr>
												<td height="100px">충전금액선택</td>
												<td width="300px" align="left">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<select name="moneyIn_Sel" onchange="moneySet_Sel()">
														<option value="0">0</option>
														<option value="1000">1000</option>
														<option value="3000">3000</option>
														<option value="5000">5000</option>
														<option value="9000">9000</option>
														<option value="10000">10000</option>
														<option value="30000">30000</option>
													</select>
													<input type="text" name="moneyIn_Text" style="display:none;" onchange="moneySet_Text()"/>
													&nbsp;&nbsp;&nbsp;
												</td>
												<td>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="radio" name="chargeMoney_sel" value="sel_in" onchange="moneyIn_sel()" checked>&nbsp;선택입력&nbsp;&nbsp;&nbsp;
													<input type="radio" name="chargeMoney_sel" value="self_in" onchange="moneyIn_sel()"/>&nbsp;직접입력(1000원 단위로 입력가능)
													<input type="hidden" name="money_in" value="0"/>
													<input type="hidden" name="cash_id" value="${my_id}"/>
													<input type="hidden" name="delete_cash" value="${delete_cash}"/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<input type="submit" value="결제하기"/>
									</td>
								</tr>
							</table>
						</form>
						<br/><br/>
					</c:if>
				</div>
			<div id="box3"> 5번 </div>
		</div>
	</body>
</html>