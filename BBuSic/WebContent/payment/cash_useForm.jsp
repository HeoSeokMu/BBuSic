<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 음악구매</title>
	<link rel="stylesheet" href="css/Mainpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
	
	<script type="text/javascript">
		function idCheck() {
			if(${session.memId == null}) {
				alert("로그인을 해주세요");
				window.location = "bbusic.action";
				return false;
			}
		}
		function bbusic_main() {
			document.bbu.action = "bbusic.action";
			document.bbu.submit();
		}
	</script>
</head>

<body style="overflow: hidden;">
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
					<form name="bbu" method="post">
						<input type="hidden" name="id" value="${session.memId}"/>
						<a href="#"><img src="main/bbu_main_img/BBuMainLogo.png" name="bbuMain" border="0" onclick="bbusic_main()"/></a>
					</form>
				</center>
			</div>
		</div>
	</div>

	<div id="box">
		<div id="box2">
	    	<div id="content">
	    		${session.memId} 님의 뿌숑 캐쉬 이용 내역<br/>
	    		<center>
		    		<table>
		    			<tr>
		    				<td>
		    					뿌숑 캐쉬 잔액 : ${delete_cash} 원 <br/>
		    					<input type="button" name="cashCharge" value="캐쉬충전" onclick="javascript:window.location='cashCharge.action?my_id=${session.memId}'"/>
		    					<input type="button" name="cashDelete" value="소명 예정 캐쉬" onclick="javascript:window.location=''"/>
		    				</td>
		    				<td>
		    					뿌숑 캐쉬는 뿌숑의 모든 상품(클럽, 티켓, 개별곡, 뮤직비디오 등) 구매 시 사용 하실 수 있습니다<br/>
								결제금액은 뿌숑 캐쉬 충전금액에 부가가치세 10%가 포함된 실제 결제된 금액입니다.<br/>
								곡/영상/앨범 재 다운로드는 마이뮤직 > 구매목록에서 가능합니다.
		    				</td>
		    			</tr>
		    		</table>
		    		<br/><br/>
		    		<form method="post" name="">
						<hr width="880px" size="1" color="gray" align="left" />
						<hr width="880px" size="1" align="left">
						<table align="left">
							<tr align="center">
								<td width="30px">NO</td>
								<td width="80px">날짜</td>
								<td width="120px">내용</td>
								<td width="70px">적립금액</td>
								<td width="70px">차감금액</td>
								<td width="70px">유효기간</td>
							</tr>
						</table>
						<hr width="880px" size="3" color="#CC3D3D" align="left" />
				
						<c:set var="count" value="0" />
						<c:if test="${totalCount < 1}">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<table border="0">
								<tr>
									<td align="left">뿌숑 캐쉬 이용내역이 없습니다.</td>
								</tr>
							</table>
						</c:if>
				
						<c:if test="${totalCount > 0}">
							<table>
								<tr>
									<th>No</th><th>날짜</th><th>내용</th><th>적립금액</th><th>차감금액</th><th>유효기간</th>
								</tr>
								<c:forEach var="list" items="${list}">
								<tr align="center" height="70px">																	
									<!-- No -->
									<td width="30px">
										${(currentPage-1) * 10 + (checkValue.index + 1)}
									</td>
									<!--날짜-->
									<td width="80px">
										${list.cashuse_date}
									</td>
									<!--내용-->
									<td width="100px" align="center">
										${list.content}
									</td>
									<!--적립금액-->
									<td width="420px" align="left">
										${list.cash}
									</td>
									<!--차감금액-->
									<td width="120px">
										${list.sub_cash}
									</td>
									<!--유효기간-->
									<td td width="70px">
										${list.delete_expiration_date}
									</td>
								</tr>
								<hr width="880px" size="1" color="gray" align="left" />
								</c:forEach>
							</table>
						</c:if>
						
						<hr width="880px" size="1" align="left" />
						<br/>
						<p align="center">
							<s:property value="pagingHtml" escape="false"/>
						</p>
					</form>
				</center>
	    	</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>