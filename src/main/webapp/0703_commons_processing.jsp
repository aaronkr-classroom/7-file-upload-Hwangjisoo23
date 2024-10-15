<!-- 0703_commons_processing.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "org.apache.commons.fileupload.*" %>
    <%@page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Date Printing</title>
</head>
<body>
   <%
	String path = "C:\\upload";
  
  	DiskFileUpload upload = new DiskFileUpload();
  
 	 upload.setSizeMax(100000);
 	 upload.setSizeThreshold(4096);
  	 upload.setRepositoryPath(path);
   
  	 List items = upload.parseRequest(request);
   Iterator params = items.iterator();
   
   while (params.hasNext()){
      FileItem item=(FileItem) params.next();
      
      if (item.isFormField()){
         String name = item.getFieldName();
         String value = item.getString("utf-8");
         out.println(name + " = " + value + "<br>");
      }else{
         String FileName = item.getFieldName();
         String fileName = item.getName();
         String contentType = item.getContentType();
         
         //C:\\uplaod \\filename.jpg => filename.jpg
         fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
         long fileSize = item.getSize();
         
         File file = new File(path + "/" + fileName);
      }
      
      out.println("----------------------------<br>");
      out.println("요청 파라미터 이름: " + fileFieldName + "<br>");
      out.pritnln("저장 파일 이름: " + fileName + "<br>");
      out.pritnln("파일 콘텐츠 유형: " + contentType + "<br>");
      out.pritnln("파일 크기: " + fileSize);
      
   }
   %>
</body>
</html>