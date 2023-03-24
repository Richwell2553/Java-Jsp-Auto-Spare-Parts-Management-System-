package shop.staff;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



public class DeleteStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	String jdbcUrl = "jdbc:postgresql://localhost:5432/shop";
	String username = "postgres";
	String pass = "root";
	
	Statement st;
	PreparedStatement pst;
	ResultSet rs;
	int row;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String id = request.getParameter("id");
		int sId = Integer.parseInt(id);
		
		try {
			
			

			con = DriverManager.getConnection(jdbcUrl,username,pass);
			Statement st = con.createStatement();
			st.executeUpdate("delete from users where id='"+sId+"'");
			response.sendRedirect("manage-staff.jsp");
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
