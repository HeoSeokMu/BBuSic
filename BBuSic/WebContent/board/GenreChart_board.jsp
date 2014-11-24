<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

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
		open("PopupAction.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=650, height=400"); 
	}
	
	/*Confirm 창을 통해 Yes 일경우 down_list 로 이동*/	
	function musicConfirm2(a){	
		if(confirm("결재하시겠습니까?")){
			down_list(a);
		}else{
			alert("취소되었습니다.");
		}
	}
	/* 다운로드 스크립트 */
	function down_list(a){
		var params = "";
		var chkNo = document.getElementsByName("chkNo");
		
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
		open("downPopUp.action?"+params, "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=650, height=400"); 
	}	
	</script>

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
	          <div id="content"></div>
				<body>
					<form method="post" name="chartForm">
						<hr width="880px" size="1" color="gray" align="left" />
						<br /><br />
					
						<hr width="880px" size="1" color="gray" align="left" />
				
						<hr width="880px" size="1" color="gray" align="left" />
				
				
						<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
						<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')">
						<input type="button" name="h_download_btt" value="다운" onClick="musicConfirm2('s');">
				
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
									<tr align="center" height="25px">
										<td width="30px" height="25px">
											<input type="checkbox" name="chkNo" value="${checkValue.index}">
										</td>
										<td width="25px">
											${(currentPage-1) * 10 + (checkValue.index + 1)}
										</td>
										<!--이미지-->
										<td width="70px">
											
										</td>
										<!--곡정보-->
										<td width="300px" align="left">
											<input type="image" name="m_play_btt" src="main/bbu_main_img/m_play_button.png" onclick="list_add(${checkValue.index });">
											<input type="image" name="m_add_btt" src="main/bbu_main_img/m_add_button.png"> &nbsp;
											<input type="image" name="m_page_btt" src="main/bbu_main_img/m_page_button.png">
											${list.title}
										</td>
										<td width="125px">
											<a href="SingerPage.action?category=singerPage&singer=${list.singer}">${list.singer}</a>
										</td>
										<td width="125px">
											<a href="AlbumPage.action?category=albumPage&album=${list.album}">${list.album}</a>
										</td>
										<!--좋아요-->
										<td width="105px">
											<input type="image" name="m_like_btt" src="main/bbu_main_img/m_like_button.png"> ${list.hit}
										</td>
										<!--다운로드-->
										<td td width="80px">
											<input type="image" name="m_download_img" src="main/bbu_main_img/m_download_button.png" onclick="musicConfirm2('s');">
										</td>
									</tr>
								</table>
								<hr width="880px" size="1" color="gray" align="left" />
							</c:forEach>
						</c:if>
						
						<!-- 전체선택 -->
						<input type="button" name="h_selectall_btt" value="전체선택" width="50px" onClick="checkAll2(${blockCount})">
						<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')">
						<input type="button" name="h_download_btt" value="다운" onClick="musicConfirm2('s');">
				
						<hr width="880px" size="1" align="left" />
						<br>
						<p align="center"><s:property value="pagingHtml" escape="false" /></p>
					</form>
					 </div>
      <div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
   </div>
</body>
</html>
