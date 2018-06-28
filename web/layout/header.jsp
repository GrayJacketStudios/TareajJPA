
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pacani Pet Shop</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <link rel="stylesheet" href="css/style.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
 
    </head>
    
    
    <%@page import="cl.beans.ServicioLocalLocal"%>
    <%@page import="javax.naming.InitialContext" %>    
    <%! private ServicioLocalLocal servicio; %>

    <%
        InitialContext ctx = new InitialContext();
        servicio = (ServicioLocalLocal)ctx.lookup("java:global/TareaJPA/ServicioLocal!cl.beans.ServicioLocalLocal");

    %>