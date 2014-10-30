<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	<title>�Ѽ�����</title>
	<style type="text/css">
		g{
			color:black;
			font-size:10pt;
		}
	</style>
	<script>
		function checkAll(checkFlag, blockCount){
			var f = document.chartForm;
			for(var i=1; i< blockCount; i++){
				 if(f.elements[i].name == 'checkbox'){ 
	                 f.elements[i].checked = checkFlag; 
	         } 
			}
		}
		
		function checkAll2(blockCount){
			var f = document.chartForm;
			
			if(!f.c_all.checked) {
				f.c_all.checked = true;
				
				for(var i=1; i< blockCount; i++){
					if(f.elements[i].name == 'checkbox'){ 
		                f.elements[i].checked = true; 
		         	}
				}
			} else {
				f.c_all.checked = false;
				
				for(var i=1; i< blockCount; i++){
					if(f.elements[i].name == 'checkbox'){ 
		                f.elements[i].checked = false; 
		         	}
				}
			}			
		}
		
		/* �˾� ��ũ��Ʈ */
		function list_add(a){
			var params = "";
			var chkNo = document.getElementsByName("chkNo");
			alert(chkNo);
			if(a == "s"){
				var countChk = 0;
				for (var i = 0; i < chkNo.length; i++) {					
					if(chkNo[i].checked){
						alert(chkNo[i].value);
						params+= "chkNo="+i +"&";
						countChk+=1;
					}				
				}
				if(countChk == 0){ //������ �Ѿ������ ������ �������� ���.
					alert("�����ض�!!!");
					return false;
				}
			}else{
				params = "chkNo="+a;
			}
			open("Chart_BoardAction.action?"+params, "confirm", 
		       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400, height=400");
		}
	</script>
	</head>
	
<body>
	<input type="button" value="�߶��" onClick="javascript.window='GenreChartBoard.action?category=genre&genre=balad'" />
	<input type="button" value="��" onClick="javascript.window='GenreChartBoard.action?category=genre&genre=dance'" />

	<hr width="950px" size="1" color="gray" align="left" />

		<input type="button" name="h_selectall_btt" value="��ü����" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="���" onClick="list_add('s')">
		<input type="button" name="h_download_btt" value="�ٿ�" onClick="">
		<input type="button" name="h_collect_btt" value="���" onClick="">
	
	<hr width="950px" size="1" align="left" />
	<table align="left">
			<tr align="center">
				<td width="29px" height="10px"><input type="checkbox" name="c_all" on></td>
				<td width="80px"><g>����</g></td>
				<td width="630px"><g>������</g></td>
				<td width="82px"><g>���ƿ�</g></td>	
				<td width="70px"><g>�ٿ�</g></td>
			</tr>
	</table>
	<hr width="950px" size="3" color="#CC3D3D" align="left" />
	
	<c:set var="count" value="0" />
	<c:if test="${count > 1}">
	<table align="center">
		<tr>
			<td>�Խù��� �������� �ʽ��ϴ�.</td>
		</tr>
	</table>
	</c:if>
	
	<c:if test="${count > 0}">
			<c:forEach var="i" items="${articleList}">
				<table>
					<tr align="left" height="50px">
						<td><input type="checkbox" name="${i}"></td>
						<!--����-->
						<td>${i.rank}</td>
						<!--������-->
						<td>
							<input type="image" name="m_play_btt" src="../board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="../board/images/m_add_button.png">
							&nbsp;
							<input type="image" name="m_page_btt" src="../board/images/m_page_button.png">
							&nbsp; ${music_name}<br />
							${singger} <p>|</p> ${album}
						</td>
						<!--���ƿ�-->
						<td>
						<input type="image" name="m_like_btt" src="../board/images/m_like_button.png">
						${hit}
						</td>
						<!--�ٿ�ε�-->
						<td>
							<input type="image" name="m_download_img" src="../board/images/m_download_button.png">
						</td>
					</tr>
				</table>
			</c:forEach>
	</c:if>
	
	<hr width="950px" size="1" color="gray" align="left" />

	<input type="button" name="h_selectall_btt" value="��ü����" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="���" onClick="list_add('s')">
		<input type="button" name="h_download_btt" value="�ٿ�" onClick="">
		<input type="button" name="h_collect_btt" value="���" onClick="">
	
	<hr width="950px" size="1" align="left" />
	
</body>
</html>
