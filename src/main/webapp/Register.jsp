<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>LearnCode_Register</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
           
           
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form{
        display: flex;
       
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%
    String success = request.getParameter("success");
    if (success != null && success.equals("1")) {
%>
    <script>
        alert("Error: User Already Found !! Please Try With Another Email");
    </script>
<%
    }
%>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">LearnTube</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="about.jsp">About</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Contect.jsp">Contect</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="help.jsp">Help</a>
        </li>
        
        </ul>
          
      <ul class="navbar-nav list-unstyled d-flex justify-content-end">
     
        
        
       
        
      </ul>
    </div>
  </div>
  
 </nav>

<body>

<br><br><br>
    <div class="container d-flex justify-content-center">
        <div class="login-container">
            <h2>Register</h2>
            <form action="RegisterServlet" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="UserName" required>
                </div>
                <div class="form-group">
                    <label for="password">EmailId</label>
                    <input type="Email" id="password" name="EmailId" required>
                </div>
                
                 <div class="form-group">
                    <label for="password">MobileNo</label>
                    <input type="text" id="password" name="MobileNo" required>
                </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="Password" required>
                </div>
                <div class="form-group">
                    <button type="submit">RegisterHere</button>
                </div>
                
                <a href="Login.jsp"><h5 class="text-center"> Already User ?</h5></a>
            </form>
        </div>
    </div>

<%@include file="fotter.jsp" %>

</body>
</html>