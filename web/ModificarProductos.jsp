<%-- 
    Document   : Modificar Productos
    Created on : 06-05-2014, 02:22:53 PM
    Author     : DualRise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificacion de Productos</title>
    </head>
    <body>
        <h1>Modificar el producto:</h1>
        <form method="Post" action="menu.jsp">
            <p>Código producto: <%--value=producto.getId_Producto()--%><input type="int" value=12 name="id_producto" readonly></p>
            <p>Nombre: <%--=producto.getNombre()--%> <input type="text" name="nombre"></p>
            <p>Descripción: <input type="text" <%--value=producto.getDescripción()--%> name="descripción"></p>
            <p>Categoría: <input type="text" <%--value=producto.getCategoría()--%> name="categoría"></p>
            <p>Cantidad: <%--=producto.getStock()--%> <input type="int" name="stock"></p>
            <p>Precio: <input type="int" <%--value=producto.getPrecio()--%> name="precio"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>
