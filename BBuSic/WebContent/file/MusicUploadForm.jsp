<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
	</head>
	
	<body>
		<form method="post" action="MusicUploadPro.action"
			enctype="Multipart/form-data">
			<table border="1" width="400">
				<tr>
					<td align="center">��������</td>
					<td><input type="file" name="uploadMusic" value="music_path" /></td>
				</tr>
				<tr>
					<td align="center">�̹�������</td>
					<td><input type="file" name="uploadImage" value="image_path" /></td>
				</tr>
				<tr>
					<td align="center" width="200">�帣</td>
					<td><select name="genre">
							<option value="balad">�߶��</option>
							<option value="dance">��</option>
					</select></td>
				</tr>
				<tr>
					<td align="center">����</td>
					<td><input type="text" name="singger" /></td>
				</tr>
				<tr>
					<td align="center">�ٹ�</td>
					<td><input type="text" name="album" /></td>
				</tr>
				<tr>
					<td align="center">����</td>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input type="submit" value="����" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>