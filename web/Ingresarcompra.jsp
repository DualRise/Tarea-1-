<%-- 
    Document   : IngresarCompra
    Created on : 02-05-2014, 05:45:59 PM
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
        <h1>Ingresar Compra:</h1>
        <form method="post" action="ValidarIngresarCompra.jsp">
            <p>Código producto: <input type="int" name="id_producto"></p>
            <p>Cantidad: <input type="int" name="stock"></p>
            <p>Precio: <input type="int" name="precio"></p>
            <input type="submit" value="Finalizar">
        </form>
        <form method="post" action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
    </body>
</html>
