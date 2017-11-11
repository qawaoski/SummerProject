 <!-- http://localhost:8080/jdbc-test/home.jsp -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/login.css" />
<title>Home</title>
</head>
<body>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/EMPLOYEE";
String user = "student";
String password = "1234";

String sql = "select Employee_Code from Employee_Master";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="login.jsp">
<center><h2 style="color:black">Please Login</h2></center>
<table border="1" align="center">
<tr>
<td class="ask">Enter Your Employee Code :</td>
<td><input type="text" name="name" placeholder="XXXXXXXXXX" maxlength="10"/></td>
</tr>
<tr>
<td class="ask">Enter Your Password :</td>
<td><input type="password" name="password" placeholder="********" maxlength=""/></td>
</tr>
<% 
}
catch(SQLException sqe)
{
//out.println("home"+sqe);
}
%>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
<!-- 
<button onClick="window.location='ChangePwd.jsp';" value="Change password">Change password</button>
 -->
</form>
</body>
</html>







<%-- 
<!-- http://localhost:8080/jdbc-test/home.jsp -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/EMPLOYEE";
String user = "student";
String password = "1234";

String sql = "select Employee_Code from Employee_Master";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="login.jsp">
<center><h2 style="color:green">Please Login</h2></center>
<table border="1" align="center">
<tr>
<td>Enter Your Employee Code :</td>
<td><input type="text" name="name" maxlength="10"/></td>
</tr>
<tr>
<td>Enter Your Password :</td>
<td><input type="password" name="password" maxlength=""/></td>
</tr>
<% 
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html> --%>