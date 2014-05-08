<%-- 
    Document   : IngresarVenta
    Created on : 06-05-2014, 02:14:13 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Nueva Venta</title>
    </head>
    <body>
        <h1>Ingresar Nueva Venta:</h1>
        <form method="Post" action="menu.jsp">
            <p>Cliente: <input type="text" name="cliente"></p>
            <p>Producto: <input type="text" name="producto"></p>
            <p>Cantidad: <input type="int" name="stock"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>
