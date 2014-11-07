<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

	<form method="get" name="vv">
		<table border="1">
				<c:forEach var="musicList2" items="${musicList2}" varStatus="aa">				
						<tr>		
							<td>${musicList2.title }</td>
							<td>
								<c:if test="${benefit != null}">
									<audio auto="false"  controls="true" id="myAudio${aa.index}" >
											<source src="/BBuSic/upload/${musicList2.realname_music}">									
									</audio>
								</c:if>
								<c:if test="${benefit == null}">
									<audio auto="false"  controls="true" id="myAudio${aa.index}" >
											<source src="/BBuSic/upload/${musicList2.minute}">									
									</audio>
								</c:if>
							</td>	
						</tr>
											
				</c:forEach>
		</table>		
	</form>
</body>
