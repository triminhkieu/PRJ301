<%-- 
    Document   : EditItemPage
    Created on : Apr 12, 2023, 1:09:30 PM
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
        <form action="UpdateCategory">
            <p>Item information</p>
            <p>id <input type="text" value="<%= request.getParameter("txtid")%>" readonly="" name="id"/></p>
            <p>cate name <input type="text" value="<%= request.getParameter("txtcatename")%>" name="catename"/></p>
            <p><select name="status">
                    <option value="1">active</option>
                    <option value="0">inactive</option>
                </select></p>
            <p><input type="submit" value="save" /></p>
        </form>

    </body>
</html>
