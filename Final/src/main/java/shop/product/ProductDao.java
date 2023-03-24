package shop.product;

import java.sql.Connection;
import java.sql.PreparedStatement;

import shop.login.util.DBConnection;
public class ProductDao {
	

	
	public static int save(Product e) {
		int status = 0;
		Connection con = null;
		try {
 
			con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("insert into products(prod_name,prod_category,prod_cost,quantity_available) values(?,?,?,?)");
			ps.setString(1, e.getProductName());
			ps.setString(2, e.getProductCategory());
			ps.setDouble(3,e.getProductCost());
			ps.setInt(4, e.getQuantityAvailable());		
			
			
			status = ps.executeUpdate();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally{
			if(con!= null)
			try{
				con.close();
			}catch(Exception ex){
				ex.printStackTrace();
				
			}
		}
			
		
		return status;
	}
	
	
	

	
	
	

}
