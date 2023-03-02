<%-- 
    Document   : error
    Created on : 2 Mar, 2023, 5:13:29 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry!! Something went wrong.</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--custom css-->
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    
    </head>
    <body>
        <div class="container text-center">
            <img src="./img/error.png" />
            <p class="display-3">Sorry!! Something went wrong...</p>
            <a class="btn btn-success text-white"  href="./index.jsp">Home</a>
        </div>
    </body>
</html>
