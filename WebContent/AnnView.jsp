<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSetMetaData"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/AnnView.css" />
<title>View Announcements</title>
</head>
<body>
<div class="form">
    <form action="logout.jsp" method="post">
    <h2 align="center"></h2>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.websocket.Session"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

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
		//connectionUrl + dbName, userId, password);
		
		Integer num = (Integer) request.getSession().getAttribute("name");
//		String tr = (String) session.getAttribute("name");
String sql = "SELECT * FROM Announce ORDER BY Announced DESC;";
PreparedStatement ps = conn.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
ResultSetMetaData rsmd = rs.getMetaData(); 
if (rs.next()) {
%>

 <%
    out.print("<center><h1>Announcements:</h1></center>");
  %>
<TABLE BORDER="1" align="center">
<TR class="apply">
    <% out.println("<TH>" + rsmd.getColumnName(1) + "</TH>"); %>
</TR>

<% do{ %>
<TR class="apply">
	<% out.println("<TD>" + rs.getString(1) + "</TD>"); %>
</TR>
<% }while(rs.next()); 
}
%>
</TABLE>


<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
<!-- 	<input type="submit" value="Submit" align="right"/> -->

<br>

<a href="logout.jsp">Logout </a>
OR
<a href="select.jsp"> Continue </a>

</form> 
</div>
</body>
</html>