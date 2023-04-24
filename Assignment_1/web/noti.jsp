<%-- 
    Document   : noti
    Created on : Apr 19, 2023, 7:39:20 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= request.getAttribute("Success") %></h1>
        <a href="index.jsp">Home</a>
    </body>
</html>
