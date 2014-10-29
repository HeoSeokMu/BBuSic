<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

    <input type="button" value="뿌숑차트" onClick="javascript:window.location='ChartBoard.action?category=chart'"
													    style="color:#ffffff;
														border-color:#E7EFF7;
														background-color:#CC3D3D;
														font-size:8pt;
														font-family:Tahoma;
														height:20px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="최신차트" onClick="javascript:window.location='NewChartBoard.action?category=new'"
    													style="color:#ffffff;
														border-color:#E7EFF7;
														background-color:#CC3D3D;
														font-size:8pt;
														font-family:Tahoma;
														height:20px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
    <input type="button" value="장르차트" onClick="javascript:window.location='GenreChartBoard.action?category=genre'"
    													style="color:#ffffff;
														border-color:#E7EFF7;
														background-color:#CC3D3D;
														font-size:8pt;
														font-family:Tahoma;
														height:20px;" />
    