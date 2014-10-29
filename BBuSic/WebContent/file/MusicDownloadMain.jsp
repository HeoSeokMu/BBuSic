<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
	function p_up(){		 
	 open("MusicDownloadForm.action", "confirm", 
	       "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=600, height=400");	
	}		
</script>
<body>
	<form name="picform" method="get">
		<div style="width:490;height:390;overflow-y:scroll;white-space:nowrap;">	    		
	    			<input type="button" value="노래 다운로드" onclick="p_up();">   	
	    	
	</form>
</body>
