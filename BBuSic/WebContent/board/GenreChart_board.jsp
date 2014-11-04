<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<script type="text/javascript">
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
	
	/* �˾� ��ũ��Ʈ */
	function list_add(a){
		var params = "";
		var chkNo = document.getElementsByName("chkNo");
		if(a == "s"){
			var countChk = 0;
			for (var i = 0; i < chkNo.length; i++) {					
				if(chkNo[i].checked){
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
	
	/* �ٿ�ε� ��ũ��Ʈ */
	function music_down(a){
		var params = "";
		var chkNo = document.getElementsByName("chkNo");
		if(a == "s"){
			var countChk = 0;
			for (var i = 0; i < chkNo.length; i++) {					
				if(chkNo[i].checked){
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
		open("downloadAction.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");
	}
</script>

<html>
<head>
<title>�Ѽ�����</title>
<style type="text/css">
g {
	color: black;
	font-size: 10pt;
}

center {
	text-align: center
}
</style>
</head>

<body>
	<form method="post" name="chartForm">
		<hr width="850px" size="1" color="gray" align="left" />
		<br /><br />
		<hr width="1100px" size="1" color="gray" align="left" />

		<input type="button" name="h_selectall_btt" value="��ü����" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="���" onClick="">
		<input type="button" name="h_download_btt" value="�ٿ�" onClick="">
		<input type="button" name="h_collect_btt" value="���" onClick="">

		<hr width="1100px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="30px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="25px"><g>NO</g></td>
				<td width="70px"></td>
				<td width="300px"><g>���</g></td>
				<td width="200px">��Ƽ��Ʈ</td>
				<td width="150px">�ٹ�</td>
				<td width="80px"><g>���ƿ�</g></td>
				<td width="80px"><g>�ٿ�</g></td>
			</tr>
		</table>
		<hr width="1100px" size="3" color="#CC3D3D" align="left" />

		<c:set var="count" value="0" />
		<c:if test="${totalCount < 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<table>
				<tr>
					<td align="left">�Խù��� �������� �ʽ��ϴ�.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${totalCount > 0}">
			<c:forEach var="list" items="${list}" varStatus="checkValue">
				<table>
					<tr align="center" height="25px">
						<td width="30px" height="25px"><input type="checkbox" name="chkNo" value="${list}"></td>
						<td width="25px">${(currentPage-1) * 10 + (checkValue.index + 1)}</td>
						<!--�̹���-->
						<td width="70px"><input type="image" onClick=""/></td>
						<!--������-->
						<td width="300px" align="left"><input type="image" name="m_play_btt" src="/music/board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="/music/board/images/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="/music/board/images/m_page_button.png">
								${list.title}
						</td>
						<td width="200px"><a href="SingerPage.action?category=singerPage&singer=${list.singer}">${list.singer}</a></td>
						<td width="150px"><a href="AlbumPage.action?category=albumPage&album=${list.album}">${list.album}</a></td>
						<!--���ƿ�-->
						<td width="80px"><input type="image" name="m_like_btt" src="/music/board/images/m_like_button.png"> ${list.hit}</td>
						<!--�ٿ�ε�-->
						<td td width="80px"><input type="image" name="m_download_img" src="/music/board/images/m_download_button.png"></td>
					</tr>
				</table>
				<hr width="1100px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>

		<hr width="1100px" size="1" color="gray" align="left" />
		<!-- ��ü���� -->
		<input type="button" name="h_selectall_btt" value="��ü����" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="���" onClick="">
		<input type="button" name="h_download_btt" value="�ٿ�" onClick="">
		<input type="button" name="h_collect_btt" value="���" onClick="">

		<hr width="1100px" size="1" align="left" />
		<br>
		<p align="center"><s:property value="pagingHtml" escape="false" /></p>
	</form>
</body>
</html>
