<%@page import="com.learncode.Entity.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!doctype html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <title>NavBar</title>
    
    
      
    

<style>

.container {
  width: 20%;
  margin: 50px auto;
  text-align: center;
}

#mySelect {
 
 
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
 
  cursor: pointer;
  appearance: none; /* Remove default arrow */
  
  background-color:black;
  
}

#mySelect option {
  padding: 10px;
}

</style>    
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
  
  </head>
  <body>
   
   
   
   
<% 


 User use =(User) session.getAttribute("currentuser"); %>
 

 
  <%
    String success = request.getParameter("course");
    if (success != null && success.equals("1")) {
%>
    <script>
        alert("Success: Data Added SuccessFully!");
    </script>
<%
    }
%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="AdminPage.jsp">LearnTube Admin</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
        </ul>
          
      <ul class="navbar-nav list-unstyled d-flex justify-content-end">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_detail.jsp">UserDetails</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="CourseDetail.jsp">Course Detail</a>
        </li>
        
                <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="paymentDetails.jsp">PaymentDetail</a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Profile</a>
        </li>
        
       
       
          
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AddCourse.jsp" >AddCourse</a>
        </li>
        
         <li class="nav-item">
                    <a class="nav-link active" aria-current="page" onclick="confirmLogout()" href="LogoutServlet">Logout</a>
                </li>
        
          
      </ul>
    </div>
  </div>
  
 </nav>
 
 <!-- Start AddCourse Model -->
 <!-- Button trigger modal -->



 
 
<!-- Model Start -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="text-center	 modal-title"  id="staticBackdropLabel">UserDetail</h5>
       
        </div>
      <div class="modal-body"> 	
       
       <table class="table">

  <tbody>
  
    <% if(use!=null) {
    	
    	%>
    
    <tr>
      <th scope="row">UserId:</th>
      <td class="text-center"><%=use.getUserId() %></td>
     </tr>
    <tr>
      <th scope="row">UserName:</th>
      <td class="text-center"><%=use.getUserName() %></td>
     
    </tr>
    <tr>
      <th scope="row">EmailId:</th>
      <td class="text-center"><%=use.getEmailId() %></td>
     </tr>
   
   
    <tr>
      <th scope="row">MobileNo:</th>
      <td class="text-center"><%=use.getMobileNo() %></td>
     </tr>
  
  </tbody>
  
  <%} else { %>
  
    <tr>
      
      <td class="text-center">Session Expired Please Login Again !!</td>
     </tr>
  
  <%} %>
</table>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<!-- ModelEnd -->

</body>

</html>