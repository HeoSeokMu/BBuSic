<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
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
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");
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
		<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/header_jquery.js"></script>
	<style type="text/css">
	g{
		color: black;
		font-size: 10pt;
	}
	</style>
</head>

<body style="overflow: hidden;">
	<div id="box">
	      <div id="header">
	         <div id="header_1">
	            <ul class="menu">
	               <li><a href="ChartBoard.action?category=chart"><img src="main/bbu_main_img/chart.png" 

name="chart" border="0" class="rollover"/></a></li>
	               <li><a href="NewChartBoard.action?category=new"><img src="main/bbu_main_img/new.png"  

name="new" border="0" class="rollover"/></a></li>
	   
	               <li><a href="GenreChartBoard.action?category=genre"><img 

src="main/bbu_main_img/genre.png" name="genre" border="0" class="rollover"/></a>
	                  <ul class="sub">
	                     <li><a href="GenreChartBoard.action?category=genre&type=dance"><img 

src="main/bbu_main_img/dance.png" name="dance" border="0" class="rollover"/></a></li>
	                     <li><a href="GenreChartBoard.action?category=genre&type=balad"><img 

src="main/bbu_main_img/balad.png" name="balad" border="0" class="rollover"/></a></li>
	                  </ul>
	               </li>
	               <li>
	                  <a href="#"><img src="main/bbu_main_img/payment.png" name="payment_buy" 

class="rollover" border="0"/></a>
	                  <ul class="sub">
	                     <li><a href="payBuyList.action"><img src="main/bbu_main_img/bbu_payment.png" 

name="payment" border="0" class="rollover"/></a></li>
	                     <li><a href="cashCharge.action?my_id=${session.memId}" onclick="return idCheck

();"><img src="main/bbu_main_img/cash.png" name="cash" border="0" class="rollover"/></a></li>
	                  </ul>
	               </li>
	            </ul>
	         </div>
	         <div id="header_2">
	            <center>
	               <a href="bbusic.action"><img src="main/bbu_main_img/BBuMainLogo.png" name="bbuMain" 

border="0"/></a>
	            </center>
	         </div>
	      </div>
	   </div>
	
	   <div id="box">
	      <div id="box2">
	          <div id="content"></div>
	<table style="width: 880px;" rules="none" align="center">
		<tr>
			<td>
				<div style="font-weight:bold; font-size:24px; line-height:30px;">
					아티스트 채널
				</div>
			</td>
		</tr>
	</table>
	<br /><br />
	<c:if test="${singerInfo.singer == null}">
	<table style="width: 880px;height: 290px" border="1" rules="none" align="center">
	<tr>
		<td align="center">
			등록된 가수 정보가 없습니다.
		</td>
	</tr>
	</table>
	</c:if>
	<c:if test="${singerInfo.singer != null}">
	<table style="width: 880px;height: 270px" border="1" rules="none">
		<tr>
			<td rowspan="6" width="250px"  align="center">
				<table style="width: 200px;height: 220px" border="1">
					<tr>
						<td>
							<img src="/BBusic/upload/${imagePath}" style="width: 100%;height: 100%;" />
						</td>
					</tr>
				</table>
					<input type="button" value="앨범듣기" onclick="" />
					<input type="button" value="다운로드" onclick="" />
			</td>
			<td width="20px">
			</td>
			<td width="410px" height="45px" colspan="2">
				<font size="6"><strong>${singerInfo.singer}</strong></font>
			</td>
			<td width="220px" rowspan="6" align="center" >
				<!-- <input type="button" value="팬맺기" style="width: 100px;height: 40px;" onclick="p_hitup();"/> -->
				<%-- <input type="text" readonly="readonly" value="${singerInfo.p_hit}" style="width: 100px;height: 34px;text-align: center;"/> --%>
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				데뷔
			</td>
			<td height="1px">
				${singerInfo.year}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				생일
			</td>
			<td height="1px">
				${singerInfo.birth}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				활동유형
			</td>
			<td height="1px">
				${singerInfo.maingenre}
			</td>
		</tr>
		<tr>
			<td width="20px">
			</td>
			<td width="100px">
				소속사
			</td>
			<td height="1px">
				${singerInfo.entertain}
			</td>
		</tr>
		<tr>
			<td colspan="3" height="50px">
			</td>
		</tr>
	</table>
	</c:if>
	
	<br />
	<br />
	
	<table style="width: 880px;" rules="none" align="center">
		<tr>
			<td>
					발매곡 (<strong>${totalCount}</strong>)
			</td>
		</tr>
	</table>
	
	
	<br />
	
	<form method="post" name="chartForm">
	
	<hr width="885px" size="1" align="center" />
	<table width="885px" align="center">
							<tr>
								<td align="left">
									<input type="button" name="h_selectall_btt" value="전체선택" 	width="50px" onClick="checkAll2(${blockCount})"/>
									<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')"/>
									<input type="button" name="h_download_btt" value="다운" onClick="music_down('s')"/>
								</td>
							</tr>
						</table>
	<hr width="885px" size="1" align="center" />
	
	
	
		<table align="center">
			<tr align="center">
				<td width="30px" height="10px">
					<input type="checkbox" name="c_all" onclick="checkAll(this.checked, ${blockCount})">
				</td>
				<td width="35px"><g>NO</g></td>
				<td width="370px"><g>곡명</g></td>
				<td width="250px"><g>앨범</g></td>
				<td width="105px"><g>좋아요</g></td>
				<td width="80px"><g>다운</g></td>
			</tr>
		</table>
		<hr width="885px" size="3" color="#CC3D3D" align="center" />
	<c:if test="${totalCount < 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<table>
		<tr>
			<td align="left">게시물이 존재하지 않습니다.</td>
		</tr>
	</table>
	<br />
	<br />
	</c:if>
	
	<c:if test="${totalCount > 0}">
	<c:forEach var="list" items="${list}" varStatus="checkValue">
	<table align="center">
		<tr align="center">
			<td width="30px" height="25px">
				<input type="checkbox" name="chkNo" value="${list}" />
			</td>
			<td width="35px">
				${(currentPage-1) * 10 + (checkValue.index + 1)}
			</td>
			<!--곡정보-->
			<td width="370px" align="left">
				<img src="board/images/m_play_button.png" />
				<img src="board/images/m_add_button.png" /> &nbsp;
				<img src="board/images/m_page_button.png" />
				${list.title}
			</td>
			<td width="250px">
				<a href="AlbumPage.action?category=albumPage&album=${list.album}">${list.album}</a>
			</td>
			<!--좋아요-->
			<td width="105px">
				<c:if test="${session.memId != null}">
					<img src="board/images/m_like_button.png" onclick="like(${list.num})" /> ${list.hit}
				</c:if>
				<c:if test="${session.memId == null}">
					<img src="board/images/m_like_button.png" onclick="return alert('로그인해주세요')" /> ${list.hit}
				</c:if>
			</td>
			<!--다운로드-->
			<td td width="80px">
				<img name="m_download_img" src="board/images/m_download_button.png" onclick="musicConfirm2('s');"/>
			</td>
		</tr>
	</table>
	<hr width="880px" size="1" color="gray" align="center" />
	</c:forEach>
	</c:if>
		
	<!-- 전체선택 -->
	<table width="885px" align="center">
							<tr>
								<td align="left">
									<input type="button" name="h_selectall_btt" value="전체선택" 	width="50px" onClick="checkAll2(${blockCount})"/>
									<input type="button" name="h_listen_btt" value="듣기" onClick="list_add('s')"/>
									<input type="button" name="h_download_btt" value="다운" onClick="music_down('s')"/>
								</td>
							</tr>
						</table>

	<hr width="880px" size="1" align="center" />
	<br />
	<center>
														<s:property value="pagingHtml" escape="false" />
												</center>
	</form>
						 </div>
      <div id="box3"></div>
   </div>
</body>
</html>