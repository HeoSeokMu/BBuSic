<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<haed>
		<title>뿌숑뮤직 상품등록</title>
	</haed>
	
	<body>
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
					<td><input type="text" name="download_count"/></td>
				</tr>
			</table>
			<input type="submit" value="등록"/>
		</form>
	</body>
</html>