<%-- 
    Document   : IngresarCliente
    Created on : 02-05-2014, 05:45:39 PM
    Author     : SebastiánAriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingresar Cliente:</h1>
        <form method="post" action="ValidarCliente.jsp">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Rut: <input type="text" name="rut"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
        
    </body>
</html>
