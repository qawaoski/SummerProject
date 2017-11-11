<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	if(request.getParameter("choice").equals("radio1"))
	{
		response.sendRedirect("AddEmp.jsp");
	}
	else if(request.getParameter("choice").equals("radio2"))
	{
		response.sendRedirect("RemEmp.jsp");
	}
	else if(request.getParameter("choice").equals("radio3"))
	{
		response.sendRedirect("ViewEmps.jsp");
	}
	else if(request.getParameter("choice").equals("radio4"))
	{
		response.sendRedirect("Empd.jsp");
	}
	else if(request.getParameter("choice").equals("radio5"))
	{
		response.sendRedirect("ViewAll.jsp");
	}
	else if(request.getParameter("choice").equals("radio7"))
	{
		response.sendRedirect("TaskAssign.jsp");
	}
	else if(request.getParameter("choice").equals("radio6"))
	{
		response.sendRedirect("Announce.jsp");
	}
%>
</body>
</html>