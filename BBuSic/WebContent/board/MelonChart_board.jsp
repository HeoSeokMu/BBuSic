<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<script type="text/javascript">
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
		<hr width="950px" size="1" color="gray" align="left" />
			
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_listen_btt" value="듣기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_download_btt" value="다운" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_collect_btt" value="담기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_listen_top100_btt" value="TOP100위 듣기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />

		<hr width="950px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="29px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="29px"><g>순위</g></td>
				<td width="80px"></td>
				<td width="630px"><g>곡정보</g></td>
				<td width="82px"><g>좋아요</g></td>
				<td width="70px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="950px" size="3" color="#CC3D3D" align="left" />

		<c:set var="count" value="0" />
		<c:if test="${totalCount < 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<table>
				<tr>
					<td align="left">게시물이 존재하지 않습니다.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${totalCount > 0}">
			<c:forEach var="i" items="${list}" varStatus="num">
				<table>
					<tr align="center" height="70px">
						<td width="29px" height="10px"><input type="checkbox"
							name="checkbox" value="${i}"></td>
						<td width="29px">위</td>
						<!--이미지-->
						<td width="80px"><img src="${i.music_image}" width="50px"
							height="50px"></td>
						<!--곡정보-->
						<td width="630px" align="left"><input type="image"
							name="m_play_btt" src="/music/board/images/m_play_button.png">
							<input type="image" name="m_add_btt"
							src="/music/board/images/m_add_button.png"> &nbsp; <input
							type="image" name="m_page_btt"
							src="/music/board/images/m_page_button.png">
							<div style="text-align: center">
								${i.title}<br /> ${i.singger} | ${i.album}
							</div></td>
						<!--좋아요-->
						<td width="82px"><input type="image" name="m_like_btt"
							src="/music/board/images/m_like_button.png"> ${i.hit}</td>
						<!--다운로드-->
						<td td width="70px"><input type="image" name="m_download_img"
							src="/music/board/images/m_download_button.png"></td>
					</tr>
				</table>
				<hr width="950px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>

		<hr width="950px" size="1" color="gray" align="left" />
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_listen_btt" value="듣기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_download_btt" value="다운" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_collect_btt" value="담기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />
		<input type="button" name="h_listen_top100_btt" value="TOP100위 듣기" onClick="" style="color:#ffffff;border-color:#E7EFF7;background-color:#CC3D3D;font-size:8pt;font-family:Tahoma;height:20px" />

		<hr width="950px" size="1" align="left" />
		<br>
		<div style="text-align: center">
			<s:property value="pagingHtml" escape="false" />
		</div>

	</form>
</body>
</html>
