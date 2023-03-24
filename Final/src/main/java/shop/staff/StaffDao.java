package shop.staff;

import java.sql.Connection;
import java.sql.PreparedStatement;

import shop.login.util.DBConnection;
public class StaffDao {
	

	
	
	public static int save(Staff e) {
		int status = 0;
		Connection con = null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("insert into users(username,password,role) values(?,?,?)");
			ps.setString(1, e.getStaffName());
			ps.setString(2, e.getStaffPassword());
			ps.setString(3, e.getRole());
				
			
			
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

