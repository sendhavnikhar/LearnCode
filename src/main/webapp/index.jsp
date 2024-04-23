<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.learncode.Entity.User"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
       
<link href="css/about.css" rel="stylesheet" />



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
    padding: 10px;
    text-align: center;
  }
  
  .header h1 {
    margin: 0;
    font-size: 36px;
    letter-spacing: 2px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  }
  
  
  .container {
    max-width: 800px;
    margin: 50px auto;
    padding: 0 20px;
    text-size:90px;
  }
  
  
  .p1 {
  
    font-size:30px;
    line-height: 1.6;
    color: #333;
    font-family:
  }
  
  
  
  .marquee {
    width: 100%;
    height: 50px;
    overflow: hidden;
    white-space: nowrap;
    box-sizing: border-box;
    border: 2px solid :#444444;
    border-radius: 10px;
  }

  .marquee p {
    display: inline-block;
    padding: 10px 20px;
    margin: 0;
    animation: marquee 10s linear infinite;
  }

  @keyframes marquee {
    0% {
      transform: translateX(100%);
    }
    100% {
      transform: translateX(-100%);
    }
</style>
<meta charset="ISO-8859-1">
<title>LearnCode-DashBoardPage</title>
</head>
<body>


<% User user =(User) session.getAttribute("currentuser"); %>


<%@include file="navbar.jsp" %>
  <!-- Bootstrap CSS -->
  

</head>

<br>

  <div class="header">
    <h1>Welcome to our LearnCode Website</h1>
  </div>
  
  
 <div class="marquee">
    <p>Welcome to our LearnCode website! We offer amazing Learning Courses. Join us today and experience excellence.</p>
  </div>
  
   <header class="py-1">
                <div class="container px-1">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-2">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">Learning to code got simplified.
Learn the latest technology with interactive, hands-on courses. </h1>
                                 <a class="btn btn-primary btn-lg" href="Login.jsp"  >Choose the Course</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            
            


<!-- card start -->
<br>

<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-50">
      <img src="img/web.jpg" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Web Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/java.png" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Java Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/Python.png" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Python Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/node.png" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Node Developement</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  
    <div class="col">
    <div class="card h-100">
      <img src="img/react.png" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">React Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card h-100">
      <img src="img/second.jpg" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Android Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  
    <div class="col">
    <div class="card h-100">
      <img src="img/Flutter.png" class="card-img-top" alt="..." style="max-height: 260px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Flutter Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  
    <div class="col">
    <div class="card h-100">
      <img src="img/sql.png" class="card-img-top" alt="..." style="max-height: 260px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Sql Development</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  
    <div class="col">
    <div class="card h-100">
      <img src="img/angular.png" class="card-img-top" alt="..." style="max-height: 300px; max-width:550px;">
      <div class="card-body">
        <h5 class="card-title">Angular Devlopement</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
</div>




            
 <%@include file="fotter.jsp" %>
</body>
</html>


   
