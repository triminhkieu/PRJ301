<%-- 
    Document   : create
    Created on : Apr 19, 2023, 8:38:10 PM
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
        <a href="index.jsp">Home</a>
        <h1>Create a new Item!</h1>
        <%
            ArrayList<Category> cList = (ArrayList) request.getAttribute("cList");
            int isize = (int) request.getAttribute("isize");
        %>
        <table style="width:100%">
            <form>

                <tr>
                    <th>Id</th>
                    <td><%= isize + 1 %></td>
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
                            <option value="<%= cObject.getCateId() %>"><%= cObject.getCateName() %></option>

                            <%
                                    }
                                }
                            %>


                        </select>

                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td><input type="submit" value="create a new item" name="action"/></td>
                </tr>
                <input type="hidden" value="<%= isize + 1 %>" name="id"/>
            </form>

        </table>
    </body>
</html>
