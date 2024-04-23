<%@page import="com.learncode.Entity.Course"%>
<%@page import="com.learncode.Entity.User"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

 <title>LearnCode_DashBoard</title>
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
        
          #carouselExampleIndicators {
    margin-top: 3px;
  }
  
  .carousel-img {
    width: 300px; /* Adjust the width as needed */
    height: 200px; /* Maintain aspect ratio */
  }
  

  .card {
    padding: 20px; 
    
  }

</style>
</head>
<body>


<%
    String success = request.getParameter("success");
    if (success != null && success.equals("1")) {
%>
    <script>
        alert("Success: Logged in successfully!");
    </script>
<%
    }
%>

<% User user =(User) session.getAttribute("currentuser"); 

List<Course> CourseList = (List<Course>) session.getAttribute("allcourse");

%>
<!-- listview  -->



<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Welcome To LearnTube</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  
    		
  </div>

<!-- listview end -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"  data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"><img src="img/list.png"  style="width: 20px; height: 20px;" > &nbsp;  LearnTube</a>
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
     
        
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><img src="img/user.png"  style="width: 20px; height: 20px;" ><%= user.getUserName()  %></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"  onclick="confirmLogout()">LogOut</a>
        </li>
       
        
      </ul>
    </div>
  </div>
  
 </nav>
 


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="text-center	 modal-title"  id="staticBackdropLabel">UserDetail</h5>
       
        </div>
      <div class="modal-body"> 	
       
       <table class="table">

  <tbody>
  
    <tr>
      <th scope="row">UserId:</th>
      <td class="text-center"><%=user.getUserId() %></td>
     </tr>
    <tr>
      <th scope="row">UserName:</th>
      <td class="text-center"><%=user.getUserName() %></td>
      
    </tr>
    <tr>
      <th scope="row">EmailId:</th>
      <td class="text-center"><%=user.getEmailId() %></td>
     </tr>
   
   
    <tr>
      <th scope="row">MobileNo:</th>
      <td class="text-center"><%=user.getMobileNo() %></td>
     </tr>
  
  </tbody>
</table>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- Caurosol Start -->

<div id="carouselExampleIndicators" class="carousel slide mt-10" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/first.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/second.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/th.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- caurosol End -->

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

<!-- card start -->
<br>

<h2 class="text-center"> Choose Courses</h2>
<div class="row row-cols-1 row-cols-md-3 g-4">


<%
      if (CourseList != null && !CourseList.isEmpty()) {
        %>

    <% for (Course course : CourseList) { %>
    
    
    <div class="card-group">

  <div class="card">

   <a href="oneCourse.jsp?courseName=<%=course.getCourseName() %>">
    <img src="uploadedFiles/<%=course.getCoursePic() %>" class="card-img-top" alt="..." style="max-height: 200px; max-width: 350px;">
</a>
   
    <div class="card-body">

      <h5 class="card-title text-center"><b> <%=course.getCourseName() %></b></h5>
     
     
     <table class=" table table-borderless">
  <thead>
    <tr>
      <th scope="col">Course Price</th>
      <td>Rs &nbsp; <%=course.getCoursePrice() %></td>
    </tr>
  </thead>
  <tbody>
    <tr>
    <th scope="col">Course Detail</th>
      
      
      
      <td><%=course.getCourseDetails() %></td>
      
    </tr>
     </tbody>
</table>
      
      
    </div>
  </div>



</div>
    

 <% } %>
    
    
         <%
    } else {
        %>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                <br><br>
                
                    <h2 class="text-center">Session Expired Please Login Again !!</h2>
                </div>
            </div>
        </div>
        <%
    }
%> 
                        
</div>


</div>



<%@include file="fotter.jsp" %>

<script>



function confirmLogout() {
    var logout = confirm("Are you sure you want to logout?");
    if (logout) {
      
        window.location.href = "index.jsp"; 
    } 
    
    else {
    	window.location.href = "dashboard.jsp"; 
    	
       }
}

</script>
</body>
</html>
