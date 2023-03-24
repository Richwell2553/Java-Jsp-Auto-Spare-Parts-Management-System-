package shop.sales;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class SaveSales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("pN");

		String category = request.getParameter("pC");
		String qS = request.getParameter("qS");
		int sold = Integer.parseInt(qS);
		String pP =request.getParameter("pP");
		double pPrice = Double.parseDouble(pP);
		
		Sale e = new Sale();
		e.setProductName(name);
		e.setQuantitySold(sold);
		e.setCategory(category);
		e.setProductPrice(pPrice);
		
		
		int status = SalesDao.save(e);
		if(status > 0) {
			request.getRequestDispatcher("staff_home.jsp").forward(request, response);
		}else {
//			out.println("<h3 style='color:red'>Error!</h3>");
			response.sendRedirect("404.html");
			
		}
		out.close();
		
		
		
	}

}
