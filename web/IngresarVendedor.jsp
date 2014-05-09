<%-- 
    Document   : IngresarVendedor
    Created on : 02-05-2014, 05:41:54 PM
    Author     : SebastiánAriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Vendedor</title>
    </head>
    <body>
        <h1>Ingresar Vendedor</h1>
        <form method="post" action="ValidarVendedor.jsp">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Rut: <input type="text" name="rut"></p>
            <p>Contraseña: <input type="password" name="contrasena"></p>
            <p>Repetir contraseña: <input type="password" name="contrasena2"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
    </body>
</html>
