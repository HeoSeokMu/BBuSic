<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
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
						<input type="button" onClick="selectok('escargot')" style="background-color:#000000;color:#ffffff; width:100%; height:40px; border:1px #dddddd dashed; text-align:center; padding:3px;" value="구매"/><br/>
						<input type="button" onClick="selectok('escargot')" style="background-color:#000000;color:#ffffff; border:1px #dddddd dashed; text-align:center; padding:3px;" value="구매"/>
						<input type="button" onClick="selectok('escargot')" style="background-color:#000000;color:#ffffff; border:1px #dddddd dashed; text-align:center; padding:3px;" value="선물"/>
					</td>
				</tr>
			</c:forEach>	
		</table>
	</body>
</html>