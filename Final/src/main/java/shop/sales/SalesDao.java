package shop.sales;

import java.sql.Connection;
import java.sql.PreparedStatement;

import shop.login.util.DBConnection;
public class SalesDao {
//
	
	public static int save(Sale e) {
		int status = 0;
		Connection con= null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("insert into sales(prod_name,quantity_sold,prod_category,prod_price) values(?,?,?,?)");
			ps.setString(1, e.getProductName());
		
			ps.setInt(2, e.getQuantitySold());		
			ps.setString(3, e.getCategory());
			ps.setDouble(4, e.getProductPrice());
			
			
			status = ps.executeUpdate();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally{
			try{
				if(con!= null)
					con.close();
			}catch(Exception ex){
				ex.printStackTrace();
				
			}
		}
		
		return status;
	}
	
	

}
