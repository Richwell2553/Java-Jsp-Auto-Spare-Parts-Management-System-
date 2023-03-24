package shop.product;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import shop.login.util.DBConnection;


public class StaffDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
//	
	Statement st;
	PreparedStatement pst;
	ResultSet rs;
	int row;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String id = request.getParameter("id");
		int productId = Integer.parseInt(id);
		
		try {
			
			
		
			con = DBConnection.createConnection();
			Statement st = con.createStatement();
			st.executeUpdate("delete from products where prod_id='"+productId+"'");
			response.sendRedirect("staff-products.jsp");
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally{
			if(st!= null)
				try{
						st.close();
				}catch(Exception ex){
					ex.printStackTrace();
					
				}
			if(con!= null)
			try{
					con.close();
			}catch(Exception ex){
				ex.printStackTrace();
				
			}
		}
		
		
		
		
	}

}
