package shop.login.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection createConnection() {
		Connection con = null;
		String jdbcUrl = "jdbc:postgresql://localhost:5432/shop";
		String username = "postgres";
		String pass = "root";
		

		
		
		try {
			
			con = DriverManager.getConnection(jdbcUrl,username,pass);
			System.out.println("Posting db connection: "+con);
		}catch(SQLException e) {
			System.out.println("An error occurred.Maybe user/password is invalid");
			e.printStackTrace();

		}
		
		return con;
		
	}

}
