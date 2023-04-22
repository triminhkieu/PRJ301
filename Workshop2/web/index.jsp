<%-- 
    Document   : index
    Created on : Apr 13, 2023, 1:14:40 PM
    Author     : Admin
--%>

<%@page import="model.dto.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Category> listCate = (ArrayList) request.getAttribute("cateList");
            if (listCate != null) {
                for (Category cateObject : listCate) {
        %>
        <a href="MainController?action=loaditem&cateid=<%= cateObject.getCateId() %>&catename=<%= cateObject.getCateName() %>">
            <%= cateObject.getCateName()%></a>
            <%
                    }

                }
            %>
            
    </body>
</html>
