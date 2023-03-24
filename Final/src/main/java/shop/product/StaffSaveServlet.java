package shop.product;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class StaffSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("pN");
		String  category = request.getParameter("category");
		String pC = request.getParameter("pC");
		double cost = Double.parseDouble(pC);
		String qA = request.getParameter("qA");
		int available = Integer.parseInt(qA);
		
		Product e = new Product();
		e.setProductName(name);
		e.setProductCategory(category);
		e.setProductCost(cost);
		e.setQuantityAvailable(available);
		
		int status = ProductDao.save(e);
		if(status > 0) {
			
			request.getRequestDispatcher("staff-products.jsp").forward(request, response);
		}else {
//			out.println("<h3 style='color:red'>Error!</h3>");
			response.sendRedirect("404.html");			
		}
		out.close();
		
		
		
		
		
		
		
	}

}
