<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<html>
<body>
	<form method="post" action="MusicUploadPro.action" enctype="Multipart/form-data">
		<table border="1" width="400">
			<tr>
				<td align="center">��������</td>
				<td><input type="file" name="uploadMusic" value="music_path"></td>
			</tr>
			<tr>
				<td align="center">�̹�������</td>
				<td><input type="file" name="uploadImage" value="music_path"></td>
			</tr>
			<tr>
				<td align="center" width="200">�帣</td>
				<td>	
					 <select name="genre">
								<option value="balad">�߶��</option>
								<option value="dance">��</option>
							</select>
				</td>
			</tr>
			<tr>
				<td align="center">����</td>
				<td>	<input type="text" name="singger">	</td>
			</tr>
			<tr>
				<td align="center">����</td>
				<td><input type="text" name="album"></td>
			</tr>
			<tr>
				<td align="center">����</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="����">
				</td>
			</tr>
		</table>			
	</form>
</body>
</html>