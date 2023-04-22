<%-- 
    Document   : detail
    Created on : Apr 18, 2023, 10:58:13 PM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item Management</title>
        <style>
            table, th, td {
                border-style: solid;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: left">All items</h1>
        <a href="index.jsp">Home</a>
        <%
            ArrayList<Item> ilist = (ArrayList) request.getAttribute("itList");
            if (ilist != null) {
        %>
        <table style="width: 50%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Action</th>
            </tr>

            <%
                for (Item iObject : ilist) {
            %>
            <tr>
                <td><%= iObject.getItemId()%></td>
                <td><%= iObject.getItemName()%></td>
                <td><a href="MainController?action=edit&id=<%= iObject.getItemId() %>">Edit</a></br></td>
            </tr>
        <%
            }
        %>
                </table>

        <%
            }
        %>
        <a href="MainController?action=create" style="margin-left: 655px">Create a new item</a>
    </body>
</html>
