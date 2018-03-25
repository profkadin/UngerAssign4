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
        <h1>Create an Account</h1>
        
        <form action="newUser" method="post">
            <table>
                <tr><td>First Name: <td><input type="text" name="firstName" required> <br>
                <tr><td>Last Name: <td><input type="text" name="lastName" required> <br>
                <tr><td>Phone Number: <td><input type="number" name="phoneNumber" required> <br>
                <tr><td>Address: <td><input type="text" name="address" required> <br>
                <tr><td>City: <td><input type="text" name="city" required> <br>
                <tr><td>State: <td><input type="text" name="state" required> <br>
                <tr><td>Zip-code: <td><input type="text" name="zipcode" required> <br>
                <tr><td>Email: <td><input type="email" name="email" required> <br>
            
            </table>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
