<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filter Choice Bar</title>
</head>
<body>
<form method="post" action="Filters.jsp">
<TABLE BORDER="1">

<tr>
              			<td align="right" class="apply">
              Filter By:
              			</td>
        <td>
        
        <button onclick="location.href = 'FBtn.jsp';" id="myButton" class="float-left submit-button" >Task Number</button>
		<button onclick="location.href = 'FBreg.jsp';" id="myButton" class="float-left submit-button" >Task Registerer</button>
		<button onclick="location.href = 'FBactionee.jsp';" id="myButton" class="float-left submit-button" >Task Actionee</button>
		<button onclick="location.href = 'FBregDT.jsp';" id="myButton" class="float-left submit-button" >Task Registration Timestamp</button>
		<button onclick="location.href = 'FBcmpDT.jsp';" id="myButton" class="float-left submit-button" >Task Completion Timestamp</button>
		<button onclick="location.href = 'FBstatus.jsp';" id="myButton" class="float-left submit-button" >Task Status</button>        
 					
 					<!-- <select name="FB">
 						<option value="FBtn">Task Number</option>
 						<option value="FBreg">Task Registerer</option>
 						<option vlaue="FBactionee">Task Actionee</option>
 						<option value="FBregDT">Task Registering Timestamp</option>
 						<option vlaue="FBcmpDT">Task Completion Timestamp</option>
 						<option value="FBstatus">Task Status</option>
 					</select> -->
 					
        </td>
</tr>
</TABLE>
</form>
</body>
</html>