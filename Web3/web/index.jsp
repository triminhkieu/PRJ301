<%-- 
    Document   : index
    Created on : Apr 14, 2023, 11:26:19 AM
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
        <form action="MainController">
            search: <input type="text" name="txtsearch"/>
            <input type="submit" value="find" name="action"/>
        </form>
        <!--hien thi ket qua find-->
        <% 
            String kq = (String) request.getAttribute("result");
            if (kq != null) {
                    out.print("<p> ket qua:" + kq + "</p>");
                }
        %>
        <p><a href="MainController?action=help">help?</a></p>
    </body>
</html>
