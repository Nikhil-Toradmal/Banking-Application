package bank.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class bankdbConnection {
		private static String driver="oracle.jdbc.OracleDriver";
		private static String url="jdbc:oracle:thin:@localhost:1521:XE";
		private static String username="system";
		private static String password="123456789";
		
		static {
			//Load driver
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		public static Connection getDBConnection() {
			Connection conn=null;
			
			try {
				conn=DriverManager.getConnection(url,username,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("Connection"+conn);
			return conn;
		}
}
	
	
	

