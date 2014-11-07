<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="1">
	<c:forEach var="musicList2" items="${musicList2}">
			<tr>		
				<td>${musicList2.title }</td>
				<td>
					<audio auto="false"  controls="true" >
					if(benefit == "¹«Á¦ÇÑ µè±â") {
							<source src="/BBuSic/upload/${musicList2.real_musicname}">
							
					} else {
						<source src="/BBuSic/upload/${musicList2.minute}">
					}		
					</audio> 
				</td>	
			</tr>	
	</c:forEach>
</table>