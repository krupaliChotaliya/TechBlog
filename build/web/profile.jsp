<%-- 
    Document   : profile
    Created on : 2 Mar, 2023, 10:40:21 PM
    Author     : admin
--%>

<%@page import="com.tech.blog.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<% 
    User user= (User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
     
        <%= user.getEmail() %><br>
        <%= user.getUsername()%><br>
        <%= user.getAbout()%>
    </body>
</html>
