<%-- 
    Document   : MenuUsuario
    Created on : 06-05-2014, 02:20:08 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Vendedor</title>
    </head>
    <body>
        <h1>Menu Vendedor</h1>
        <p>Escoja una de las siguientes opciones:</p>
        <form action="IngresarCliente.jsp">
            <input type="submit" value="Ingresar Cliente">
        </form>
        <form action="IngresarVenta.jsp">
            <input type="submit" value="Ingresar Venta">
        </form>
        <form action="VerVentasAClientes.jsp">
            <input type="submit" value="Ver ventas a clientes">
        </form>
        <form action="MisVentas.jsp">
            <input type="submit" value="Mis ventas">
        </form>
    </body>
</html>
