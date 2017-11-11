import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class TaskReg
 */
@WebServlet("/TaskReg")
public class TaskReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// get request parameters for task registration
//		String code = "";
		String TR1 = request.getParameter("Task_num");
		String TR2 = request.getParameter("Description");
		String TR3 = request.getParameter("attachment");
		String TR4 = request.getParameter("Reg_by");
		String TR5 = request.getParameter("Status");
		String TR6 = request.getParameter("Comments");
		
		if(! TR1.isEmpty()){
			
			String driverName = "com.mysql.jdbc.Driver";

			Connection conn = null;
			Statement stat = null;
			
			try {
			Class.forName(driverName);
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
			}
			    
			try {
				String connectionUrl = "jdbc:mysql://localhost:3306/EMPLOYEE"; 
				String userId = "student";
				String password = "1234";

			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			conn = DriverManager.getConnection(connectionUrl, userId, password);
			stat = conn.createStatement();

			String sql = "INSERT INTO Follow_Up (Task_No, Task_Description, Attachment , Task_Registered_By, Task_Actione, Status, Comments) VALUES('"+ TR1 + "','" + TR2 + "','" + TR3 + "','" + TR4 + "','" + TR5+ "','" + TR6 + "')";
			int flage = stat.executeUpdate(sql);
			
			System.out.println(flage);

			if(TR3 == "Yes")
			{
				response.sendRedirect("upload.jsp");
			}
			
			} catch (Exception e) {
			e.printStackTrace();
			}

			
			/*Cookie loginCookie = new Cookie("user",user);
			//setting cookie to expiry in 30 mins
			loginCookie.setMaxAge(30*60);
			response.addCookie(loginCookie);
			*/
			response.sendRedirect("Option.html");
		}else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/select.jsp");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>Some information is missing.</font>");
			rd.include(request, response);
		}

	}

}