<%-- 
    Document   : page3
    Created on : Apr 17, 2023, 12:47:42 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>${"anhyeuem"}</p>
        <p>${10}</p>
        <p>${20+40}</p>
        <p>${param.warning}</p>
        <p>${requestScope.warning}</p>
        <p>${sessionScope.sp.id}</p>
        <p>${sessionScope.sp.name}</p>
        <c:set var="x" value="${ sessionScope.sp }" />
        <h1>${ x.id }</h1>
        <h1>${ x.name }</h1>
        
    </body>
</html>
