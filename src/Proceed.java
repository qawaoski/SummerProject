import java.io.IOException;
//import java.io.PrintWriter;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProceedServlet
 */
@WebServlet("/Proceed")
public class Proceed extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("choice").equals("radio1"))
		{
			response.sendRedirect("TaskReg.jsp");
		}
		else if(request.getParameter("choice").equals("radio2"))
		{
			response.sendRedirect("TaskComp.jsp");
		}
/*		else
		{
			PrintWriter out = response.getWriter();
			out.println("Logout");
		}
*/
	}
}