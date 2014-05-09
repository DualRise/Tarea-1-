<%-- 
    Document   : AgregarProducto
    Created on : 02-05-2014, 07:03:02 PM
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
        <h1>Agregar producto:</h1>
        <form method="post" action="ValidarIngresarProducto.jsp">
            <p>Código producto: <input type="int" name="id_producto"></p>
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>Descripción: <input type="text" name="descripcion"></p>
            <p>Categoría: <input type="text" name="categoria"></p>
            <p>Cantidad: <input type="int" name="stock"></p>
            <p>Precio: <input type="int" name="precio"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>
