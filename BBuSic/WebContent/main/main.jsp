<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style type="text/css">
	html, body { width:100%; height:100%;  margin:0px; padding:0px; }
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

