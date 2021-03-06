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
					<td align="center" width="200">음악파일</td>
					<td><input type="file" name="uploadMusic" value="music_path" /></td>
				</tr>
				<tr>
					<td align="center">1분 미리듣기 파일</td>
					<td><input type="file" name="uploadMusic_minute" value="music_path_minute" /></td>
				</tr>
				<tr>
					<td align="center">이미지파일</td>
					<td><input type="file" name="uploadImage" value="image_path" /></td>
				</tr>
				<tr>
					<td align="center">장르</td>
					<td><select name="genre">
							<option value="balad">발라드</option>
							<option value="dance">댄스</option>
					</select></td>
				</tr>
				<tr>
					<td align="center">가수</td>
					<td><input type="text" name="singer" /></td>
				</tr>
				<tr>
					<td align="center">앨범</td>
					<td><input type="text" name="album" /></td>
				</tr>
				<tr>
					<td align="center">제목</td>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td align="center">가격</td>
					<td><input type="text" name="price" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="전송" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>