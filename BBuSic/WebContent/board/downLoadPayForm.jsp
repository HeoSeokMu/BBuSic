<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
	<form method="get" name="payForm">
		<table border="1" style="width:600px">	
				<tr>
					<th>파 일</th>
					<th>가 격</th>			
				</tr>
			<c:forEach var="musicList2" items="${musicList2 }">				
				<tr>
					<td>${musicList2.realname_music } </td>
					<td>${musicList2.price }</td>					
				</tr>
			</c:forEach>
			<tr><td colspan="2">누적 가격 : ${sum }</td></tr>
			<tr><td colspan="2"><input type="button" value="확인" onclick="window.close();"></td></tr>
		</table>
	</form>
</body>