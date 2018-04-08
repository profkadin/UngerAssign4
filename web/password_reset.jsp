<%-- 
    Document   : password_reset
    Created on : Apr 7, 2018, 9:20:35 PM
    Author     : brain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Reset</title>
    </head>
    <body>
        <%@include file="header.html" %>
        <form action="account_activity.jsp">
            Password: <br>
            <input type="text" name="${user.password}">
            <input type="submit" value="Submit">
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
