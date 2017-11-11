<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select File to Upload</title>
</head>
<body>
<FORM ENCTYPE="multipart/form-data" ACTION=
"try.jsp" METHOD=POST>
<br><br><br>
<center>
<table border="0" bgcolor=#ccFDDEE>
<tr>
<center>
<td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>
<tr>
<td colspan="2" align="center">&nbsp;</td>
</tr>
<tr>
<td><b>Choose the file To Upload:</b></td>
<td><INPUT NAME="file" TYPE="file"></td>
</tr>
<tr>
<td colspan="2" align="center">&nbsp;</td>
</tr>
<tr>
<td colspan="2" align="center"><INPUT TYPE="submit" VALUE="Upload" ></td>
</tr>
<table>
</center> 
</FORM>
</body>
</html>
