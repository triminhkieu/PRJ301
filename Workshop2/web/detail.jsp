<%-- 
    Document   : detail
    Created on : Apr 13, 2023, 9:59:35 PM
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
        <style>
            table, td {
                border-style: hidden;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
            }
        </style>
    </head>
    <body>
        <%
            ArrayList<Item> listItem = (ArrayList) request.getAttribute("itList");
            if (listItem != null) {
        %>
        <h1 style="text-align: center"><%= request.getAttribute("cName")%></h1>
        <table style="width: 50%">
            <tr>
                <td><h3>ID</h3></td>
                <td><h3>NAME</h3></td>
                <td><h3>PRICE</h3></td>
            </tr>
            <%

                for (Item itObject : listItem) {
            %>

            <tr>
            <form action="MainController">
                <td><%= itObject.getItemId()%></td>
                <td><%= itObject.getItemName()%></td>
                <td><%= itObject.getPrice()%></td>
                <p><input type="hidden" name="name" value="<%= itObject.getItemName() %>"/></p>
                <p><input type="hidden" name="id" value="<%= itObject.getItemId() %>"/></p>
                <td><input type="submit" value="send" name="action"/></td>
            </form>
        </tr>
        <%
            }
        %>
    </table>
    <%
        }
    %>
</body>
</html>
