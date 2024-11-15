package com.user;
import java.sql.Connection;
import java.sql.DriverManager;

// create the database connection
public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/busswap";
	private static String userName = "root";
	private static String password = "samadhi123";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		// Show the error if database connection failed
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
