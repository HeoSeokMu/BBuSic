<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action="payInsert.action" method="post">
	<table border="1">
		<tr>
			<th colspan="2">상품명</th><th>혜택</th><th>정기권 금액</th><th>30일권 금액</th><th>세일</th>
		</tr>
		<tr>
			<td><input type="text" name="category"/></td>
			<td><input type="text" name="pay_name"/></td>
			<td><input type="text" name="pay_benefit"/></td>
			<td><input type="text" name="amount"/></td>
			<td><input type="text" name="day30amount"/></td>
			<td><input type="text" name="sale"/></td>
		</tr>
	</table>
	<input type="submit" value="등록"/>
</form>