<%-- 
    Document   : page2
    Created on : Apr 17, 2023, 12:38:52 PM
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
        <!--id nay la de get-->
        <jsp:useBean id="sp" class="dto.Product" scope="session">
        </jsp:useBean>
        <!--getters-->
        <jsp:getProperty name="sp" property="id"/>
        <jsp:getProperty name="sp" property="name"/>
        <jsp:getProperty name="sp" property="status"/>

    </body>
</html>
