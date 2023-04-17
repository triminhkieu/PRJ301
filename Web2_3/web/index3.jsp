<%-- 
    Document   : index3
    Created on : Apr 14, 2023, 12:52:22 PM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
            <a href="MainController2?action=view">View gio hang</a>
        </p>
        <%
            ArrayList<Item> list = (ArrayList) request.getAttribute("result");
            if (list != null) {
        %>
        <table>
            <%
                for (Item t : list) {
            %>
            <tr><form action="MainController2"> 
                <td><%= t.getId()%></td>
                <td><%= t.getName()%></td>
                <input type="hidden" name="itemid" value="<%= t.getId()%>"/>
                <td><input type="submit" value="add" name="action"/></td>
            </form></tr>
            <%
                }
            %>
        </table>
        <%
            }
        %>
    </body>
</html>
