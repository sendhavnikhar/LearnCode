<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

 <style>
    
   body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  margin: 0;
  padding: 0;
}

.container {
  max-width: 600px;
  margin: 50px auto;
  padding: 20px;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
  text-align: center;
}

form {
  margin-top: 20px;
}

label,
input,
textarea,
button {
  display: block;
  width: 100%;
  margin-bottom: 10px;
}

label {
  font-weight: bold;
}

input,
textarea {
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}
    
    </style>
    
    <title>LearnTube-AddCourse</title>
    
  </head>
  <body>
  
  <%@include file="AdminNav.jsp" %>
  
  
  
  <%
    String succe = request.getParameter("suc");
    if (succe != null && succe.equals("1")) {
%>

    <script>
        alert("Success: Course Added successfully!");
    </script>
<%
    }
%>



  
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>




  <div class="container">
    <h1>AddCourse</h1>
    <form action="CourseServlet" method="post" enctype="multipart/form-data">
      <label for="name">Name:</label>
      <input type="text" id="name" name="CourseName" required>
      
      <label for="email">Price</label>
      <input type="text" id="email" name="CoursePrice" required>
      
      <label for="message">Detail</label>
      <textarea id="message" name="CourseDetails" required></textarea>
      
      
     <label for="message">uploadFile</label>
       <input type="file" id="name" name="CoursePic" required>
      
      
      <button type="submit">Submit</button>
    </form>
  </div>
</body>
</html>

 