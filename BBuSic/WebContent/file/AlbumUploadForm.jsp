<%@ page contentType="text/html; charset=utf-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title></title>
</head>

<body>
	<form method="post" action="AlbumUploadPro.action">
		<table border="1" width="400">
			<tr>
				<td align="center">앨범 이름</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td align="center">가수</td>
				<td><input type="text" name="singer"/></td>
			</tr>
			<tr>
				<td align="center">년도</td>
				<td><input type="text" name="year"/></td>
			</tr>
			<tr>
				<td align="center">저작사</td>
				<td><input type="text" name="publisher"/></td>
			</tr>
			<tr>
				<td align="center">소속사</td>
				<td><input type="text" name="entertain"/></td>
			</tr>
			<tr>
				<td align="center">장르</td>
				<td><input type="text" name="genre"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>