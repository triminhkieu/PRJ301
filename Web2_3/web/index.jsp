<%-- 
    Document   : index
    Created on : Apr 11, 2023, 11:18:14 AM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
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
            ArrayList<Category> kq = (ArrayList) session.getAttribute("result");
            if (kq != null) {

                for (Category c : kq) {
        %>
        <!-- co 2 cach day data xuong la the a or form -->
        <a href="MainController?action=loaditem&cateid=<%= c.getId()%>"><%= c.getName()%></a>

        <%
                }
            }

        %>
        <!--hien thi items -->
        <% 
            String msg = (String) request.getAttribute("ERROR");
            if (msg != null) {
                    out.println("<p>" + msg + "</p>");
                }
            String msg2 = (String) request.getAttribute("WARNING");
            if (msg2 != null) {
                    out.println("<p>" + msg2 + "</p>");
                }
        %>
        <%            ArrayList<Item> list = (ArrayList) session.getAttribute("listItem");
            if (list != null) {
                for (Item it : list) {

        %> 
        <div><form action="MainController">

                <p>item id: <%= it.getId()%></p>
                <p>item name: <%= it.getName()%></p>
                <p>item price: <%= it.getPrice()%></p>
                <p>item's cate name: <%= it.getCate().getName()%></p>
                <p><input type="text" name="name"/></p>
                <p><textarea name="content"></textarea></p>
                <input type="hidden" name="id" value="<%= it.getId() %>"/>
                <p><input type="submit" value="send" name="action"/></p>
            </form>

        </div>
        <%                }

            }
        %>

    </body>
</html>
