<%-- 
    Document   : page1
    Created on : Apr 17, 2023, 11:43:49 AM
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
        <!--dto.Prodct la mot object-->
        <!--id nay la set-->
        <jsp:useBean class="dto.Product" id="sp" scope="session">
            <!--property la goi setter-->
            <jsp:setProperty property="id" name="sp" value="1"/>
            <jsp:setProperty property="name" name="sp" value="gao"/>
            <jsp:setProperty property="status" name="sp" value="true"/>
        </jsp:useBean>
        <a href="page2.jsp">link test</a>
        <jsp:forward page="page3.jsp">
            <jsp:param name="warning" value="chao may dua"/> 
        </jsp:forward>
    </body>
</html>
