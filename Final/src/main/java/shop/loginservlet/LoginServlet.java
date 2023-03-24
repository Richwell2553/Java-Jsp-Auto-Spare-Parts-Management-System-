package shop.loginservlet;



import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


import shop.login.bean.LoginBean;
import shop.loginDao.LoginDao;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
	LoginBean loginBean = new LoginBean();
	loginBean.setUserName(userName);
	loginBean.setPassword(password);
	
	LoginDao loginDao = new LoginDao();
	
	try {
		String userValidate = loginDao.authenticateUser(loginBean);
		
		if(userValidate.equals("Admin_Role")) {
			System.out.println("Admin's Home");
			
			HttpSession session = request.getSession();//Creating a session
//			session.setAttribute("Admin", userName);// setting session attribute
			session.setAttribute("userName",userName);
			
			
			request.getRequestDispatcher("admin_home.jsp").forward(request,response);
		}
		else if(userValidate.equals("Staff_Role")) {
			System.out.println("Staff's Home");
			
			HttpSession session = request.getSession();
			session.setAttribute("userName",userName);
			
			
			request.getRequestDispatcher("staff_home.jsp").forward(request,response);
			
		}
		else {
			
			request.setAttribute("errMessage", "Invalid User Credentials");
			
			request.getRequestDispatcher("index.jsp").include(request,response);
		}
	}
	catch(IOException e1) {
		e1.printStackTrace();
	}catch(Exception e2) {
		e2.printStackTrace();
	}
		

}
}
