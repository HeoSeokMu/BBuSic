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

<style>
.next {
	background-color: #7eb813;
	color: #ffffff;
	border: 1px #dddddd dashed;
	width: 70px;
	height: 40px;
	text-align: center;
	padding: 3px;
}
</style>
<script language="JavaScript">

function checkIt() {	
	var userinput = eval("document.userinput");
	userinput.birth.value=userinput.year.value +"/"+ userinput.month.value +"/"+ userinput.date.value;
	
	if (!userinput.id.value) {
		alert("ID를 입력하세요");
		return false;
	}

	if (!userinput.passwd.value) {
		alert("비밀번호를 입력하세요");
		return false;
	}
	if (userinput.passwd.value != userinput.passwd2.value) {
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}

	if (!userinput.sex.value) {
		alert("성별을 선택하세요");
		return false;
	}
	
	if (!userinput.email.value) {
		alert("이메일을 입력하세요");
		return false;
	}
	
	if (!userinput.name.value) {
		alert("사용자 이름을 입력하세요");
		return false;
	}
	
	if (!userinput.nickname.value) {
		alert("닉네임을 입력하세요");
		return false;
	}
	
	if(!userinput.check.value){
		alert("아이디 중복체크를 해주세요");
		return false;
	}
}

function reCheck(){
	if(!document.userinput.id_check.value) {
		document.userinput.id_check.value == null;
	}
}

function checkCK(){
	if("${check}"=="check") {
		alert("정보수정이 완료되었습니다.");
		return;
	}
}

 function openConfirmNick(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.nickname.value == "") {
            alert("닉네임을 입력하세요");
            return;
        }
        
        if (userinput.nickname.value == "${mDTO.nickname}") {
            alert("변경사항이 없습니다.");
            return;
        }
        
        // url과 사용자 입력 id를 조합합니다.
        url = "/BBuSic/confirmNick.action?nickname=" + userinput.nickname.value;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirmNick", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
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
			<a href="modify.action"><img src="member/image/img_myInform.png" name="chart" border="0"/></a>
			<a href="passwdForm.action"><img src="member/image/img_change_pw.png" name="chart" border="0"/></a>
			<a href="resetPasswdForm.action"><img src="member/image/img_login_inform.png" name="chart" border="0"/></a>
			<a href="deleteForm.action"><img src="member/image/img_delete.png" name="chart" border="0"/></a>
		<div id="box2">
			
			<div id="content">		
				<center><br/>
					<h2>정보 수정</h2>
				<br/>
					<form method="post" action="modifyPro.action" name="userinput" onSubmit="return checkIt()">
						<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">			
							<tr>
								<td width="200">아이디</td>
								<td width="400">
									<c:out value="${mDTO.id}"/>
									<input type="hidden" name="id" value="${mDTO.id}"/>
								</td>
							</tr>
							<tr>
								<td width="200">닉네임</td>
								<td width="200">
									<input type="text" name="nickname" value="${mDTO.nickname}"/>
									<input type="button" name="confirm_nick" value="중복확인" onclick="openConfirmNick(this.form)"/>
								</td>
							</tr>
							<tr>
								<td width="200">성별</td>
								<td width="400">
									<c:out value="${mDTO.sex}"/>
								</td>
							</tr>
							<tr>
								<td width="200">생년월일</td>
								<td width="400">
									<c:out value="${mDTO.birth}"/>
								</td>
							</tr>
							<tr>
								<td width="200">이메일</td>
								<td width="400">
									<input type="text" name="email" value="${mDTO.email}"/>
								</td>
							</tr>
						</table><br/>
						<input type="submit" class="next" name="soaka" value="정보수정"/>
					</form>
					<br/>
					</center>
			</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>