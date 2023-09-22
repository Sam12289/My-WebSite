package samiwebsite1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		if(username.equals("sami@gmail.com") && password.equals("12345")) {
			HttpSession session=req.getSession(true);
			session.setAttribute("username",username);
			
			
			RequestDispatcher rd=req.getRequestDispatcher("Home.jsp");
		    rd.forward(req, resp);
		}
		
		else {
			out.println("worng input");
		}
	}

}
