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
<link rel="stylesheet" type="text/css" href="StyleSheets/TaskReg.css" />
<title>Task Registration</title>
</head>
<body> 
  <!--     <form action = "tpupload.jsp" method = "post"
         enctype = "multipart/form-data">
 -->
	 	<form method="post" action="TaskStore.jsp"> 
    <div>              
    </div> 
    <h2 align="center"> Task Registration:</h2>
    <table id="table1"; cellspacing="5px" cellpadding="5%"; align="center">
       <tr>
		              <td  align="right" class="apply">
              Task No.:
              		</td>
              <td><input type="text" name="Task_num" placeholder="MON-XXXXXXX" maxlength="7"/></td>
       </tr>
       <tr>
        		      <td align="right" class="apply">
        	   Task Description:
        	   		  </td>
        <td>
              <textarea rows="3" cols="15" name="Description" placeholder="Add description" maxlength="20"></textarea>
        	  <p class="apply">Brief Description should have atmost 20 characters</p>
        </td>
       </tr>
        <tr>
              			<td align="right" class="apply">
              Add Attachment: 
              			</td>
        <td>

	         <input type="file" name="uploadFile" placeholder="any file format" /> 
<!-- 
            <input type="submit" value="Upload" />
        
 <INPUT NAME="file" TYPE="file" size="300">
 -->
  <!-- 	        <select name="attachment">
        	    <option value="Yes">Yes</option>
            	<option value="No" selected="selected">No</option>
            </select> -->
<!--               <input type="radio" name="attachemnt" value="Yes" />Yes
        	  <input type="radio" name="attachment" value="No"/>No
 -->
 
       </tr>
  
        <tr>
              			<td align="right" class="apply">
              Task Registered by:
              			</td>
        <td>
               <input type="text" name="Reg_by" placeholder="XXXXXXXXXX" maxlength="10" /> 
        </td>
       </tr>
       <tr>
              			<td align="right" class="apply">
              Status:
              			</td>
        <td>
 <!--              <input type="text" name="Status" maxlength="6"/> -->
 					<select name="Status">
 						<option value="Open">Open</option>
 						<option vlaue="Closed">Closed</option>
 					</select>
        </td>
       </tr>
       <tr>
              			<td align="right" class="apply">
              Comments:
              			</td>
        <td>
              <textarea rows="3" cols="15" name="Comments" placeholder="Add comments." maxlength="250"></textarea>
        	  <p class="apply">Brief Description should have atmost 250 characters</p>
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
</body>
</html>