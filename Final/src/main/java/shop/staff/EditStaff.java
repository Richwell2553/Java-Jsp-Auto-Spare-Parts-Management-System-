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
public class EditStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		
		String sI = request.getParameter("sI");
		int id = Integer.parseInt(sI);
		
		
		String name = request.getParameter("sN");
		String password = request.getParameter("pW");
		String role = request.getParameter("sR");
		
		
		
		Connection con = null;
		
		PreparedStatement st;
    	
    	
     	try {
     		
    		
    		con = DBConnection.createConnection();
			st = con.prepareStatement("update users set username=?,password=?,role=? where id =?");
			st.setString(1, name);
			st.setString(2,password);
			st.setString(3, role);
			
			st.setInt(4, id);
			st.executeUpdate();
			
			HttpSession session = request.getSession();
			session.setAttribute("successMsg","Product Updated Successfully");
//			response.sendRedirect("products.jsp");
			request.getRequestDispatcher("manage-staff.jsp").forward(request, response);
			
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
