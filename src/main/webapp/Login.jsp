<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
        align
       
        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            
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
    String error = request.getParameter("error");
    if (error != null && error.equals("1")) {
%>
    <script>
        alert("Error: Invalid credentials. Please try again.");
    </script>
<%
    }
%>

<%
    String msg = request.getParameter("msg");
    if (msg != null && msg.equals("1")) {
%>
    <script>
        alert("Success: LoggedOut Successfully!");
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

<%
    String success = request.getParameter("success");
    if (success != null && success.equals("1")) {
%>
    <script>
        alert("Success: Register successfully!");
    </script>
<%
    }
%>
<br><br><br><br><br><br><br>
    <div class="container d-flex justify-content-center">
        <div class="login-container">
            <h2>Login</h2>
            <form  action="LoginServlet" method="post">
                <div class="form-group">
                    <label for="username">EmailId</label>
                    <input type="email" id="username" name="EmailId" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="Password" required>
                </div>
                <div class="form-group">
                    <button type="submit">Login</button>
                    
                    
                      <a href="Register.jsp"><h5 class="text-center">New User ?</h5></a>
                </div>
                
                
            </form>
        </div>
    </div>

 
</body>
</html>
