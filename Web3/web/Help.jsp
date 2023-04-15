<%-- 
    Document   : Help
    Created on : Apr 14, 2023, 11:43:51 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Policy of the website</h1>
        <p>em yeu co</p>
        <p>.....</p>
        <div>
            <%
                //doc cookie neu co
                Cookie[] a = request.getCookies();
                if (a != null) {
                    for (Cookie c : a) {
                        if (c.getName().equals("topic")) {
                            String noidung = c.getValue();
                            out.print("<p>Thong tin san pham truoc day ban tim: " + noidung + "</p>");
                        }
                    }
                }
            %>
        </div>
    </body>
</html>
