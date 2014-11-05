<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>뿌숑뮤직 메인</title>
	<style>
		ul li { display:inline; list-style-type: none; float:left; }
		ul.sub li {}
		
		#box { width:1200px; height:auto; margin:0px auto; }
		#box div { float:left; position:}
		
		#header { width:100%; height:200px;}
		#box2 { width:75%; height:auto; }
		#box2_1 { width:100%; height:300px; background-color:#ddddff; }
		#box2_2 { width:100%; height:100px; background-color:yellow; }
		#box3 { width:25%; height:300px; background-color:#ddffdd; }
		#box4 { width:100%; height:100px;  background-color:green;}
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	
	<script type="text/javascript">
		$(function() {
			$("img.rollover").mouseover(function(){
				$(this).attr("src", $(this).attr("src").replace(/^(.+)(\.[a-z]+)$/, "$1_on$2"));
			}).mouseout(function() {
				$(this).attr("src", $(this).attr("src").replace(/^(.+)_on(\.[a-z]+)$/, "$1$2"));
			}).each(function(){
				$("<img>").attr("src", $(this).attr("src").replace(/^(.+)(\.[a-z]+)$/, "$1_on$2"));
			});
			
			$("ul.sub").hide();
			$("ul.menu li").hover(function(){
				$(">ul:not(:animated)", this).slideDown("fast");
			}, function() {
				$(">ul", this).slideUp("fast");
			});
			
			$("img[name=payment]").click(function(){
				$("#content").load("payBuyList.action");
			});
			$("img[name=cash]").click(function(){
				$("#content").load("cashCharge.action");
			});
			$("img[name=chart]").click(function(){
				$("#content").load("ChartBoard.action?category=chart");
			});
			$("img[name=new]").click(function(){
				$("#content").load("NewChartBoard.action?category=new");
			});
			$("img[name=dance]").click(function(){
				$("#content").load("GenreChartBoard.action?category=genre&genre=dance");
			});
			$("img[name=balad]").click(function(){
				$("#content").load("GenreChartBoard.action?category=genre&genre=balad");
			});
			$("img[name=genre]").click(function(){
				$("#content").load("GenreChartBoard.action?category=genre");
			});
		});
	</script>
</head>

<body style="overflow: hidden;">
	<div id="box">
		<div id="header">
			<ul class="menu">
				<li><a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/chart.png" name="chart" border="0" alt="chart" class="rollover"></a></li>
				<li><a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/new.png"  name="new" border="0" alt="new" class="rollover"></a></li>

				<li><a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/genre.png" name="genre" class="rollover" border="0"></a>
					<ul class="sub">
						<li><a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/dance.png" name="dance" class="rollover" border="0"></a></li>
						<li><a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/balad.png" name="balad" class="rollover" border="0"></a></li>
					</ul>
				</li>
				<li>
					<a href="#"><img src="http://localhost:8000/BBuSic/main/bbu_main_img/payment.png" name="payment" class="rollover" border="0"></a>
					<ul class="sub">
						<li><img src="http://localhost:8000/BBuSic/main/bbu_main_img/bbu_payment.png" name="payment" class="rollover" border="0"></li>
						<li><img src="http://localhost:8000/BBuSic/main/bbu_main_img/cash.png" name="cash" class="rollover" border="0"></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div id="box">
		<div id="box2">
	    	<div id="content"> 2번 </div>
<!--    	<div id="box2_2"> 3번 </div>  -->
		</div>
		<div id="box3"> <jsp:include page="/member/loginForm.jsp" /></div>
		<div id="box4"> 5번 </div>
	</div>
</body>
</html>