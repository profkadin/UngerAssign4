<%-- 
    Document   : Success
    Created on : Apr 7, 2018, 9:11:44 PM
    Author     : brain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Success</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@include file="header.html" %>
        <div>Account Created Successfully</div>
        <table>
            <tr><td>First Name: <td>${user.firstName} <br>
            <tr><td>Last Name: <td>${user.lastName} <br>
            <tr><td>Phone Number: <td>${user.phoneNumber} <br>
            <tr><td>Address: <td>${user.address}<br>
            <tr><td>City: <td>${user.city}<br>
            <tr><td>State: <td>${user.state}<br>
            <tr><td>Zipcode: <td>${user.zipcode} <br>
            <tr><td>Email: <td>${user.email} <br>
            <tr><td>Username: <td>${user.userName} <br>
            <tr><td>Password: <td>${user.password}        
        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
