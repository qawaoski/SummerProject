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
<link rel="stylesheet" type="text/css" href="StyleSheets/Select.css" />
<title>Select</title>
</head>
<body>
    <H1 align="center">Select :</H1>
    <div class="form">
        <FORM ACTION="process.jsp" METHOD="post">
             <p><INPUT TYPE="radio" NAME="choice" VALUE="radio1" CHECKED>
             <span class="apply">Task Registration</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio2">
             <span class="apply">Task Completion</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio4">
             <span class="apply">Task Assignment</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio3">
             <span class="apply">View all Tasks</span>
            <BR>
            <INPUT TYPE="radio" NAME="choice" VALUE="radio5">
             <span class="apply">View Announcements</span>
            <BR>
            <INPUT TYPE="submit" VALUE="Proceed">
            <BR></p>
            <a href="logout.jsp">Logout</a>
        </FORM> 
        </div>
</body>
</html>