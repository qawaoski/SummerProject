<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/Empd.css" />
<title>Drop Down Employees</title>
</head>
<body>
<div class="form">
    <form action="Empp.jsp" method="post">
    <h2 align="center"> Select Employee Code to view details:</h2>
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
//String code = (String) session.getAttribute("name");

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
		
String sql = "SELECT * FROM Employee_Master ;";
PreparedStatement ps = conn.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
<p>Select Employee Code :
<select name="choice">
<%
while(rs.next())
{
String nos = rs.getString("Employee_Code"); 
%>
<option value="<%=nos %>"><%=nos %></option>
<%
}
%>
</select>
</p>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
	<input type="submit" value="View" align="right"/>
<a href="logout.jsp">Logout</a>
</form>
</div>
</body>
</html>
