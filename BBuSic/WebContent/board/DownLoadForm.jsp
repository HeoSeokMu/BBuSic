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
<form method="get" name="downForm">
	<table border="1" width="500">
		<c:forEach var="musicList2" items="${musicList2}" varStatus="checkValue">		
			<tr align="center">
				<td><input type="checkbox" name="chkNo2" value="${((currentPage-1) * 10 + (checkValue.index + 1))-1}"></td>
				<td>${musicList2.music_name }</td>
				<td>${musicList2.realname_music }</td>
				<td>${musicList2.singer }</td>
				<td>${musicList2.album }</td>
				<td align="center">
					<input type="button" value="다음" onclick="javascript:window.location='downloadAction2.action?fileName=${musicList2.realname_music}'">
				</td>				
			</tr>		
		</c:forEach>
			<tr>
				<td colspan="6" align="center"><input type="button" value="다음" onClick="downLoad('s')"></td>							
			</tr>
	</table>
</form>