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
<%@page import="upload.ufc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/AnnStore.css" />
<title>StoreAnnouncement</title>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/EMPLOYEE?allowMultiQueries=true";%>
<%!String user = "student";%>
<%!String psw = "1234";%>
<form action="logout.jsp" method="post">

<%
String MA = request.getParameter("Description");

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

Date dNow = new Date( );
SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");

String Regtime = ft.format(dNow);
//String sql = "INSERT INTO Follow_Up (Task_No, Task_Description, Task_Registered_By, Task_Registered_Date_Time, Task_Status, Comments) VALUES('"+ TR1 + "','" + TR2 + "','" + TR4 + "','" + Regtime + "','" + TR5+ "','" + TR6 + "')";

String query = "INSERT INTO Announce (Announcement, Announced) VALUES(?,?)";

PreparedStatement pst = null;
pst=conn.prepareStatement(query);
pst.setString(1,MA);
pst.setString(2,Regtime);

int count = pst.executeUpdate();

out.println("Announcement Stored Successfully");
%>

<a href="logout.jsp">Logout </a>
OR
<a href="select.jsp"> Continue </a>

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