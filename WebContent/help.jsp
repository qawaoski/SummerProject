<%@page import="java.sql.*" %>
<%
    String cname = request.getParameter("csname");
    String cdname = request.getParameter("cdname");
    try {
 
        Class.forName("oracle.jdbc.driver.OracleDriver"); 
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@mcndesktop07", "bus", "bus"); 
        PreparedStatement st = con.prepareStatement("select * from businfo where b_src=?");
        st.setString(1, cname); 
        ResultSet rs = st.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData(); 
        if (rs.next()) {
%>
<jsp:include page="index.jsp"/>
<%
    out.print("<center><h1>Result:</h1></center>");
    out.print("<b>Source:</b> " + cname + "");
    out.print("<br>" + "<b>Destination:</b> " + cdname);
    out.print("<table width=25% border=1>");
    out.print("<tr>");
    out.print("<td>" + rsmd.getColumnName(1) + "</td>");
    out.print("<td>" + rs.getInt(1) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(2) + "</td>");
    out.print("<td>" + rs.getString(2) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(3) + "</td>");
    out.print("<td>" + rs.getString(3) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(4) + "</td>");
    out.print("<td>" + rs.getString(4) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(5) + "</td>");
    out.print("<td>" + rs.getString(5) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(6) + "</td>");
    out.print("<td>" + rs.getString(6) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(7) + "</td>");
    out.print("<td>" + rs.getString(7) + "</td></tr>");
    out.println("</table>"); 
} else 
{
    out.println("Bus Not Available for this route....");
%>
<jsp:include page="index.jsp"/>
<%}
    } catch (Exception ex) {
        System.out.println(ex);
    }
%>