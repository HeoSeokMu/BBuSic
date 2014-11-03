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
		
		
		#box { width:1000px; height:auto; margin:0px auto; }
		#box div { float:left; }
		
		#header { width:100%; height:200px;}
		#box2 { width:80%; height:auto; }
		#box2_1 { width:100%; height:300px; background-color:#ddddff; }
		#box2_2 { width:100%; height:100px; background-color:yellow; }
		#box3 { width:20%; height:300px; background-color:#ddffdd; }
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
		});
	</script>

</head>
<body>
	<div id="box">
		<div id="header">
			<ul class="menu">
				<li><a href="#"><img src="bbu_main_img/chart.png"  border="0" alt="chart" class="rollover"></a></li>
				<li><a href="#"><img src="bbu_main_img/new.png"  border="0" alt="new" class="rollover"></a></li>
				<li><a href="#">
					<img src="bbu_main_img/genre.png"  border="0" alt="genre" class="rollover"></a>
					<ul class="sub">
						<li><a href="#"><img src="bbu_main_img/dance.png" name="dance" class="rollover" border="0"></a></li>
						<li><a href="#"><img src="bbu_main_img/balad.png" name="balad" class="rollover" border="0"></a></li>
					</ul>
				</li>
				<li>
					<a href="#"><img src="bbu_main_img/payment.png" name="payment" class="rollover" border="0"></a>
					<ul class="sub">
						<li><a href="#"><img src="bbu_main_img/bbu_payment.png" name="payment" class="rollover" border="0"></a></li>
						<li><a href="#"><img src="bbu_main_img/cash.png" name="cash" class="rollover" border="0"></a></li>
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
		<div id="box3"> 4번 </div>
		<div id="box4"> 5번 </div>
	</div>
</body>
</html>