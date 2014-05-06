<%-- 
    Document   : IngresarVenta
    Created on : 06-05-2014, 01:38:59 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Vendedor</title>
    </head>
    <body>
        <h1>Agregar Nuevo Vendedor:</h1>
        <form method="Post" action="menu.jsp">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Rut: <input type="text" name="rut"></p>
            <p>Contraseña: <input type="password" name="contraseña"></p>
            <p>Repetir contraseña: <input type="password" name="contraseña2"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
    </body>
</html>
