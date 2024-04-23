package com.learncode.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.learncode.Dao.PaymentDao;
import com.learncode.Entity.Payment;
import com.learncode.helper.ConnectionProvider;


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PaymentServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		  try {
			  
			  
			   
			   String CardNumber = request.getParameter("CardNumber");
			   
			   String ExpiryDate = request.getParameter("ExpiryDate");

			   String CVV = request.getParameter("CVV");
			   
			   String CardOwnerName = request.getParameter("CardOwnerName");
			   
			   
 			  Payment payment = new Payment(CardNumber,ExpiryDate,CVV,CardOwnerName);
 			  
 			  PaymentDao paymentDao = new PaymentDao(ConnectionProvider.getConnection());
 			  
			  paymentDao.SavePayment(payment);
			  
			  System.out.println("Payment Data is successfully Added");
			  
			   
			
			   
		  }
		
		  catch (Exception e) {
			
			  e.printStackTrace();
		}
		  
		  
		
	}

}
