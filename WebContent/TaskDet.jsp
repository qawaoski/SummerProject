<!-- This needs many changes -->

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
<link rel="stylesheet" type="text/css" href="StyleSheets/TaskDet.css" />
<title>Task_Det</title>
</head>
<body> 
    <form method="post" action="update.jsp">
    <div>              
    </div> 

<%
// String TC = request.getParameter("Comp_by");
String driverName = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/EMPLOYEE"; 
String userId = "student";
String password = "1234";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
    
//Integer num = (Integer) request.getSession().getAttribute("name");

try {
DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
Connection conn = DriverManager.getConnection(connectionUrl, userId, password);
Statement stat = conn.createStatement();

String ch = request.getParameter("choice");
//Integer n = Integer.parseInt(ch);

session.setAttribute("tn", ch);

ResultSet rs = null;

rs = stat.executeQuery("select * from Follow_Up where Task_No = '" + ch +"';");
ResultSetMetaData rsmd = rs.getMetaData(); 
if (rs.next()) {
%>

<%-- 
<jsp:include page="TaskComp.jsp"/>
 --%>
 <%
    out.print("<center><h1>Task Details:</h1></center>");
  %>
<TABLE BORDER="1">
<TR>
    <% out.println("<TH>" + rsmd.getColumnName(1) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(2) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(3) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(4) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(6) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(8) + "</TH>"); %>
    <% out.println("<TH>" + rsmd.getColumnName(9) + "</TH>"); %>
</TR>

<TR>
	<% out.println("<TD>" + rs.getString(1) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(2) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(3) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(4) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(6) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(8) + "</TD>"); %>
	<% out.println("<TD>" + rs.getString(9) + "</TD>"); %>
</TR>
<% 
}
%>
</TABLE>

 Task Actionee:
 <input type="text" name="Comp_by" placeholder="XXXXXXXXXX" maxlength="10" />

<%
/* 
Date dNow = new Date( );
SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");

String Comptime = ft.format(dNow);

String sql = "INSERT INTO Follow_Up ( Task_Actione, Task_Closed_Date_Time) VALUES('"+ TC + "','" + Comptime  + "')";
int flage = stat.executeUpdate(sql);
 */ 
 }
 catch (Exception e) {
e.printStackTrace();
}
//}

%>
  
  <%-- 
  <jsp:forward page="update.jsp">
  <jsp:param name="tn" value=ch ></jsp:param>
</jsp:forward>
   --%>
   
	<input type="submit" value="Submit" align="right"/>
<a href="logout.jsp">Logout</a>       
 <!--        </td>
        </tr>
 -->
 </table> 
    </form>
</body>
</html>