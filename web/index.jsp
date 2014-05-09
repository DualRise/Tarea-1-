<%-- 
    Document   : index
    Created on : 02-05-2014, 05:26:27 PM
    Author     : SebastiánAriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
    </head>
    <body>
        <h1>Iniciar sesión</h1>
        <%if(request.getParameter("error") != null){%>
        <p>Escriba ambos valores.</p>
                <%}%>
        <form method="post" action="validar.jsp">
            <p>Usuario: <input type="text" name="login"></p>
            <p>Contraseña: <input type="password" name="password"></p>
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
