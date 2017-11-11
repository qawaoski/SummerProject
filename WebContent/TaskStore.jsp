<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="upload.ufc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheets/TaskStore.css" />
<title>StoreTaskData</title>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/EMPLOYEE?allowMultiQueries=true";%>
<%!String user = "student";%>
<%!String psw = "1234";%>
<form action="logout.jsp" method="post">

<%
// location to store file uploaded
final String UPLOAD_DIRECTORY = "upload";

// upload settings
final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

/* InputStream inputStream=null;
//obtains the upload file part in this multipart request
Part filePart = request.getPart("photo");
if (filePart != null) {
 // prints out some information for debugging
 System.out.println(filePart.getName());
 System.out.println(filePart.getSize());
 System.out.println(filePart.getContentType());

// obtains input stream of the upload file
  inputStream = filePart.getInputStream();

}
 */
%>


<%

String TR1 = request.getParameter("Task_num");
//int TR1 = Integer.parseInt(request.getParameter("Task_num"));
String TR2 = request.getParameter("Description");
//String TR3 = request.getParameter("attachment");
int TR4 = Integer.parseInt(request.getParameter("Reg_by"));
String TR5 = request.getParameter("Status");
String TR6 = request.getParameter("Comments");

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
Statement stat = conn.createStatement();

Date dNow = new Date( );
SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");

String Regtime = ft.format(dNow);
//String sql = "INSERT INTO Follow_Up (Task_No, Task_Description, Task_Registered_By, Task_Registered_Date_Time, Task_Status, Comments) VALUES('"+ TR1 + "','" + TR2 + "','" + TR4 + "','" + Regtime + "','" + TR5+ "','" + TR6 + "')";

String query = "INSERT INTO Follow_Up (Task_No, Task_Description, Task_Registered_By, Task_Registered_Date_Time, Task_Status, Comments) VALUES(?,?,?,?,?,?)";

PreparedStatement pst = null;
pst=conn.prepareStatement(query);
pst.setString(1,TR1);
pst.setString(2,TR2);
/* if (inputStream != null) {
    // fetches input stream of the upload file for the blob column
    pst.setBlob(3, InputStream);
} */
pst.setInt(3,TR4);
pst.setString(4,Regtime);
pst.setString(5,TR5);
pst.setString(6,TR6);

int count = pst.executeUpdate();


// ye koi aur dekh rahi hai tu shayad
// wo link?? ya jsp page?
		
//int n = stat.executeUpdate(sql);
out.println("Task Registered Successfully");
/* if(request.getParameter("attachment").equals("Yes"))
{
    System.out.println("Redirect to upload");
    response.sendRedirect("page.jsp");
}
 */
/* int val =0;

String queryString = "INSERT INTO Follow_Up set Attachment='"+val+"'";

//out.println(queryString);

PreparedStatement pstatement=conn.prepareStatement(queryString);


val = pstatement.executeUpdate();

if (inputStream != null) {
    // fetches input stream of the upload file for the blob column
    pstatement.setBlob(3, inputStream);
}

// sends the statement to the database server
int row = pstatement.executeUpdate();
if (row > 0) {
    out.println("File uploaded and saved into database");
} */
%>

<a href="logout.jsp">Logout </a>
OR
<a href="select.jsp"> Continue </a>

<%
stat.close();
conn.close();
}
catch(Exception sqe)
{ 
out.println(sqe);
}
%>
</form>
</body>
</html>