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
<link rel="stylesheet" type="text/css" href="StyleSheets/update.css" />
<title>Updated</title>
</head>
<body>
<form action="logout.jsp" method="post">

<%-- 	<input type="hidden" name="tn" value="${param.ch}"/> --%>

<%-- <jsp:scriptlet>
  out.append(request.getParameter("tn"));
</jsp:scriptlet>
 --%>
 
<%

int num = Integer.parseInt(request.getParameter("Comp_by"));
String driverName = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/EMPLOYEE"; 
String userId = "student";
String password = "1234";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

try{
	DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
	Connection conn = DriverManager.getConnection(connectionUrl, userId, password);
	Statement stat = conn.createStatement();

	Date dNow = new Date( );
	SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");

	String Comptime = ft.format(dNow);
	
	String ch = (String) session.getAttribute("tn");
	String status = "Closed";
/* 	String sql = "UPDATE Follow_Up SET Status = '" + status + "' Task_Actione = '" + num +"', Task_Closed_Date_Time = '" + Comptime  + "' WHERE Task_No = '" + ch + "';";
	out.print(sql);
	int u = stat.executeUpdate(sql);
 */	
	String query="UPDATE Follow_Up SET Task_Status=? , Task_Actione =? , Task_Closed_Date_Time =? , WHERE Task_No =?";
	PreparedStatement pst = null;
	pst=conn.prepareStatement(query);
	pst.setString(1,status);
	pst.setInt(2,num);
	pst.setString(3,Comptime);
	pst.setString(4,ch);
	int count = pst.executeUpdate();
	
}
catch(Exception e){
System.out.println(e);
    }
%>
	
	<h2>Task Completed Successfully.</h2>

<a href="logout.jsp">Logout </a>
OR
<a href="select.jsp"> Continue </a>

</form>
</body>
</html>