<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	<title>�Ѽ�����</title>
	<style type="text/css">
		g{
			color:black;
			font-size:10pt;
		}
		center{
			text-align: center
		}
	</style>
	</head>
	
<body>
	<hr width="950px" size="1" color="gray" align="left"/>

	<input type="image" name="h_selectall_btt" src="/music/board/images/h_selectall_button.png"><!-- ��ü���� -->
	<input type="image" name="h_listen_btt" src="/music/board/images/h_listen_button.png">
	<input type="image" name="h_download_btt" src="/music/board/images/h_download_button.png">
	<input type="image" name="h_collect_btt" src="/music/board/images/h_collect_button.png">
	<input type="image" name="h_listen_top100_btt" src="/music/board/images/h_listen_top100_button.png">
	
	<hr width="950px" size="1" align="left">
	<table align="left" >
			<tr align="center">
				<td width="29px" height="10px"><input type="checkbox" name="c_all" on></td>
				<td width="80px"><g>����</g></td>
				<td width="630px"><g>������</g></td>
				<td width="82px"><g>���ƿ�</g></td>	
				<td width="70px"><g>�ٿ�</g></td>
			</tr>
	</table>
	<hr width="950px" size="3" color="#CC3D3D" align="left"/>
	
	<c:set var="count" value="0" />
	<c:if test="${totalCount < 1}">
	<table align="center">
		<tr>
			<td>�Խù��� �������� �ʽ��ϴ�.</td>
		</tr>
	</table>
	</c:if>
	
	<c:if test="${totalCount > 0}">
			<c:forEach var="i" items="${list}">	
				<table>
					<tr align="center" height="50px">
						<td width="29px" height="10px"><input type="checkbox" name="${i}"></td>
						<!--����-->
						<td width="80px"></td>
						<!--������-->
						<td width="630px" align="left">
							<input type="image" name="m_play_btt" src="/music/board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="/music/board/images/m_add_button.png">
							&nbsp;
							<input type="image" name="m_page_btt" src="/music/board/images/m_page_button.png">
							<div style="text-align:center">
							&nbsp; ${i.title}<br />
							${i.singger} <p>|</p> ${i.album}
							</div>
						</td>
						<!--���ƿ�-->
						<td width="82px">
						
						<input type="image" name="m_like_btt" src="/music/board/images/m_like_button.png">
						${i.hit}
						
						</td>
							<!--�ٿ�ε�-->
						<td td width="70px">
							<input type="image" name="m_download_img" src="/music/board/images/m_download_button.png">
						</td>
					</tr>
				</table>
				<hr width="950px" size="1" color="gray" align="left"/>
			</c:forEach>
	</c:if>
	
		<hr width="950px" size="1" color="gray" align="left"/>

	<input type="image" name="h_selectall_btt" src="/music/board/images/h_selectall_button.png"><!-- ��ü���� -->
	<input type="image" name="h_listen_btt" src="/music/board/images/h_listen_button.png">
	<input type="image" name="h_download_btt" src="/music/board/images/h_download_button.png">
	<input type="image" name="h_collect_btt" src="/music/board/images/h_collect_button.png">
	<input type="image" name="h_listen_top100_btt" src="/music/board/images/h_listen_top100_button.png">
	
	<hr width="950px" size="1" align="left" />
	
</body>
</html>
