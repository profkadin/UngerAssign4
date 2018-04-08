<%-- 
    Document   : New_customer
    Created on : Mar 24, 2018, 12:56:59 PM
    Author     : brain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create an Account</title>
    </head>
    <body> 
        <%@include file="header.html" %>
        <h1>Create an Account</h1>
       
        <p><i>${message}</i></p>
        <form action="newUser" method="post">
            <table>
                <tr><td>First Name: <td><input type="text" name="firstName"> <br>
                <tr><td>Last Name: <td><input type="text" name="lastName"> <br>
                <tr><td>Phone Number: <td><input type="number" name="phoneNumber"> <br>
                <tr><td>Address: <td><input type="text" name="address"> <br>
                <tr><td>City: <td><input type="text" name="city"> <br>
                <tr><td>State: <td><input type="text" name="state"> <br>
                <tr><td>Zip-code: <td><input type="number" name="zipcode"> <br>
                <tr><td>Email: <td><input type="email" name="email"> <br>
            
            </table>
            <input type="submit" value="Submit">
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
