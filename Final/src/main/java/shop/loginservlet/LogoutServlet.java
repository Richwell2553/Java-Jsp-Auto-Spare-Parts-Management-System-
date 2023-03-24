package shop.loginservlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;



public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if (session !=null)//if session is not null
			{
			session.invalidate();// removes all session attributes bound to the session
			request.setAttribute("logoutMessage","You have logged out successfully");
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
			System.out.println("Logged out");
		}
	}


}
