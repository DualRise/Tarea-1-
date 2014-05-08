<%-- 
    Document   : IngresarClienteUser
    Created on : 07-05-2014, 03:57:14 PM
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
        <form method="GET" action="ValidarCliente.jsp">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Rut: <input type="text" name="rut"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form action="MenuUser.jsp">
            <input type="submit" value="Cancelar">
        </form>
        
    </body>
</html>
