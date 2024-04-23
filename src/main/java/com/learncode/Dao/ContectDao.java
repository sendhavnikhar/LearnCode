package com.learncode.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.learncode.Entity.Contect;

public class ContectDao {
	
	
	private Connection connection;

	public ContectDao (Connection connection) {
		
		
		this.connection=connection;
	}
	
	
	
	public boolean SaveContect(Contect contect) {
		
		
		boolean f =false;
		
		try {

			String query="insert into contect (name,email,message) values(?,?,?)";
			
			PreparedStatement pStatement = this.connection.prepareStatement(query);
			
			pStatement.setString(1, contect.getName());
			pStatement.setString(2, contect.getEmail());
			pStatement.setString(3,contect.getMessage());
			
		   
			pStatement.executeUpdate();
			
			
			f=true;
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
