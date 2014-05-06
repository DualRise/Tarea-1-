<%-- 
    Document   : AgregarCompra
    Created on : 06-05-2014, 01:37:32 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Nueva Compra</title>
    </head>
    <body>
        <h1>Agregar Nueva Compra</h1>
        <form method="Post" action="menu.jsp">
            <p>Cantidad: <input type="int" name="stock"></p>
            <p>Precio: <input type="int" name="precio"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>
