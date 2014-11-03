<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style type="text/css">
	html, body { width:100%; height:100%;  margin:0px; padding:0px; }
	li {list-style:none;}
	ui, li, h1, h2, h3, h4, h5, ol, dl, dt, dd, p, body {margin:0; padding:0;}
	
	#header {width:100%; position:fixed; left:0; top:0; z-index:100;}
	#header h1 {position:absolute; width:141px; cursor:pointer; left:50%; margin-left:-70px; top:10px; text-align:center; z-index:3;}
	#header .header_left {height:0; font-size:0; line-height:0; z-index:1; width:50%; position:absolute; left:-150px; top:35px; border:13px solid #fff; border-right:13px solid transparent;}
	#header .header_right {height:0; font-size:0; line-height:0; z-index:1; width:50%; position:absolute; right:-150px; top:35px; border:13px solid #fff; border-left:13px solid transparent;}
	#header ul {position:absolute; width:1024px; white-space:nowrap; text-align:center; z-index:2; left:50%; top:35px; margin-left:-460px;}
	#header ul li {display:block; position:relative; float:left; width:200px; font-size:18px; line-height:26px; height:26px; overflow:hidden; text-align:center;}
	#header ul li span {cursor:pointer; position:absolute; top:0; left:45px; width:100px; font-weight:bold; display:block; overflow:hidden; color:#888;}
	#header ul li b {display:block; color:#000; width:100px; font-weight:bold;}
	#header ul li.about {width:100px;}
	
	#box { width:800px; height:auto; margin:0px auto; }
	#box div { float:left; }
	
	 #box1 { width:100%; height:100px; background-color:#ffdddd; }
	 #box2 { width:80%; height:auto; }
	 #box2_1 { width:100%; height:300px; background-color:#ddddff; }
	 #box2_2 { width:100%; height:500px; background-color:yellow; }
	 #box3 { width:20%; height:100px; background-color:#ddffdd; }
	 #box4 { width:100%; height:100px;  background-color:green;}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"/>
<script type="text/javascript">
	$(function(){
	     $("#box3").height($("#box2").height());
	});
	
	function loadXMLDoc(abc) { 
       alert("aaa");
        var xmlhttp; 
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari 
            xmlhttp = new XMLHttpRequest(); 
        } else {// code for IE6, IE5 
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); 
        } 
        xmlhttp.onreadystatechange = function() { 
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) { 
                document.getElementById("box2_1").innerHTML = xmlhttp.responseText; 
            } 
        };
        var BaBo = abc;
        xmlhttp.open("GET", BaBo + ".action", true);
        xmlhttp.send(); 
    } 
</script>
<!-- 
<div id="header">
	<h1>메롱</h1>
	<div calss=""></div>
	<div calss=""></div>
	<ul>
		<li class="realtime_chart"><span>실시간 차트</span></li>
		<li class="new_chart"><span>최신 차트</span></li>
		<li class="genre_chart"><span>장르 차트</span></li>
		<li class="payment"><span>상품 구매</span></li>
	</ul>
</div>

<div id="container">
	<div id="realtime_chart">
	</div>
	
	<div id="new_chart">
	</div>

	<div id="genre_chart">
	</div>
	
	<div id="payment">
	</div>
</div>
 -->
 
<div id="box">
	<div id="box1"> 
		<input type="button" value="상품구매" onclick="loadXMLDoc(Buy)">
		<input type="button" value="멜론캐쉬충전" onclick="loadXMLDoc(Cash)">
		<input type="button" value="이벤트" onclick="loadXMLDoc(Event)">
		<input type="button" value="고객센터" onclick="loadXMLDoc(Customer)">
	</div>
	<div id="box2">
    	<div id="box2_1"> 2번 </div>
    	<div id="box2_2"> 3번 </div>
	</div>
	<div id="box3"> 4번 </div>
	<div id="box4"> 5번 </div>
</div>

