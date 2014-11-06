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
			function moneySel() {
	
				$($("input[name='chargeMoney_sel']:radio[value='sel_in']")).click(function(){
					$("select[name='money_sel']").show();
					$("input[name='chargeMoney_in']").hide();
					cashCharge.money_in.value = 0;
				});
				
				$($("input[name='chargeMoney_sel']:radio[value='self_in']")).click(function(){
					$("select[name='money_sel']").hide();
					$("input[name='chargeMoney_in']").show();
					cashCharge.money_in.value = 0;
				});
				<%--
				if(a.chargeMoney_sel.checked) {
					a.money_sel.style.display = "true";
					a.chargeMoney_in.style.display = "false";
				} else {
					a.money_sel.style.display = "false";
					a.chargeMoney_in.style.display = "true";
				}
				--%>
				
			}
			
			function money_set() {
				cashCharge.money_in.value = cashCharge.money_sel.value;
				cashCharge.chargeMoney_in.value = 0;
			}
			
			function money_setIn() {
				cashCharge.money_in.value = cashCharge.chargeMoney_in.value;
				cashCharge.money_sel.value = 0;
			}
		</script>
	</head>
	
	<body>
		<form name="cashCharge" action="" method="post">
			<table border="1">
				<tr>
					<td colspan="2">
						멜론캐쉬는 멜론상품(클럽형, 티켓형, 곡, 뮤직비디오 등) 결제 시 사용 가능합니다.
						결제금액과 멜론캐쉬는 1:1 배율로써 충전금액 3,000원을 선택하시면 멜론캐쉬 3,000원이 충전됩니다.
						실제 결제금액은 부가가치세 10% 포함된 금액으로, 3,300원입니다.
					</td>
				</tr>
				<tr height="20px">
				</tr>
				<tr>
					<td>
						<table border="1" width="100%">
							<tr>
								<td>뿌숑캐쉬 잔액</td><td>${cash}</td>
							</tr>
							<tr>
								<td height="100px">충전금액선택</td>
								<td width="300px" align="left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select name="money_sel" onchange="money_set()">
										<option value="0">0</option>
										<option value="1000">1000</option>
										<option value="3000">3000</option>
										<option value="5000">5000</option>
										<option value="9000">9000</option>
										<option value="10000">10000</option>
										<option value="30000">30000</option>
									</select>
									<input type="text" name="chargeMoney_in" value="0" style="display:none;" onchange="money_setIn()"/>
									&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="chargeMoney_sel" value="sel_in" onchange="moneySel()" checked>&nbsp;선택입력&nbsp;&nbsp;&nbsp;
									<input type="radio" name="chargeMoney_sel" value="self_in" onchange="moneySel()"/>&nbsp;직접입력(1000원 단위로 입력가능)
									<input type="text" name="money_in"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>