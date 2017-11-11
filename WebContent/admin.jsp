<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.*" %>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/admin.css" />
<title>Admin</title>
</head>
<body>
    <H1 align="center">Select :</H1>
    <div class="form">
        <FORM ACTION="adminProcess.jsp" METHOD="post">
             <p><INPUT TYPE="radio" NAME="choice" VALUE="radio1" CHECKED>
            <span  CLASS="apply">Add New Employee </span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio2">
             <span  CLASS="apply">Remove Employee</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio3">
             <span  CLASS="apply">View all Employees</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio4">
             <span  CLASS="apply">View an Employee's Personal Details</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio5">
             <span  CLASS="apply">View all Tasks</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio7">
             <span  CLASS="apply">Assign Task</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio6">
             <span  CLASS="apply">Make Announcement</span>
            <BR>
            <INPUT TYPE="submit" VALUE="Proceed">
            <BR></p>
            <a href="logout.jsp">Logout</a>
        </FORM> 
        </div>
</body>
</html>