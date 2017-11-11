<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reading Input Option</title>
</head>
<body>
        <H1>Reading Radio Buttons</H1>
        <%
            if(request.getParameter("choice") != null) {
                if(request.getParameter("choice").equals("radio1")) {
                    out.println("Task Reg was selected.<BR>");
                }
                else {
                    out.println("Task Reg was not selected.<BR>");
                }
                if(request.getParameter("choice").equals("radio2")) {
                    out.println("Task Comp was selected.<BR>");
                }
                else {
                    out.println("Task Comp was not selected.<BR>");
                }
            }
        %>
</body>
</html>
