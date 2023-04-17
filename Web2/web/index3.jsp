<%-- 
    Document   : index3
    Created on : Apr 14, 2023, 12:52:22 PM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <c:set var="list" value="${requestScope.result}"/>
        <c:if test="${list!=null}">
            <table>
                <c:forEach var="t" items="${list}">
                    <tr>
                    <form action="MainController2">
                        <td>${t.id}</td>
                        <td>${t.name}</td>
                        <input type="hidden" name="itemid" value="${t.id}"/>
                        <td><input type="submit" value="add" name="action"/></td>
                    </form>
                </tr>
            </c:forEach>
        </table>
    </c:if>

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
