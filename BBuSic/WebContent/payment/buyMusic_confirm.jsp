<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>뿌숑뮤직 상품구매(본인인증)</title>
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<style>
		.next{
			background-color:#7eb813;
			color:#ffffff;
			border:1px #dddddd dashed;
			width:70px;
			height:40px;
			text-align:center;
			padding:3px;
		}
	</style>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
	
	<script type="text/javascript">
		function checkIt(){
			if(!document.userinput.email.value){
				alert("이메일을 입력하지 않으셨습니다.");
				document.userinput.eamil.focus();
				return false;
			}
		}
	
		function checkConfirm(userinput){
			if(!userinput.confirmNumber.value){
				alert("인증번호를 입력하지 않으셨습니다.");
				userinput.confirmNumber.focus();
				return false;
			}
			if(userinput.confirmNumber.value != "${num}"){
				alert("인증번호가 다릅니다.");
				document.myform.check.value = "no";
				return false;
			}else{
				alert("인증되었습니다.");
				document.myform.check.value = "check";
			}
		}
	
		function checkNum(){
			if(document.myform.check.value != "check"){
				alert("인증번호를 확인하세요");
				return false;
			}
		}
	
		function checkCK(){
			if("${check}" == "check"){
				alert("이메일을 발송했습니다. 인증번호를 기입해주세요.");
				return false;
			}
		}
		
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

<body style="overflow: hidden;" onload="return checkCK()">
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
								<li><a href="payBuyList.action?buy_id=${session.memId}"><img src="main/bbu_main_img/bbu_payment.png" name="payment" border="0" class="rollover"/></a></li>
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
	    	<div id="content">
	    		<center>
					<h2>본인 인증</h2>
					<table>
						<tr>
							<td align="left">· 아이디/비밀번호 분실 등 본인여부 확인이 필요한 경우 사용됩니다.</td>
						</tr>
						<tr>
							<td align="left">· 허위 정보를 입력하면 본인확인을 할 수 없어 민원발생 시 도움을 드릴 수 없습니다.</td>
						</tr>
					</table>
					<br/>
					<form method="post" action="buy_SendEmail.action" name="userinput" onsubmit="return checkIt();">
						<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
							<tr>
								<td>사용자 아이디</td>
								<td>
									<input type="hidden" name="music_id" value="${music_id}"/>
									${music_id}
								</td>
							</tr>
							<tr>
								<td>곡명</td>
								<td>
									<input type="hidden" name="title" value="${title}"/>
									${title}
								</td>
							</tr>
							<tr>
								<td>가수</td>
								<td>
									<input type="hidden" name="singer" value="${singer}"/>
									${singer}
								</td>
							</tr>
							<tr>
								<td>앨범</td>
								<td>
									<input type="hidden" name="album" value="${album}"/>
									${album}
								</td>
							</tr>
							<tr>
								<td>구매일</td>
								<td>
									<input type="hidden" name="buy_date" value="${buy_date}"/>
									${buy_date}
								</td>
							</tr>
							<c:if test="${payMethod.equals("캐쉬")}">
								<tr>
									<td>
										차감 캐쉬
									</td>
									<td>
										<input type="hidden" name="delete_cash" value="${cash_price}" />
										&nbsp;/&nbsp;잔여캐쉬&nbsp;&nbsp;${delete_cash -  (cash_price * m_count)}
									</td>
								</tr>
							</c:if>
							<c:if test="${payMethod.equals("결제")}">
								<tr>
									<td>
										결제 금액
									</td>
									<td>
										<input type="hidden" name="money_in" value="${money_in}" />
										<fmt:formatNumber value="${money_in + (money_in * 0.1)}"/> 원
										<input type="hidden" name="delete_cash" value="${delete_cash}" />
									</td>
								</tr>
							</c:if>
							<tr>
								<td width="200">이메일</td>
								<td width="400" align="left">
									<input type="text" name="email" size="20" maxlength="25" placeholder="이메일을 입력해주세요" value="${email}"/>
									<input type="submit" name="send" value="인증번호 발송"/><br/>
									<input type="text" name="confirmNumber" size="20" maxlength="15" placeholder="인증번호를 입력해주세요"/>
									<input type="button" value="인증하기" onclick="return checkConfirm(this.form)"/>
								</td>
							</tr>
						</table>
					</form>
					<br/>
					<form method="post" action="cashUpdate_sub.action" name="myform" onsubmit="return checkNum();">
						<input type="text" name="music_id" value="${music_id}"/>
						<input type="text" name="title" value="${title}"/>
						<input type="text" name="singer" value="${singer}"/>
						<input type="text" name="album" value="${album}"/>
						<input type="text" name="buy_date" value="${buy_date}"/>
						<input type="text" name="content" value="음악구매"/>
						<c:if test="${payMethod.equals("결제")}">
							<input type="text" name="money_in" value="${600 * m_count}"/>
						</c:if>
						<c:if test="${payMethod.equals("캐쉬")}">
							<input type="text" name="delete_cash" value="${delete_cash}"/>
						</c:if>
						<input type="submit" class="next" name="confirm" value="인증완료"/>
					</form>
				</center>
				<br/><br/>
	   		</div>
		</div>
		<div id="box3"> <center><br/><br/>뿌숑뮤직 : 서울특별시 강남구 역삼동 823-24 남도빌딩 2층 / 뿌숑뮤직대표이사 : 허효성 / 문의전화(평일 09:00~24:00) : 010-9136-3540(무료) /<br/> ©뿌숑엔터테인먼트, Inc. All rights reserved.</center> </div>
	</div>
</body>
</html>