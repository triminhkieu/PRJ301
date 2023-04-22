<%-- 
    Document   : questionPage
    Created on : Apr 14, 2023, 12:36:01 AM
    Author     : Admin
--%>

<%@page import="model.dto.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please fill out the form</h1>
        <%            
            Item it = (Item) session.getAttribute("item");
            if (it != null) {

        %> 
        <div><form action="MainController">
                <p>item id: <input type="text" name="itemid" value="<%= it.getItemId() %>"/></p>
                <p>customer's name <input type="text" name="cusname"/></p>
                <p>content: <textarea name="content"></textarea></p>
                <p><input type="submit" value="save" name="action"/></p>
            </form>

        </div>
        <%         

            }
        %>
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
    </body>
</html>
