<%-- 
    Document   : help
    Created on : Apr 15, 2023, 10:02:02 PM
    Author     : Admin
--%>

<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%    
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("topic")) {
                        String encodedValue = cookie.getValue();
                        if (encodedValue != null && !encodedValue.isEmpty()) {
                            try {
                                String decodedValue = URLDecoder.decode(encodedValue, "UTF-8");
                                out.println("Decoded value: " + decodedValue);
                            } catch (UnsupportedEncodingException e) {
                                out.println("Error decoding cookie value: " + e.getMessage());
                            }
                        } else {
                            out.println("Cookie value is null or empty");
                        }
                    }
                }
            } else {
                out.println("No cookies found");
            }
        %>
        
    </body>
</html>
