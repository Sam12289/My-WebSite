package com.connection;


import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
Connection con=null;
	
	public static Connection createConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/samidbm", "root", "");
			System.out.println("Connection established!!");
			return con;
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
}