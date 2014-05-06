<%-- 
    Document   : Agregarprodcutos
    Created on : 06-05-2014, 01:28:26 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Productos</title>
    </head>
    <body>
        <h1>Agregar Nuevo Producto:</h1>
        <form method="Post" action="menu.jsp">
            <p>Código producto: <input type="int" name="id_producto"></p>
            <p>Descripción: <input type="text" name="descripción"></p>
            <p>Categoría: <input type="text" name="categoría"></p>
            <p>Cantidad: <input type="int" name="stock"></p>
            <p>Precio: <input type="int" name="precio"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>
