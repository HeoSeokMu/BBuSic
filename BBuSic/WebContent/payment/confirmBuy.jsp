<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="/view/color.jspf"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>상품 중복확인</title>
	<script language="javascript">
	
		function buy(name, benefit, amount, sale, download_count, buy_id, buy_type) {
			window.location = "payBuyOption.action?pay_name="+name+"&pay_benefit="+benefit+
			  				  "&amount="+amount+"&sale="+sale+"&download_count="+download_count+"&buy_id="+buy_id+"&buy_type="+buy_type;
			window.close();
		}
		
		function buy_back() {
			window.close();
		}
	
</script>
</head>
<body bgcolor="${bodyback_c}">
	<c:if test="${check == 'using'}">
		<table width="270" border="0" cellspacing="0" cellpadding="5">
			<tr bgcolor="${title_c}">
				<td height="39">이미 사용중인 상품이 있습니다.</td>
			</tr>
		</table>
		<form name="userinput" method="post" action="confirmEmail.action" onSubmit="return openConfirmEmail()">
			<table width="270" border="0" cellspacing="0" cellpadding="5">
				<tr>
					<td bgcolor="${value_c}" align="center">
						다른 상품을 선택하세요<br/>
						<input type="button" value="닫기" onclick="buy_back()">
					</td>
				</tr>
			</table>
		</form>
	</c:if>

	<c:if test="${check == 'pass'}">
		<table width="270" border="0" cellspacing="0" cellpadding="5">
			<tr bgcolor="${title_c}">
				<td align="center">
					사용 가능한 상품입니다.<br/>
					<input type="button" value="상품구매" onclick="buy('${pay_name}', '${pay_benefit}', '${amount}', '${sale}', '${download_count}','${buy_id}', '${buy_type}')">
				</td>
			</tr>
		</table>
	</c:if>

</body>
</html>
