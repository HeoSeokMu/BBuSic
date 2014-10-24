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
	</style>
	</head>
	
<body>
	<hr width="950px" size="1" color="gray"/>

	<input type="image" name="h_selectall_btt" src="../board/images/h_selectall_button.png"><!-- ��ü���� -->
	<input type="image" name="h_listen_btt" src="../board/images/h_listen_button.png">
	<input type="image" name="h_download_btt" src="../board/images/h_download_button.png">
	<input type="image" name="h_collect_btt" src="../board/images/h_collect_button.png">
	<input type="image" name="h_listen_top100_btt" src="../board/images/h_listen_top100_button.png">
	
	<hr width="950px" size="1">
	<table align="center" >
			<tr align="center">
				<td width="29px" height="10px"><input type="checkbox" name="c_all" on></td>
				<td width="80px"><g>����</g></td>
				<td width="630px"><g>������</g></td>
				<td width="82px"><g>���ƿ�</g></td>	
				<td width="70px"><g>�ٿ�</g></td>
			</tr>
	</table>
	<hr width="950px" size="3" color="#CC3D3D"/>
	
	<c:set var="count" value="0" />
	<c:if test="${count > 1}">
	<table align="center">
		<tr>
			<td>�Խù��� �������� �ʽ��ϴ�.</td>
		</tr>
	</table>
	</c:if>
	
	<c:if test="${count > 0}">
			<c:forEach var="i" items="${articleList}">
				<table>
					<tr align="center" height="50px">
						<td><input type="checkbox" name="${i}"></td>
						<!--����-->
						<td>${i.rank}</td>
						<!--������-->
						<td>
							<input type="image" name="m_play_btt" src="../board/images/m_play_button.png">
							<input type="image" name="m_add_btt" src="../board/images/m_add_button.png">
							&nbsp;
							<input type="image" name="m_page_btt" src="../board/images/m_page_button.png">
							&nbsp; ${music_name}<br />
							${singger} <p>|</p> ${album}
						</td>
						<!--���ƿ�-->
						<td>
						<input type="image" name="m_like_btt" src="../board/images/m_like_button.png">
						${hit}
						</td>
						<!--�ٿ�ε�-->
						<td>
							<input type="image" name="m_download_img" src="../board/images/m_download_button.png">
						</td>
					</tr>
				</table>
			</c:forEach>
	</c:if>
	
		<hr width="950px" size="1" color="gray"/>

	<input type="image" name="h_selectall_btt" src="../board/images/h_selectall_button.png"><!-- ��ü���� -->
	<input type="image" name="h_listen_btt" src="../board/images/h_listen_button.png">
	<input type="image" name="h_download_btt" src="../board/images/h_download_button.png">
	<input type="image" name="h_collect_btt" src="../board/images/h_collect_button.png">
	<input type="image" name="h_listen_top100_btt" src="../board/images/h_listen_top100_button.png">
	
	<hr width="950px" size="1">
	
</body>
</html>
