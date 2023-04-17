<%-- 
    Document   : index2
    Created on : Apr 12, 2023, 10:55:25 AM
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
        <form action="LoadCategories2">
            <input type="submit" value="get all categories"/>
        </form>
        <%
            ArrayList<Category> kq = (ArrayList) request.getAttribute("result");
        %>
        <table>
            <%
                if (kq != null) {

                    for (Category c : kq) {
            %>
            <tr><form action="EditItemPage.jsp">
                <input type="hidden" value="<%= c.getId()%>" name="txtid"/>
                <input type="hidden" value="<%= c.getName()%>" name="txtcatename"/>
                <input type="hidden" value="<%= c.getStatus()%>" name="txtstatus"/>
                <td><%= c.getId()%></td>
                <td><%= c.getName()%></td>
                <td><%= c.getStatus()%></td>
                <td><input type="submit" value="edit"/></td>
            </form></tr>
            <%
                    }
                }
            %>
    </table>
</body>
</html>
