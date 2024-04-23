<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  
  <title>Payment Gateway</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f0f0f0;
    }

    .payment-form {
      background-color: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .payment-form label {
      display: block;
      margin-bottom: 10px;
    }

    .payment-form input[type="text"], .payment-form input[type="number"], .payment-form select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    .payment-form button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .payment-form button:hover {
      background-color: #45a049;
    }

  </style>
</head>
<body>




<div>
<marquee> <b>Please Be Carefull While Doing The Transaction.!!</b></marquee>
 </div>
 
  <div class="payment-form ">
    <h2>Payment Details</h2>
    <form  action="PaymentServlet" method="post" >
    
     
      <label for="cardNumber">Card Number:</label>
      <input type="text" id="cardNumber" name="CardNumber" placeholder="Enter card number" required>

      <label for="expiryDate">Expiry Date:</label>
      <input type="text" id="expiryDate" name="ExpiryDate" placeholder="MM/YY" required>
      
      <label for="cvv">CVV:</label>
      <input type="text" id="cvv" name="CVV" placeholder="CVV" required>

      <label for="name">Name on Card:</label>
      <input type="text" id="name" name="CardOwnerName" placeholder="Name on card" required>

      <button type="submit">Pay Now</button>
    </form>
    <div id="paymentStatus"></div>
  </div>

  <script>
    document.getElementById("paymentForm").addEventListener("submit", function(event) {
      event.preventDefault();
      
      // Simulate payment process (replace this with actual payment processing)
      setTimeout(function() {
        document.getElementById("paymentStatus").innerText = "Payment successful!";
      }, 2000);
    });
  </script>
  
 
</body>
</html>
    