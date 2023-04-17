<%-- 
    Document   : index
    Created on : Apr 17, 2023, 1:04:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <t:set var="x" value="5"/>
        <t:set var="y" value="7"/>
        <h1>${ x }</h1>
        <h1>${ y }</h1>
        <t:if test="${ x < y}">
            ${"em yeu co"}
        </t:if>
        <t:forEach begin="1" end="10">
            ${"em se pass mon nay"}
        </t:forEach> <br/>
        <t:set var="kq" value="${requestScope.result}"></t:set>
        <t:if test="${kq!=null}">
            <t:forEach var="s" items="${kq}">
                <h3>${s}</h3>
            </t:forEach>
        </t:if>
    </body>
</html>
