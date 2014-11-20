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
					params+= "chkNo2="+chkNo[i].value +"&";
					countChk+=1;
				}				
			}
			if(countChk == 0){ //서버로 넘어가기전에 사전에 막기위해 사용.
				alert("선택해라!!!");
				return false;
			}
		}else{
			params = "chkNo2="+a;
		}
		open("downloadAction2.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");
	}
</script>
<body onunLoad="bb();">
	<form method="get" name="payForm" action="downLoadPayAction2.action">
		<table border="1" style="width:600px">	
				<tr>
					<th>파 일</th>
					<th>가 격</th>
					<th>다 운</th>			
				</tr>
			<c:forEach var="musicList3" items="${musicList3 }">				
				<tr>
					<td>${musicList3.realname_music } </td>
					<td>${musicList3.price }</td>	
					<td align="center">
						<input type="button" value="다음" onclick="javascript:window.location='downloadAction2.action?fileName=${musicList3.realname_music}'">
					</td>				
				</tr>
			</c:forEach>
			<tr>
				<td>누적 가격</td>
				<td colspan="2">${sum }</td>
			</tr>
			<tr><td colspan="3" align="center"><input type="button" value="확인" onclick="window.close();"></td></tr>
		</table>
	</form>
</body>