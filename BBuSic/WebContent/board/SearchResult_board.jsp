<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400, height=400");
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
	
	function like(num){
		if(confirm("추천 하시겠습니까?") == true){
			location.href = "m_like.action?category=singer&singer=${singerInfo.singer}&id=${session.memId}&num=" + num;
		}else{
			return false;
		}
	}
	
	function lyrics(num){
		window.location= "LyricsPage.action?num=" + num;
	}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

	<title></title>
	
</head>

	<form method="post" name="chartForm">
		<font size="5"><strong>곡&nbsp;</strong>(${ art_count + sig_count + alb_count})</font>
		<hr width="880px" size="1" color="gray" align="left" />
		
		<strong>&nbsp;아티스트 명으로 검색 (${ art_count })</strong>
		
		<hr width="880px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="30px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="25px"><g>NO</g></td>
				<td width="70px"></td>
				<td width="300px"><g>곡명</g></td>
				<td width="125px"><g>아티스트</g></td>
				<td width="125px"><g>앨범</g></td>
				<td width="105px"><g>좋아요</g></td>
				<td width="80px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="880px" size="3" color="#CC3D3D" align="left" />

		<c:if test="${art_count == 0}">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<table>
				<tr>
					<td align="left">게시물이 존재하지 않습니다.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${art_count != 0}">
			<c:forEach var="list1" items="${list1}" varStatus="checkValue">
				<table>
					<tr align="center" height="25px">
						<td width="30px" height="25px">
							<input type="checkbox" name="chkNo" value="${checkValue.index}">
						</td>
						<td width="25px">
							${checkValue.index + 1}
						</td>
						<!--이미지-->
						<td width="70px">
						</td>
						<!--곡정보-->
						<td width="300px" align="left">
							<input type="image" name="m_play_btt" src="board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="board/images/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="board/images/m_page_button.png">
							${list1.title}
						</td>
						<td width="125px">
							<a href="SingerPage.action?category=singerPage&singer=${list1.singer}">${list1.singer}</a>
						</td>
						<td width="125px">
							<a href="AlbumPage.action?category=albumPage&album=${list1.album}">${list1.album}</a>
						</td>
						<!--좋아요-->
						<td width="105px">
							<input type="image" name="m_like_btt" src="board/images/m_like_button.png"> ${list1.hit}
						</td>
						<!--다운로드-->
						<td td width="80px">
							<input type="image" name="m_download_img" src="board/images/m_download_button.png">
						</td>
					</tr>
				</table>
				<hr width="880px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="듣기" onClick="">
		<input type="button" name="h_download_btt" value="다운" onClick="">

		<hr width="880px" size="1" align="left" />
		<br>
		<br>
		<br>
		<form method="post" name="chartForm">
		<hr width="880px" size="1" color="gray" align="left" />
		
		<strong>&nbsp;곡명으로 검색 (${ sig_count })</strong>
		
		<hr width="880px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="30px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="25px"><g>NO</g></td>
				<td width="70px"></td>
				<td width="300px"><g>곡명</g></td>
				<td width="125px"><g>아티스트</g></td>
				<td width="125px"><g>앨범</g></td>
				<td width="105px"><g>좋아요</g></td>
				<td width="80px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="880px" size="3" color="#CC3D3D" align="left" />

		<c:if test="${sig_count == 0}">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<table>
				<tr>
					<td align="left">게시물이 존재하지 않습니다.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${sig_count != 0}">
			<c:forEach var="list2" items="${list2}" varStatus="checkValue">
				<table>
					<tr align="center" height="25px">
						<td width="30px" height="25px">
							<input type="checkbox" name="chkNo" value="${checkValue.index}">
						</td>
						<td width="25px">
							${checkValue.index + 1}
						</td>
						<!--이미지-->
						<td width="70px">
						</td>
						<!--곡정보-->
						<td width="300px" align="left">
							<input type="image" name="m_play_btt" src="board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="board/images/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="board/images/m_page_button.png">
							${list2.title}
						</td>
						<td width="125px">
							<a href="SingerPage.action?category=singerPage&singer=${list2.singer}">${list2.singer}</a>
						</td>
						<td width="125px">
							<a href="AlbumPage.action?category=albumPage&album=${list2.album}">${list2.album}</a>
						</td>
						<!--좋아요-->
						<td width="105px">
							<input type="image" name="m_like_btt" src="board/images/m_like_button.png"> ${list2.hit}
						</td>
						<!--다운로드-->
						<td td width="80px">
							<input type="image" name="m_download_img" src="board/images/m_download_button.png">
						</td>
					</tr>
				</table>
				<hr width="880px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="듣기" onClick="">
		<input type="button" name="h_download_btt" value="다운" onClick="">

		<hr width="880px" size="1" align="left" />
		<br>
		<br>
		<br>
		
		<form method="post" name="chartForm">
		<hr width="880px" size="1" color="gray" align="left" />
		
		<strong>&nbsp;앨범명으로 검색 (${ alb_count })</strong>
		
		<hr width="880px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="30px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="25px"><g>NO</g></td>
				<td width="70px"></td>
				<td width="300px"><g>곡명</g></td>
				<td width="125px"><g>아티스트</g></td>
				<td width="125px"><g>앨범</g></td>
				<td width="105px"><g>좋아요</g></td>
				<td width="80px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="880px" size="3" color="#CC3D3D" align="left" />

		<c:if test="${alb_count == 0}">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<table>
				<tr>
					<td align="left">게시물이 존재하지 않습니다.</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${alb_count != 0}">
			<c:forEach var="list3" items="${list3}" varStatus="checkValue">
				<table>
					<tr align="center" height="25px">
						<td width="30px" height="25px">
							<input type="checkbox" name="chkNo" value="${checkValue.index}">
						</td>
						<td width="25px">
							${checkValue.index + 1}
						</td>
						<!--이미지-->
						<td width="70px">
						</td>
						<!--곡정보-->
						<td width="300px" align="left">
							<input type="image" name="m_play_btt" src="board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="board/images/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="board/images/m_page_button.png">
							${list3.title}
						</td>
						<td width="125px">
							<a href="SingerPage.action?category=singerPage&singer=${list3.singer}">${list3.singer}</a>
						</td>
						<td width="125px">
							<a href="AlbumPage.action?category=albumPage&album=${list3.album}">${list3.album}</a>
						</td>
						<!--좋아요-->
						<td width="105px">
							<input type="image" name="m_like_btt" src="board/images/m_like_button.png"> ${list3.hit}
						</td>
						<!--다운로드-->
						<td td width="80px">
							<input type="image" name="m_download_img" src="board/images/m_download_button.png">
						</td>
					</tr>
				</table>
				<hr width="880px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
		<input type="button" name="h_listen_btt" value="듣기" onClick="">
		<input type="button" name="h_download_btt" value="다운" onClick="">

		<hr width="880px" size="1" align="left" />
		
</html>