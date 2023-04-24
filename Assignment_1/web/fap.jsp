<%-- 
    Document   : fap
    Created on : Apr 18, 2023, 11:20:57 PM
    Author     : Admin
--%>

<%@page import="model.dto.FAQ"%>
<%@page import="model.dto.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, th, td {
                border-style: solid;
                text-align: center;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <a href="index.jsp">Home</a>
        <%
            ArrayList<Item> itList = (ArrayList) session.getAttribute("iList");
            if (itList != null) {
        %>
        <form>
            <p>Choose the item to get FAQs :</p>
            <p>
                <select name="info">
                    <%
                        for (Item iObject : itList) {
                    %>
                    <option value="<%= iObject.getItemId()%>"><%= iObject.getItemName()%></option>
                    <%
                        }
                    %>
                </select>
            </p>

            <input type="submit" value="get" name="action"/>
        </form>
        <%
            }
        %>
        <%
            ArrayList<FAQ> faqList = (ArrayList) request.getAttribute("faqList");
            if (faqList != null) {
        %>
        <p>All FAQs of the item:</p>
        <table>
            <tr>
                <th>Customer's name</th>
                <th>Customer's content</th>
            </tr>
            <%
                for (FAQ fObject : faqList) {
            %>
            <tr>
                <td><%= fObject.getCustName()%></td>
                <td><%= fObject.getCustContent()%></td>
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
