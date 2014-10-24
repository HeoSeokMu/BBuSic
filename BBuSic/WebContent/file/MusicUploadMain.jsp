<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script>
	function p_up(){		 
		 open("MusicUploadForm.action", "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=800, height=550");	
	}		
</script>
<body>
	<form name="picform" method="get">
		<div style="width:490;height:390;overflow-y:scroll;white-space:nowrap;">	    		
	    			<input type="button" value="노래 올리기" onclick="p_up();">   	
	    	
	</form>
</body>
