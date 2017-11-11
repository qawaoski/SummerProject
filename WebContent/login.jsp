<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/login.css" />
<title>Login</title>
</head>
<body>
<%! int userdbName;
String userdbPsw;
%>
<%

int auser = 111;
String apwd = "admin";


Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/EMPLOYEE";
String user = "student";
String dbpsw = "1234";

String sql = "select * from Employee_Master where Employee_Code=? and Password=?";

int name = Integer.parseInt(request.getParameter("name"));
String password = request.getParameter("password");


if((auser==name) && apwd.equals(password)){
	response.sendRedirect("admin.jsp");
}
else if((!(name==0) && !(password.equals(null) || 
password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setInt(1, name);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getInt("Employee_Code");
userdbPsw = rs.getString("Password");
if((name==userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
response.sendRedirect("welcome.jsp"); 
} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(Exception sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);
}
%>
</body>
</html> 


<%-- 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! int userdbName;
String userdbPsw;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/EMPLOYEE";
String user = "student";
String dbpsw = "1234";

String sql = "select * from Employee_Master where Employee_Code=? and Password=?";

int name = Integer.parseInt(request.getParameter("name"));
String password = request.getParameter("password");

if((!(name==0) && !(password.equals(null) || 
password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setInt(1, name);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getInt("Employee_Code");
userdbPsw = rs.getString("Password");
if((name==userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
response.sendRedirect("welcome.jsp"); 
} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(Exception sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);
}
%>
</body>
</html> --%>