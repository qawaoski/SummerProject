<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/EmpStore.css" />
<title>StoreEmp</title>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/EMPLOYEE?allowMultiQueries=true";%>
<%!String user = "student";%>
<%!String psw = "1234";%>
<form action="logout.jsp" method="post">

<%

//String EM1 = request.getParameter("ECode");
int EM1 = Integer.parseInt(request.getParameter("ECode"));
String EM2 = request.getParameter("pwd");
String EM3 = request.getParameter("EName");
String EM4 = request.getParameter("EMail");

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

String query = "INSERT INTO Employee_Master VALUES(?,?,?,?)";

PreparedStatement pst = null;
pst=conn.prepareStatement(query);
pst.setInt(1,EM1);
pst.setString(2,EM2);
pst.setString(3,EM3);
pst.setString(4,EM4);

int count = pst.executeUpdate();

out.println("<center><span><h1>Employee Registered Successfully</h1></span></center>");
%>

<a href="logout.jsp">Logout </a>
OR
<a href="admin.jsp"> Continue </a>

<%
stat.close();
conn.close();
}
catch(Exception sqe)
{ 
out.println(sqe);
}
%>
</form>
</body>
</html>