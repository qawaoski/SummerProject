<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="javax.websocket.Session"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/Empp.css" />
<title>Emp_Det</title>
</head>
<body> 
<div class="form">
    <form method="post" action="logout.jsp">
<%

String driverName = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/EMPLOYEE"; 
String userId = "student";
String password = "1234";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
    
try {
DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
Connection conn = DriverManager.getConnection(connectionUrl, userId, password);
Statement stat = conn.createStatement();

String ch = request.getParameter("choice");
Integer n = Integer.parseInt(ch);

session.setAttribute("tn", ch);

ResultSet rs = null;

rs = stat.executeQuery("select * from Employee_Master where Employee_Code = '" + ch +"';");

//int d = stat.executeUpdate("SELECT * from Employee_Master where Employee_Code = '" + ch +"';");
    out.print("<center><h1>Employee Details:</h1></center>");

ResultSetMetaData rsmd = rs.getMetaData(); 
if (rs.next()) {
//    out.print("<center><h1>Employees List:</h1></center>");
  %>
<TABLE BORDER="1" align="center" class="apply">
<TR>
    <% out.println("<TH>" + rsmd.getColumnName(1) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(2) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(3) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(4) + "</TH>"); %>
</TR>

<TR>
	<% out.println("<TD>" + rs.getString(1) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(2) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(3) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(4) + "</TD>"); %>
</TR>
<% 
}
%>
</TABLE>

<%
 }
 catch (Exception e) {
e.printStackTrace();
}

%>
      <!-- 
	<input type="submit" value="Submit" align="right"/> -->
<a href="logout.jsp">Logout</a>       
OR
<a href="admin.jsp">Continue</a>       
 <!--        </td>
        </tr>
 --> 
    </form>
    </div>
</body>
</html>