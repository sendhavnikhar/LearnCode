package com.learncode.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.learncode.Entity.User;

public class UserDao {

	private Connection connection;

	public UserDao (Connection connection) {
	
		this.connection=connection;
	}
	
	
public boolean saveUser( User user) {
		
		
		boolean f = false;
		try {
			
			String query="insert into user (UserName,EmailId,MobileNo,Password) values(?,?,?,?)";
			
			PreparedStatement pStatement = this.connection.prepareStatement(query);
			
			pStatement.setString(1, user.getUserName());
			pStatement.setString(2, user.getEmailId());
			pStatement.setString(3,user.getMobileNo());
			
			pStatement.setString(4, user.getPassword());
			pStatement.executeUpdate();
			
			f=true;
		}
		
		catch (Exception e) {
			
		
		e.printStackTrace();
		}
		
		return f;
	}




public User checkAdmin(String EmailId, String Password) {


User user = null;

try {


String quary = "select * from user where EmailId =? and Password =? ";

PreparedStatement preparedStatement  = connection.prepareStatement(quary);

preparedStatement.setString(1, EmailId);

preparedStatement.setString(2, Password);


ResultSet set = preparedStatement.executeQuery();

if(set.next()) {

	user = new User();
	
	user.setUserId(set.getInt("UserId"));
	user.setUserName(set.getString("UserName"));
	  
	user.setEmailId(set.getString("EmailId"));

	 user.setPassword(set.getString("Password"));
	  
		user.setMobileNo(set.getString("MobileNo"));
	
}

}
catch (Exception e) {

e.printStackTrace();
}
return user;
}

public User checkUser(String EmailId, String Password) {
	
	
	User user = null;
	
try {
	
	
	String quary = "select * from user where EmailId =? and Password =? ";
	
	PreparedStatement preparedStatement  = connection.prepareStatement(quary);

	preparedStatement.setString(1, EmailId);

	preparedStatement.setString(2, Password);
	
	
	ResultSet set = preparedStatement.executeQuery();
	
	if(set.next()) {
	
		
		
		user = new User();
		
		
		user.setUserId(set.getInt("UserId"));
		user.setUserName(set.getString("UserName"));
		  
		user.setEmailId(set.getString("EmailId"));
        user.setMobileNo(set.getString("MobileNo"));
		  
		
		  
	}
	
}
catch (Exception e) {
	
	e.printStackTrace();
}

	
return user;


}



public User checkUser1(String EmailId) {


User user = null;

try {


String quary = "select * from user where EmailId =? ";

PreparedStatement preparedStatement  = connection.prepareStatement(quary);

preparedStatement.setString(1, EmailId);




ResultSet set = preparedStatement.executeQuery();

if(set.next()) {

	
	
	user = new User();
	
	
	user.setUserId(set.getInt("UserId"));
	
	
	  
}

}
catch (Exception e) {

e.printStackTrace();
}


return user;
}




public List<User> getAllUser() {
	
	List<User> userList = new ArrayList<>();
	
	User user = null;
	
try {
	
	
	
	String quary ="SELECT * FROM user";
	
	PreparedStatement preparedStatement = connection.prepareStatement(quary);

	
	
	
	ResultSet set = preparedStatement.executeQuery();
	
	

	
	while(set.next()) {
	
		
		
	   user = new User();

		
		user.setUserId(set.getInt("UserId"));
		user.setUserName(set.getString("UserName"));
		  
		user.setEmailId(set.getString("EmailId"));
        user.setMobileNo(set.getString("MobileNo"));
		  
        userList.add(user);
        
        
       
        
	}
		  
	
     
	
}
catch (Exception e) {
	
	e.printStackTrace();
}

	
return userList;


}

	
}
