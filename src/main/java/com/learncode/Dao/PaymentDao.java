package com.learncode.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learncode.Entity.Course;
import com.learncode.Entity.Payment;


public class PaymentDao {

	
	private Connection connection;
	
	public PaymentDao(Connection connection) {
		
		this.connection=connection;
	
	}
	
	
	
public boolean SavePayment(Payment payment) {
		
		boolean f =false;
		
		try {

			String query="insert into payment (CardNumber,ExpiryDate,CVV,CardOwnerName) values(?,?,?,?)";
			
			PreparedStatement pStatement = this.connection.prepareStatement(query);
			
			
			
			pStatement.setString(1, payment.getCardNumber());	
			pStatement.setString(2, payment.getExpiryDate());
			pStatement.setString(3, payment.getCVV());
			pStatement.setString(4, payment.getCardOwnerName());
			
  
			pStatement.executeUpdate();
			
			f=true;
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}



public List<Payment> getAllPayments() {
	
	List<Payment> Paymentlist = new ArrayList<>();

	
	Payment payment =null;
try {
	
	
	
	String quary ="SELECT * FROM payment";
	
	PreparedStatement preparedStatement = connection.prepareStatement(quary);

	
	
	
	ResultSet set = preparedStatement.executeQuery();
	
	

	
	while(set.next()) {
	
		
		
	  payment= new Payment();

		
     payment.setCardNumber(set.getString("CardNumber"));
	 payment.setExpiryDate(set.getString("ExpiryDate"));
      payment.setCVV(set.getString("CVV"));
      payment.setCardOwnerName(set.getString("CardOwnerName"));
      
      
      Paymentlist.add(payment);
      
      
	}
		  
	
     
	
}
catch (Exception e) {
	
	e.printStackTrace();
}

	
return Paymentlist;


}




public Payment getPaymentbYName(String CardOwnerName) {
    Payment payment = null;
    String query = "SELECT * FROM payment WHERE CardOwnerName = ?";
    
    try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
        preparedStatement.setString(1, CardOwnerName);
        ResultSet resultSet = preparedStatement.executeQuery();
        
        if (resultSet.next()) {
            payment = new Payment(
                resultSet.getString("CardNumber"),
                resultSet.getString("ExpiryDate"),
                resultSet.getString("CVV"),
                resultSet.getString("CardOwnerName")
            );
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
    return payment;
}
		
}
