<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
  }
  
  .header {
  
   
    background-color:#444444;
    color: #fff;
    padding: 20px;
    text-align: center;
  }
  
  .header h1 {
    margin: 0;
    font-size: 36px;
    letter-spacing: 2px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  }
  
  
</style>
<meta charset="ISO-8859-1">
<title>LearnTube-AdminDashBoard</title>
</head>
<body>


 
<%
    String nik = request.getParameter("nik");
    if (nik != null && nik.equals("1")) {
%>
    <script>
        alert("Success: Welcome TO Goa Shingham!");
    </script>
<%
    }
%>
<%@include file="AdminNav.jsp" %>
<br><br></br></br>
 <div class="header">
    <h1>WeLcome Admin</h1>
  </div>
  
           
            
            
</body>
</html>