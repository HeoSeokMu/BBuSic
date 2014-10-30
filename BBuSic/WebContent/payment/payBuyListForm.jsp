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
		</style>
		
		<script>
			function buy(name, benefit, amount, sale) {
				if(${session.memId != null}) {
					window.location = "payBuyOption.action?pay_name="+name+"&pay_benefit="+benefit+
									  "&amount="+amount+"&sale="+sale;
				} else {
					window.open("popupLogin.action", "popup1", "width=330px,height=180px");
				}
			} 
		</script>
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
	</body>
</html>