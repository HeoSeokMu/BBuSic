<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	function downLoad(){
		var chkNo2 = document.getElementsByName("chkNo2");
		var params = "";
		
		if(a == "s"){
			var countChk = 0;
			for (var i = 0; i < chkNo2.length; i++) {					
				if(chkNo[i].checked){
					params+= "chkNo2="+i +"&";
					countChk+=1;
				}				
			}
			if(countChk == 0){ //������ �Ѿ������ ������ �������� ���.
				alert("�����ض�!!!");
				return false;
			}
		}else{
			params = "chkNo2="+a;
		}
		open("downloadAction2.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");
	}
</script>
<body>
	<form method="get" name="vv" action="deleteListAction.action">
		<table border="1" bordercolor="red">
				<c:forEach var="musicList2" items="${musicList2}" varStatus="checkValue">						
						<tr>	
							<td><input type="checkbox" name="chkNo2" value="${checkValue.index}"></td>
							<td>${musicList2.title }</td>
							<c:if test="${benefit == '������ ���'}">
								<td>
									<audio auto="false"  controls="true" id="myAudio${checkValue.index}" >
											<source src="/BBuSic/upload/${musicList2.music_name}">									
									</audio>
									</td>
									<td align="center">
										<input type="button" value="����" onclick="javascript:window.location='downloadAction2.action?fileName=${musicList2.realname_music}'">
									</td>
							</c:if>
															
							<c:if test="${benefit == null}">
								<td>
									<audio auto="false"  controls="true" id="myAudio${aa.index}" >
											<source src="/BBuSic/upload/${musicList2.minute}">									
									</audio>
								</td>
							</c:if>							
						</tr>											
				</c:forEach>
				<tr>
					<td colspan="2">
						<input type="submit" value="��ϻ���">&nbsp;&nbsp;&nbsp;
						<input type="button" value="�ݱ�" onclick="window.close()">&nbsp;&nbsp;&nbsp;
						<input type="button" value="�ٿ�" onClick="downLoad('s')">
					</td>
				</tr>
		</table>		
	</form>
</body>