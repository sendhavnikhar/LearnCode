<%@page import="com.learncode.Entity.Payment"%>
<%@page import="java.util.List"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Course Detail</title>
</head>
<body>

<% 


List<Payment> PaymentList = (List<Payment>) session.getAttribute("allPayments");



public String generateTableRows(List<Payment> paymentList) {
	
    StringBuilder rows = new StringBuilder();
    
    for (Payment payment : paymentList) {
        rows.append("<tr>");
        rows.append("<td class=\"text-center\">" + payment.getCardOwnerName() + "</td>");
        rows.append("<td class=\"text-center\">" + payment.getCardNumber() + "</td>");
        rows.append("<td class=\"text-center\">" + payment.getExpiryDate() + "</td>");
        rows.append("<td class=\"text-center\">" + payment.getCVV() + "</td>");
        rows.append("<td class=\"text-center\"><a href=\"DownloadPDFServlet?CardName=" + payment.getCardOwnerName() + "\" class=\"btn btn-success\">DOWNLOAD</a></td>");
        rows.append("</tr>");
    }
    return rows.toString();
}


%>

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
          <a class="nav-link active" aria-current="page" href="AdminPage.jsp">AdminHome</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_detail.jsp">UserDetails</a>
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
      if (PaymentList != null && !PaymentList.isEmpty()) {
        %>
        
 
        <form action="DeleteServlet" method="get">
        
        
             <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-20">
                    <table class="table table-dark table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">CardOwnerName</th>
                            <th class="text-center">CardNumber</th>
                            <th class="text-center">Card ExpiryDate</th>
                            <th class="text-center">Card Cvv </th>
                            
                             <th class="text-center">Get Reciept</th>
                            
                            
                        </tr>
                        </thead>
                        
                        <tbody>
                        
                        <% for (Payment payment : PaymentList) { %>
                        
                            <tr>
                                <td class="text-center"><%= payment.getCardOwnerName() %></td>
                                <td class="text-center"><%= payment.getCardNumber() %></td>
                                <td class="text-center"><%= payment.getExpiryDate() %></td>
                                <td class="text-center"><%= payment.getCVV() %></td>
                               
                            <td class="text-center"> <a href="DownloadPDFServlet?CardName=<%=payment.getCardOwnerName() %>" class="btn btn-success">DOWNLOAD</a></td>
                        <% } %>
                        
                          
                              
                                
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </form>	
        
    
        
        <%
    } else {
        %>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <p class="text-center">No Courses found</p>
                </div>
            </div>
        </div>
        <%
    }
%> 






<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	
<script>

        $(document).ready(function(){
            $("#deleteButton").click(function(){
                $.ajax({
                    type: "POST",
                    url: "DeleteServlet", // Servlet URL
                    success: function(response){
                        // Handle success response from servlet
                        alert(response);
                    },
                    error: function(xhr, status, error) {
                        // Handle error response from servlet
                        alert("Error: " + xhr.responseText);
                    }
                });
            });
        });
    </script>

</body>
</html>