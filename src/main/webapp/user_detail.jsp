
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.learncode.Entity.User"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <meta charset="ISO-8859-1">
    <title>User Detail</title>
</head>
<body>

<% 


List<User> userList = userList =(List<User>) session.getAttribute("alluser");

%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="AdminPage.jsp">LearnTube Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            </ul>
            <ul class="navbar-nav list-unstyled d-flex justify-content-end">
                 <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="AdminPage.jsp">AdminHome</a>
                </li>
                
                
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="CourseDetail.jsp">Course Detail</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="help.jsp">Help</a>
                </li>
                
                
            </ul>
        </div>
    </div>
</nav>
<br>


<%
      if (userList != null && !userList.isEmpty()) {
        %>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-20">
                    <table class="table table-dark table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">User ID</th>
                            <th class="text-center">User Name</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Mobile No</th>
                            
                            <th class="text-center">Delete Data</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for (User user : userList) { %>
                            <tr>
                                <td class="text-center"><%= user.getUserId() %></td>
                                <td class="text-center"><%= user.getUserName() %></td>
                                <td class="text-center"><%= user.getEmailId() %></td>
                                <td class="text-center"><%= user.getMobileNo() %></td>
                                
                                <td class="text-center"><button type="button" class="btn btn-danger">Delete</button></td>
                                
                            </tr>
                        <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <%
    } else {
        %>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <p class="text-center">No users found</p>
                </div>
            </div>
        </div>
        <%
    }
%>

</body>
</html>
    