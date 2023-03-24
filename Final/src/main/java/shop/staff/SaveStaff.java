package shop.staff;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class SaveStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("sN");
		String  role = request.getParameter("sR");
		
		String password = request.getParameter("pW");
		
		
		Staff e = new Staff();
		e.setStaffName(name);
		e.setRole(role);
		e.setStaffPassword(password);
		
		
		int status = StaffDao.save(e);
		if(status > 0) {
		request.getRequestDispatcher("manage-staff.jsp").forward(request, response);
		}else {
//			out.println("<h3 style='color:red'>Error!</h3>");
			response.sendRedirect("404.html");
			
		}
		out.close();
		
		
		
		
		
		
		
	}

}
