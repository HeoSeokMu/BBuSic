<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
	<form method="get" name="vv" action="deleteListAction.action">
		<table border="1" bordercolor="red">
				<c:forEach var="musicList2" items="${musicList2}" varStatus="aa">						
						<tr>	
							<td>${musicList2.title }</td>
							<td>
								<c:if test="${benefit == '무제한 듣기'}">
									<audio auto="false"  controls="true" id="myAudio${aa.index}" >
											<source src="/BBuSic/upload/${musicList2.music_name}">									
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
				<tr>
					<td colspan="2">
						<input type="submit" value="목록삭제">&nbsp;&nbsp;&nbsp;
						<input type="button" value="닫기" onclick="window.close()">
					</td>
				</tr>
		</table>		
	</form>
</body>