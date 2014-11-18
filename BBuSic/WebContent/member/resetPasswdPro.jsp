<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 메인</title>
	<link rel="stylesheet" href="css/Subpage_Frame.css"></link>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/header_jquery.js"></script>
</head>

<script>
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
			window:location="/BBuSic/resetPasswd.action?id="+userinput.id.value;
		}
	}

	function checkCK(){
		if("${check}" == "check"){
			alert("이메일을 발송했습니다. 인증번호를 기입해주세요.");
		}
	}
	function idCheck() {
		if(${session.memId == null}) {
			alert("로그인을 해주세요");
			window.location = "bbusic.action";
			return false;
		}
	}
</script>
<style>
	.next{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:200px;
		height:40px;
		text-align:center;
		padding:3px;
	}
	.id{
		background-color:#dddddd;
		border:1px #dddddd dashed;
		width:400px;
		height:40px;
		text-align:center;
		padding:3px;
	}
</style>

<body style="overflow: hidden;" onload="checkCK()">
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
			<a href="findIdForm.action"><img src="member/image/findId.png" name="chart" border="0"/></a>
			<a href="resetPasswdForm.action"><img src="member/image/resetPasswd.png" name="chart" border="0"/></a>
		<div id="box2">
			<div id="content">		
				<center>
					<h2>비밀번호 재설정</h2>
						<c:if test="${date != null}">
							<p>비밀번호 재설정은 회원정보에 등록된 이메일 인증이 필요합니다.</p>
							<table width="400" border="0" cellspacing="0" cellpadding="3" align="center" class="id">
								<tr>
									<td align="left"><c:out value="아이디 : ${id}"/></td> <td align="right">가입일 : ${date}</td>
								</tr>
						    </table><br/>
						    <table border="0">
						    	<tr>
						    		<td align="left">
									   [인증번호 받기] 버튼을 클릭하면, 해당 연락처로 인증번호 숫자 4자리가 전송됩니다
						    		</td>
						    	</tr>			    	
						    </table>
						    <br/>
						    <table>
							  	<form method="post" action="sendEmail.action" name="userinput">
							  		<tr>
										<td width="200">이메일</td>
										<td width="400" align="left">
										<input type="hidden" name="category" value="resetPasswd"/>
										<input type="hidden" name="date" value="${date}"/>
										<input type="hidden" name="id" value="${id}"/>
										<input type="text" name="email" value="${email}" size="20" maxlength="25" readonly="readonly"/>
										<input type="submit" name="send" value="인증번호 발송"/><br/>
										<input type="hidden" name="check" value="no"/>
										<input type="text" name="confirmNumber" size="15" maxlength="15"/>
										<input type="button" value="인증하기" onclick="return checkConfirm(this.form)"/>
										</td>
									</tr>
								</form>
							</table>
							<br/>
						</c:if>
						<c:if test="${date == null}">
							입력하신 정보와 일치하는 아이디가 없습니다.<br/><br/>
							<input type="button" class="next" style="width: 100px" value="아이디 찾기" onclick="javascript:window.location='findIdForm.action'"/><br/>
						</c:if>
					</center>
				</div>
			</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>