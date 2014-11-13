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
	
	/* 팝업 스크립트 */
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
			if(countChk == 0){ //서버로 넘어가기전에 사전에 막기위해 사용.
				alert("선택해라!!!");
				return false;
			}
		}else{
			params = "chkNo="+a;
		}
		open("Chart_BoardAction.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400"); 
	}
	
	/* 다운로드 스크립트 */
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
			if(countChk == 0){ //서버로 넘어가기전에 사전에 막기위해 사용.
				alert("선택해라!!!");
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
<title>뿌숑뮤직</title>
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
		<hr width="880px" size="1" color="gray" align="left" />

		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')">
		<input type="button" name="h_download_btt" value="다운" onClick="music_down('s')">

		<hr width="880px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="25px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="30px"><g>NO</g></td>
				<td width="80px"></td>
				<td width="520px"><g>곡정보</g></td>
				<td width="120px"><g>좋아요</g></td>
				<td width="70px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="880px" size="3" color="#CC3D3D" align="left" />

		<c:set var="count" value="0" />
		<c:if test="${totalCount < 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<table border="0">
				<tr>
					<td align="left">게시물이 존재하지 않습니다.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${totalCount > 0}">
			<c:forEach var="list" items="${list}" varStatus="checkValue">
				<table>
					<tr align="center" height="70px">																	
						<td width="25px" height="10px">
							<input type="checkbox" name="chkNo" value="${checkValue.index}">
							</td>
						<!-- No -->
						<td width="30px">
							${(currentPage-1) * 10 + (checkValue.index + 1)}
						</td>
						<!--이미지-->
						<td width="80px">
							<img src="${list.music_image}" width="50px" height="50px">
						</td>
						<!--곡정보-->
						<td width="100px" align="center">
							<input type="image" name="m_play_btt" src="http://localhost:8000/BBuSic/board/images/m_play_button.png" onclick="list_add(${checkValue.index });">
							<input type="image" name="m_add_btt" src="http://localhost:8000/BBuSic/board/images/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="http://localhost:8000/BBuSic/board/images/m_page_button.png">
						</td>
						<td width="420px" align="left">
							${list.title}<br /> ${list.singer} | ${list.album}
						</td>
						<!--좋아요-->
						<td width="120px">
							<input type="image" name="m_like_btt" src="http://localhost:8000/BBuSic/board/images/m_like_button.png"> ${list.hit}
						</td>
						<!--다운로드-->
						<td td width="70px">
							<input type="image" name="m_download_img" src="http://localhost:8000/BBuSic/board/images/m_download_button.png" onclick="music_down(${checkValue.index });">
						</td>
					</tr>
				</table>
				<hr width="880px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>

		<hr width="880px" size="1" color="gray" align="left" />
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')">
		<input type="button" name="h_download_btt" value="다운" onClick="music_down('s')">

		<hr width="880px" size="1" align="left" />
		<br>
			<p align="center"><s:property value="pagingHtml" escape="false" /></p>
	</form>
</body>
</html>
