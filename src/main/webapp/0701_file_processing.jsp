<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upolas/title>
</head>
<body>
	<form name = "fileform"
	mathod = "POST" 
	enctype = "multipart/form-date"
	action = "0703_commons_processing.jsp"
	
	<p>이름: <input type= "text" name = "name"> </p>
	<p>제목: <input type= "text" name = "title"> </p>
	<p>파일: <input type= "file" name = "filename"> </p>
	<p><input type= "submit" value = "업로드"></p>
	></form>
</body>
</html>