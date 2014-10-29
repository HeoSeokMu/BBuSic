<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<script type="text/javascript">
			function loadXMLDoc(abc) {
		
				alert("aaa");
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
				xmlhttp.open("GET", "payBuyAction.action?type="+abc, true);
				xmlhttp.send();
			}
		</script>
	</head>
	
	<body>
		<!-- 
		<marquee>신은 위대하다!!</marquee>
		 -->
		<div id="payCategory">
			<h2>멜론 상품 구매</h2>
			<input type="button" name="pay_all" value="전체 상품 보기" onclick="loadXMLDoc(payAll)"/>
			<input type="button" name="pay_3mon" value="3개월 할인 특가" onclick="loadXMLDoc(pay3Mon)"/>
			<input type="button" name="pay_3mon" value="제휴 상품" onclick="loadXMLDoc(payCooper)"/>
			<input type="button" name="pay_3mon" value="쿠폰 등록" onclick="loadXMLDoc(payCoopon)"/>
			<input type="button" name="pay_3mon" value="멜론 캐쉬 충전" onclick="loadXMLDoc(payCash)"/>
		</div>
		
		<div id="payBuy">
			
		</div>
	</body>
</html>