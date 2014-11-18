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
<script language="JavaScript">

function bbusic_main() {
         document.bbu.action = "bbusic.action";
         document.bbu.submit();
      }
      
function idChecked() {
	if(${session.memId == null}) {
		alert("로그인을 해주세요");
		window.location = "bbusic.action";
		return false;
	}
}

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
	
	if(userinput.email_check.value != "check"){
		alert("이메일 중복체크를 해주세요");
		return false;
	}
	if(userinput.id_check.value != "check"){
		alert("아이디 중복체크를 해주세요");
		return false;
	}
	if(userinput.nick_check.value != "check"){
		alert("닉네임 중복체크를 해주세요");
		return false;
	}
}

function idCheck(){
	if(document.userinput.id_check.value == "check"){
		document.userinput.id_check.value = "no";
	}
}

function nickCheck(){
	if(document.userinput.nick_check.value == "check") {
		document.userinput.nick_check.value = "no";
	}
}

function emailCheck(){
	if(document.userinput.email_check.value == "check") {
		document.userinput.email_check.value = "no";
	}
}

 function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        idform = /^[a-zA-Z0-9_-]{6,20}$/;
        if(!idform.test(userinput.id.value)){
	         alert("ID는 6~20자리여야하며 영문과 숫자, 특수문자( _ - )만 사용가능합니다.");
	         return false;
	      }
        
        if (userinput.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        
        // url과 사용자 입력 id를 조합합니다.
        url = "/BBuSic/confirmId.action?id=" + userinput.id.value;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirmId", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
 
 function openConfirmNick(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.nickname.value == "") {
            alert("닉네임을 입력하세요");
            return;
        }
        
        // url과 사용자 입력 id를 조합합니다.
        url = "/BBuSic/confirmNick.action?nickname=" + userinput.nickname.value;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirmNick", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
 
 function openConfirmEmail(userinput) {
	 mailform = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
     // 아이디를 입력했는지 검사
     if (userinput.email.value == "") {
         alert("이메일을 입력하세요");
         return;
     }
     
     if(!mailform.test(userinput.email.value)){
         alert("이메일이 형식에 맞지 않습니다..");
         return false;
      }
     // url과 사용자 입력 id를 조합합니다.
     url = "/BBuSic/confirmEmail.action?email=" + userinput.email.value;
     
     // 새로운 윈도우를 엽니다.
     open(url, "confirmEmail", 
     "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
 }
	</script>
<style type="text/css">
	.next{
		background-color:#7eb813;
		color:#ffffff;
		border:1px #dddddd dashed;
		width:70px;
		height:40px;
		text-align:center;
		padding:3px;
</style>

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
                     <li><a href="cashCharge.action?my_id=${session.memId}" onclick="return idChecked();"><img src="main/bbu_main_img/cash.png" name="cash" border="0" class="rollover"/></a></li>
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
			<img src="member/image/img_inputForm.png"/>		
		<center>			
		<form method="post" action="confirm.action" name="userinput" onSubmit="return checkIt()">
			
						<h2>정보입력</h2>

			<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td width="200" align="left">이름</td>
					<td width="400" align="left">
						<input type="text" name="name" size="10" maxlength="13"/>
					</td>
				</tr>
				<tr>
					<td width="200" align="left">생년월일</td>
					<td width="200" align="left">
						<select name="year">
								<c:forEach var="for" begin="1900" end="2014" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
						<select name="month">
								<c:forEach var="for" begin="1" end="12" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
						<select name="date">
								<c:forEach var="for" begin="1" end="30" step="1">
									<option><c:out value="${for}" /></option>
								</c:forEach>
						</select>
					</td>
				</tr>
				<input type="hidden" name="birth"/>
				<tr>
					<td width="200" align="left">성별</td>
					<td width="400" align="left">
						<input type="radio" name="sex"value="남자"/> 남자 
						<input type="radio" name="sex" value="여자"/> 여자
					</td>
				</tr>
				<tr>
					<td width="200" align="left">이메일</td>
					<td width="400" align="left">
						<input type="text" name="email" size="40" maxlength="30" onkeydown="emailCheck()"/>
						<input type="button" name="confirm_email" value="중복체크" OnClick="return openConfirmEmail(this.form)"/>
						<input type="hidden" name="email_check" value = "no"/>
					</td>
				</tr>
				<tr>
					<td width="200" align="left">아이디</td>
					<td width="400" align="left">
						<input type="text" name="id" size="20" maxlength="14" onkeydown="idCheck()"/>
						<input type="button" name="confirm_id" value="중복체크" OnClick="return openConfirmid(this.form)"/>
						<input type="hidden" name="id_check" value = "no"/>
					</td>
				</tr>
				<tr>
					<td width="200" align="left">비밀번호</td>
					<td width="400" align="left">
						<input type="passwd" name="passwd" size="20" maxlength="10"/><br/>
						<input type="passwd2" name="passwd2" size="20" maxlength="10"/>
					</td>
				</tr>
				<tr>
					<td width="200" align="left">닉네임</td>
					<td width="400" align="left">
						<input type="text" name="nickname" size="20" maxlength="10" onkeydown="nickCheck()"/>
						<input type="button" name="confirm_nick" value="중복체크" onclick="openConfirmNick(this.form)"/>
						<input type="hidden" name="nick_check" check = "no"/>
					</td>
				</tr>
			</table>
			<br/>
			<input type="submit" class="next" name="confirm" value="다음단계"/>
		</form>
		<br/>
		</center>
			</div>
		</div>
		<div id="box3"> 5번 </div>
	</div>
</body>
</html>