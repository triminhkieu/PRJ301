<%-- 
    Document   : ViewCart
    Created on : Apr 14, 2023, 1:39:23 PM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
<%@page import="model.dao.ItemDao"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HashMap<String, Integer> kq = (HashMap) session.getAttribute("giohang");
            if (kq != null) {
        %>
        <table>
            <%
                int sum = 0;
                //lay toan bo cot id thi dung keySet
                for (String id : kq.keySet()) {
                    Item it = ItemDao.getItem(Integer.parseInt(id));
            %>
            <tr>
            <form action="MainController2">
                <input type="hidden" value="<%= id %>" name="itemid"/>
                <td><%= id%></td>
                <td><%= it.getName()%></td>
                <td><%= it.getPrice()%></td>
                <td><input type="number" value="<%= kq.get(id)%>" name="quantity" min="1"/></td>
                <td><input type="submit" name="action" value="edit"/></td>
            </form>
            </tr>
        <%
                sum = sum + it.getPrice() * kq.get(id);
            }
        %>
    </table>
    <p>Total:<%= sum%></p>
    <%            }

    %>
</body>
</html>
