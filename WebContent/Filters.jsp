<!-- useless -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filter Tasks By</title>
</head>
<body>
<%

	if(request.getParameter("FB").equals("FBtn"))
	{
		response.sendRedirect("FBtn.jsp");
	}
	else if(request.getParameter("FB").equals("FBreg"))
	{
		response.sendRedirect("FBreg.jsp");
	}
	else if(request.getParameter("FB").equals("FBactionee"))
	{
		response.sendRedirect("FBactionee.jsp");
	}
	else if(request.getParameter("FB").equals("FBregDT"))
	{
		response.sendRedirect("FBregDT.jsp");
	}
	else if(request.getParameter("FB").equals("FBcmpDT"))
	{
		response.sendRedirect("FBcmpDT.jsp");
	}
	else if(request.getParameter("FB").equals("FBstatus"))
	{
		response.sendRedirect("FBstatus.jsp");
	}
	else
	{
		response.sendRedirect("ViewAll.jsp");
	}
%>
</body>
</html>