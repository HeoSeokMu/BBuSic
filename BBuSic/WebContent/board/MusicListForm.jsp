<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
function checkAll(checkFlag, blockCount){
	var f = document.chartForm;
	for(var i=1; i< blockCount; i++){
		 if(f.elements[i].name == 'chkNo'){ 
             f.elements[i].checked = checkFlag; 
    	 } 
	}
}

function checkAll2(blockCount){
	var f = document.chartForm;
	
	if(!f.c_all.checked) {
		f.c_all.checked = true;
		
		for(var i=1; i< blockCount; i++){
			if(f.elements[i].name == 'chkNo'){ 
                f.elements[i].checked = true; 
         	}
		}
	} else {
		f.c_all.checked = false;
		
		for(var i=1; i< blockCount; i++){
			if(f.elements[i].name == 'chkNo'){ 
                f.elements[i].checked = false; 
         	}
		}
	}	
}
/*다운로드 결재*/
	function downLoad(){
		var chkNo = document.getElementsByName("chkNo");
		var params = "";		
		if(a == "s"){
			var countChk = 0;
			for (var i = 0; i < chkNo.length; i++) {					
				if(chkNo[i].checked){
					params+= "chkNo="+chkNo[i].value +"&";
					countChk+=1;
				}				
			}
			if(countChk == 0){ //서버로 넘어가기전에 사전에 막기위해 사용.
				alert("선택해라!!!");
				return false;
			}
		}else{
			params = "chkNo="+a;
		}
		open("downloadAction2.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");
	}
/*Confirm 창을 통해 Yes 일경우 musicPay 로 이동*/	
	function musicConfirm(a){	
		if(confirm("결재하시겠습니까?")){
			musicPay(a);
		}else{
			alert("취소되었습니다.");
		}
	}

	function musicPay(a){		
		var chkNo = document.getElementsByName("chkNo");		
		var params = "";
			if(a == "s"){
				var countChk = 0;
				for (var i = 0; i < chkNo.length; i++) {
					if(chkNo[i].checked){						
						params+= "chkNo="+ chkNo[i].value +"&";
						countChk+=1;							
					}				
				}
				if(countChk == 0){ //서버로 넘어가기전에 사전에 막기위해 사용.
					alert("선택해라!!!");
					return false;
				}				
			}else{
				params = "chkNo="+a;
			}
			open("downLoadPayAction.action?"+params, "confirm", 
		       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");		
	}
</script>
<body>
	<form method="get" name="chartForm" onSubmit="musicConfirm('s');">	
		<table border="1" bordercolor="red" width="500">
				<tr>
					<td colspan="5">
							<input type="button" name="h_selectall_btt" value="전체선택" onClick="checkAll2(50)">&nbsp;
						<c:if test="${benefit == '무제한 듣기'}">
							<input type="button" value="구매" onClick="musicConfirm('s')">&nbsp;
						</c:if>
							<input type="button" value="목록삭제" onclick="window.location='deleteListAction.action'">
					</td>										
				</tr>
				<tr>
					<th align="center">
						<input type="checkbox" name="c_all" onclick="checkAll(this.checked,50)">
					</th>
					<th>제 목</th>
					<th>가 수</th>
					<th>노 래</th>
					<th>구 매</th>
				</tr>
				<c:forEach var="musicList2" items="${musicList2}" varStatus="checkValue">						
						<tr>	
							<td width="25px" height="10px">
								<input type="checkbox" name="chkNo" value="${checkValue.index}">
							</td>
							<td>${musicList2.realname_music }</td>
							<td>${musicList2.title }</td>
							<c:if test="${benefit == '무제한 듣기'}">
								<td>
									<audio auto="false"  controls="true" id="myAudio${checkValue.index}" >
											<source src="/BBuSic/upload/${musicList2.music_name}">									
									</audio>
									</td>
									<td align="center">
										<input type="button" value="구매" onclick="musicConfirm('s')">
									</td>																		
							</c:if>														
							<c:if test="${benefit == null}">
								<td>
									<audio auto="false"  controls="true" id="myAudio${checkValue.index}" >
											<source src="/BBuSic/upload/${musicList2.minute}">					
									</audio>
								</td>
							</c:if>							
						</tr>																
				</c:forEach>	
					<tr>
						<td colspan="5">
								<input type="button" name="h_selectall_btt" value="전체선택" onClick="checkAll2(50)">&nbsp;	
							<c:if test="${benefit == '무제한 듣기'}">		
								<input type="button" value="구매" onClick="musicConfirm('s')">&nbsp;
							</c:if>						
								<input type="button" value="목록삭제" onclick="window.location='deleteListAction.action'">
					</td>
				</tr>
		</table>		
	</form>
</body>