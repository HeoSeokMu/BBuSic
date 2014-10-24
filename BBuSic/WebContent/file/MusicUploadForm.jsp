<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<body>
	<form method="post" action="MusicUploadPro.action" enctype="Multipart/form-data">
		<table border="1" width="400">
			<tr>
				<td rowspan="5" width="200">
					<img src="../images/sample.png" id="music_image" width="100"><br />
					<input type="file" name="upload" value="music_path" id="이미지 선택">
				</td>
				
				<td align="center">파일</td>
				<td><input type="file" name="upload" value="music_path"></td>
			</tr>
			<tr>
				<td align="center" width="200">장르</td>
				<td>	
					 <select name="music">
								<option value="발라드">발라드</option>
								<option value="댄스">댄스</option>			
							</select>
				</td>
			</tr>
			<tr>
				<td align="center">가수</td>
				<td>	<input type="text" name="singger">	</td>
			</tr>
			<tr>
				<td align="center">엘범</td>
				<td><input type="text" name="album"></td>
			</tr>
			<tr>
				<td align="center">제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="전송">
				</td>
			</tr>
		</table>			
	</form>
</body>
</html>