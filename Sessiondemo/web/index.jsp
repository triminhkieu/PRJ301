<%-- 
    Document   : index.jsp
    Created on : Apr 15, 2023, 9:26:32 PM
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
            Search: <input type="text" name="txtsearch"/>
            <input type="submit" value="find" name="action"/>
        </form>
        <%
            String kq = (String) request.getAttribute("result");
            if (kq != null) {
                    out.println("<p> ket qua: " + kq + "</p>");
                }
        %>
        <a href="MainController?action=help">help?</a>
        
        
    </body>
</html>
