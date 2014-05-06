<%-- 
    Document   : IngresarCliente
    Created on : 06-05-2014, 01:34:58 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Clientes</title>
    </head>
    <body>
        <h1>Ingresar Nuevo cliente:</h1>
        <form method="POST" action="menu.jsp">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Rut: <input type="text" name="rut"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
    </body>
</html>
