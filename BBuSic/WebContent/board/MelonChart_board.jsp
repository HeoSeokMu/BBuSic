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
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
</head>
<div id="box">
	      <div id="header">
	         <div id="header_1">
	            <ul class="menu">
	               <li><a href="ChartBoard.action?category=chart"><img src="main/bbu_main_img/chart.png" name="chart" border="0" class="rollover"/></a></li>
	               <li><a href="NewChartBoard.action?category=new"><img src="main/bbu_main_img/new.png"  name="new" border="0" class="rollover"/></a></li>
	   
	               <li><a href="GenreChartBoard.action?category=genre"><img src="main/bbu_main_img/genre.png" name="genre" border="0" class="rollover"/></a>
	                  <ul class="sub">
	                     <li><a href="GenreChartBoard.action?category=genre&type=dance"><img src="main/bbu_main_img/dance.png" name="dance" border="0" class="rollover"/></a></li>
	                     <li><a href="GenreChartBoard.action?category=genre&type=balad"><img src="main/bbu_main_img/balad.png" name="balad" border="0" class="rollover"/></a></li>
	                  </ul>
	               </li>
	               <li>
	                  <a href="#"><img src="main/bbu_main_img/payment.png" name="payment_buy" class="rollover" border="0"/></a>
	                  <ul class="sub">
	                     <li><a href="payBuyList.action"><img src="main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
	                     <li><a href="cashCharge.action?my_id=${session.memId}" onclick="return idCheck();"><img src="main/bbu_main_img/cash.png" name="cash" border="0" class="rollover"/></a></li>
	                  </ul>
	               </li>
	            </ul>
	         </div>
	         <div id="header_2">
	            <center>
	               <a href="bbusic.action"><img src="main/bbu_main_img/BBuMainLogo.png" name="bbuMain" border="0"/></a>
	            </center>
	         </div>
	      </div>
	   </div>
	
	   <div id="box">
	      <div id="box2">
	          <div id="content"> 2번 </div>
<body>
	<form method="post" name="chartForm">
		<hr width="880px" size="1" color="gray" align="left" />
			
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})"/>
		<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')"/>
		<input type="button" name="h_download_btt" value="다운" onClick="music_down('s')" />
		<input type="button" name="h_listen_top100_btt" value="TOP50위 듣기" onClick=""/>

		<hr width="880px" size="1" align="left">
		<table align="left">
			<tr align="center">
				<td width="25px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="30px"><g>순위</g></td>
				<td width="80px"></td>
				<td width="520px" colspan="2"><g>곡정보</g></td>
				<td width="120px"><g>좋아요</g></td>
				<td width="70px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="880px" size="3" color="#CC3D3D" align="left" />

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
			<c:forEach var="list" items="${list}" varStatus="checkValue">
				<table>
					<tr align="center" height="70px">
						<td width="25px" height="10px">
							<input type="checkbox" name="chkNo" value="${checkValue.index}">
						</td>
						<td width="30px">
							${(currentPage-1) * 50 + (checkValue.index + 1)}위
						</td>
						<!--이미지-->
						<td width="80px">
							<img src="${list.music_image}" width="50px" height="50px">
						</td>
						<!--곡정보-->
						<td width="100px" align="center">
							<input type="image" name="m_play_btt" src="main/bbu_main_img/m_play_button.png" onclick="list_add(${checkValue.index});">
							<input type="image" name="m_add_btt" src="main/bbu_main_img/m_add_button.png"> &nbsp;
							<input type="image" name="m_page_btt" src="main/bbu_main_img/m_page_button.png">
						</td>
						<td width="420px" align="left">
							${list.title}<br /> ${list.singer} | ${list.album}
						</td>
						<!--좋아요-->
						<td width="120px">
							<input type="image" name="m_like_btt" src="main/bbu_main_img/m_like_button.png">${list.hit}
						</td>
						<!--다운로드-->
						<td td width="70px">
							<input type="image" name="m_download_img" src="main/bbu_main_img/m_download_button.png" onclick="music_down(${checkValue.index });">
						</td>
					</tr>
				</table>
				<hr width="880px" size="1" color="gray" align="left" />
			</c:forEach>
		</c:if>

		<hr width="880px" size="1" color="gray" align="left" />
		<!-- 전체선택 -->
		<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})"/>
		<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')"/>
		<input type="button" name="h_download_btt" value="다운" onclick="music_down(${checkValue.index });"/>
		<input type="button" name="h_collect_btt" value="담기" onClick=""/>
		<input type="button" name="h_listen_top100_btt" value="TOP100위 듣기" onClick=""/>

		<hr width="880px" size="1" align="left" />
		<br>
			<p align="center"><s:property value="pagingHtml" escape="false" /></p>
	</form>
						 </div>
      <div id="box3"> <jsp:include page="/member/loginForm.jsp"/></div>
      <div id="box4"> 5번 </div>
   </div>
</body>
</html>