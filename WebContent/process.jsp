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
		response.sendRedirect("TaskReg.jsp");
	}
	else if(request.getParameter("choice").equals("radio2"))
	{
		response.sendRedirect("TaskComp.jsp");
	}
	else if(request.getParameter("choice").equals("radio4"))
	{
		response.sendRedirect("TaskAssign.jsp");
	}
	else if(request.getParameter("choice").equals("radio3"))
	{
		response.sendRedirect("TaskView.jsp");
	}
	else if(request.getParameter("choice").equals("radio5"))
	{
		response.sendRedirect("AnnView.jsp");
	}
%>
</body>
</html>