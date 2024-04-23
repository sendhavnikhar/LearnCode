package com.learncode.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionProvider {

private static Connection connection;
	

	
public static Connection getConnection() {
		
		
		try {
			
		   if(connection==null) {
			
		   Class.forName("com.mysql.jdbc.Driver");
		   
		   connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/LearnCode","root","root");
		   
			} 
			
		    }
		
		
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return connection;
	}
}
