<%-- 
    Document   : edit
    Created on : Apr 19, 2023, 12:43:05 AM
    Author     : Admin
--%>

<%@page import="model.dto.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dto.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">Home</a>
        

        <%
            Item it = (Item) request.getAttribute("item");
        %>
        <%
            ArrayList<Category> cList = (ArrayList) request.getAttribute("cList");
        %>
        <h1>Edit <%= it.getItemName()%></h1>
        <table style="width:100%">
            <form>

                <tr>
                    <th>Id</th>
                    <td><%= it.getItemId()%></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><input type="text" name="name" required=""/></td>

                </tr>
                <tr>
                    <th>Price</th>
                    <td><input type="number" name="price" required=""/></td>
                </tr>
                <tr>
                    <th>Category</th>  
                    <td>
                        <select name="cname">
                            <%
                                if (cList != null) {
                                    for (Category cObject : cList) {
                            %>
                            <option value="<%= cObject.getCateId()%>"><%= cObject.getCateName()%></option>

                            <%
                                    }
                                }
                            %>


                        </select>

                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td><input type="submit" value="save" name="action"/></td>
                </tr>
                <input type="hidden" name="id" value="<%= it.getItemId() %>"/>
            </form>

        </table>
    </body>
</html>
