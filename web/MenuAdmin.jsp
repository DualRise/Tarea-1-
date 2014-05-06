<%-- 
    Document   : Menu
    Created on : 06-05-2014, 02:16:34 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Administrador</title>
    </head>
    <body>
        <h1>Menu y opciones de administrador:</h1>
        <p>Escoja una de las siguientes opciones:</p>
        <form action="IngresarVendedor.jsp">
            <input type="submit" value="Ingresar Vendedor">
        </form>
        <form action="IngresarCliente.jsp">
            <input type="submit" value="Ingresar Cliente">
        </form>
        <form action="AdministrarProductos.jsp">
            <input type="submit" value="Administrar Productos">
        </form>
        <form action="IngresarCompra.jsp">
            <input type="submit" value="Ingresar Compra">
        </form>
        <form action="IngresarVenta.jsp">
            <input type="submit" value="Ingresar Venta">
        </form>
        <form action="VerVentasAClientes.jsp">
            <input type="submit" value="Ver ventas a clientes">
        </form>
    </body>
</html>
