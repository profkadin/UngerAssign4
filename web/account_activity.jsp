<%-- 
    Document   : account_activity
    Created on : Apr 7, 2018, 11:16:27 PM
    Author     : brain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Activity</title>
    </head>
    <body>
        <%@include file="header.html" %>
        <c:choose>
            <c:when test="${user != null}">
                <p>Hello ${user.firstName} ${user.lastName}</p>
            </c:when>
            <c:otherwise>
                <p>Not logged in</p>
            </c:otherwise>
        </c:choose>
        <%@include file="footer.jsp" %>
    </body>
</html>
