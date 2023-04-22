<%-- 
    Document   : manageCategory
    Created on : Apr 21, 2023, 10:54:36 AM
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
        <form action="insertCategoryServlet">
            id: <input type="text" name="id"/>
            name: <input type="text" name="name"/>
            status: <input type="text" name="status"/>
            <input type="submit" value="insert" name="action"/>
        </form>
        <p>${requestScope.error}</p>
    </body>
</html>
