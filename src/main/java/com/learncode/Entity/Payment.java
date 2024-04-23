package com.learncode.Entity;

public class Payment {

	
	
	
	private String CardNumber;
	private String ExpiryDate;
	private String CVV;
	private String CardOwnerName;
	
	
	public Payment( String cardNumber, String expiryDate, String cVV, String cardOwnerName) {
		super();
		
		CardNumber = cardNumber;
		ExpiryDate = expiryDate;
		CVV = cVV;
		CardOwnerName = cardOwnerName;
	}


	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}


	


	


	public String getCardNumber() {
		return CardNumber;
	}


	public void setCardNumber(String cardNumber) {
		CardNumber = cardNumber;
	}


	public String getExpiryDate() {
		return ExpiryDate;
	}


	public void setExpiryDate(String expiryDate) {
		ExpiryDate = expiryDate;
	}


	public String getCVV() {
		return CVV;
	}


	public void setCVV(String cVV) {
		CVV = cVV;
	}


	public String getCardOwnerName() {
		return CardOwnerName;
	}


	public void setCardOwnerName(String cardOwnerName) {
		CardOwnerName = cardOwnerName;
	}


	@Override
	public String toString() {
		return "Payment [CardNumber=" + CardNumber + ", ExpiryDate=" + ExpiryDate
				+ ", CVV=" + CVV + ", CardOwnerName=" + CardOwnerName + "]";
	}
	
	
	
}
