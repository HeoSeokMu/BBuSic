<%@ page contentType="text/html; charset=utf-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title></title>
</head>
<body>
	<form method="post" action="LyricsUploadPro.action">
	<table>
		<tr>
		 	<td>노래이름 : </td>
		 	<td><input type="text" name="name" /></td>
		 </tr>
		 	<tr>
		 		<td>가사</td>
		 		<td><textarea style="width: 300px;height: 300px;" name="lyrics"></textarea></td>
		 	</tr>
		 	<tr>
		 		<td colspan="1">
		 			<input type="submit" value="입력" />
		 		</td>
		 	</tr>
		 </table>
	</form>
</body>
</html>