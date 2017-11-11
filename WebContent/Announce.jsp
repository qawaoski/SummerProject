<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
Statement stat = conn.createStatement();

} catch (Exception e) {
e.printStackTrace();
}

%>

<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/Announce.css" />
<title>Make Announcement</title>
</head>
<body> 
<div class="form">
	 	<form method="post" action="AnnStore.jsp"> 
    <h2 align="center">Make Announcement:</h2>
    <table id="table1"; cellspacing="5px" cellpadding="5%"; align="center">
       <tr>
        		      <td align="right" class="apply">
        	   Enter Announcement:
        	   		  </td>
        <td>
              <textarea rows="3" cols="50" name="Description" maxlength="500"></textarea>
        	  <p class="apply">Brief Description should have atmost 500 characters</p>
        </td>
       </tr>
        <tr>
        <td> 
        		<input type="submit" value="Submit" align="right"/>
<a href="logout.jsp">Logout</a>       
        </td>
        </tr>
</table> 
    </form>
    </div>
</body>
</html>