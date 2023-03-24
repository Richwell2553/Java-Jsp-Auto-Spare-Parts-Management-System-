package shop.staff;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;

import shop.login.util.*;
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		
		String pI = request.getParameter("pI");
		int id = Integer.parseInt(pI);
		
		
		String name = request.getParameter("pN");
		String category = request.getParameter("category");
		String qA = request.getParameter("qA");
		int quantity = Integer.parseInt(qA);
		String quantitySold = request.getParameter("quantitySold");
		int sold = Integer.parseInt(quantitySold);
		
		String pC = request.getParameter("pC");
		double cost = Double.parseDouble(pC);
		
		
		Connection con = null;
		
		PreparedStatement st;
    	
    	
     	try {
     		
    		
    		con = DBConnection.createConnection();
			st = con.prepareStatement("update products set prod_name=?,prod_category=?,quantity_available=?,prod_cost=?,quantity_sold=? where prod_id =?");
			st.setString(1, name);
			st.setString(2,category);
			st.setInt(3, quantity);
			st.setDouble(4, cost);
			st.setInt(5, sold);
			
			st.setInt(6, id);
			st.executeUpdate();
			
			HttpSession session = request.getSession();
			session.setAttribute("successMsg","Product Updated Successfully");
//			response.sendRedirect("products.jsp");
			request.getRequestDispatcher("products.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(con!= null)
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
				
			}
		}
			
    		
    	
		
	
		
		
		
		
		
		
	}

}
