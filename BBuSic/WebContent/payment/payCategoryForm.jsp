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
<marquee>���� �����ϴ�!!</marquee>
 -->
<div id="payCategory">
	<h2>��� ��ǰ ����</h2>
	<input type="button" name="pay_all" value="��ü ��ǰ ����" onclick="loadXMLDoc(payAll)"/>
	<input type="button" name="pay_3mon" value="3���� ���� Ư��" onclick="loadXMLDoc(pay3Mon)"/>
	<input type="button" name="pay_3mon" value="���� ��ǰ" onclick="loadXMLDoc(payCooper)"/>
	<input type="button" name="pay_3mon" value="���� ���" onclick="loadXMLDoc(payCoopon)"/>
	<input type="button" name="pay_3mon" value="��� ĳ�� ����" onclick="loadXMLDoc(payCash)"/>
</div>

<div id="payBuy">
	
</div>