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
<link rel="stylesheet" type="text/css" href="StyleSheets/DelEmp.css" />
<title>Employee Deleted</title>
</head>
<body> 
    <form method="post" action="logout.jsp">
    <div>              
    </div> 

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

int d = stat.executeUpdate("DELETE from Employee_Master where Employee_Code = '" + ch +"';");
    out.print("<center><span><h1>Employee Deleted.</h1></span></center>");
}
catch(Exception e)
{
	System.out.println(e);
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
 </table> 
    </form>
</body>
</html>