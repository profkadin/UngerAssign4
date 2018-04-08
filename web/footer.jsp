<%-- 
    Document   : footer
    Created on : Apr 8, 2018, 12:05:25 PM
    Author     : brain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% //(new java.util.Date()).toLocaleString()
            SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
            String date = sdf.format(new Date());
        
        %>
        <p> <%=date%>
    </body>
</html>
