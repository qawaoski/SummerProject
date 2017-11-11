<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
    <%
    
    FileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
// factory.setSizeThreshold(yourMaxMemorySize);
// factory.setRepository(yourTempDirectory);

// Create a new file upload handler
ServletFileUpload upload = new ServletFileUpload( factory );
// upload.setSizeMax(yourMaxRequestSize);

// Parse the request
List<FileItem> uploadItems = upload.parseRequest( request );

for( FileItem uploadItem : uploadItems )
{
  if( uploadItem.isFormField() )
  {
    String fieldName = uploadItem.getFieldName();
    String value = uploadItem.getString();
    out.print(fieldName+"  "+value);
  }
}
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>