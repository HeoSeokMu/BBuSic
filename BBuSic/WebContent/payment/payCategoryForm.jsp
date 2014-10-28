<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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