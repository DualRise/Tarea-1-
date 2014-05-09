<%-- 
    Document   : IngresarVenta
    Created on : 02-05-2014, 05:46:15 PM
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
        <h1>IngresarVenta:</h1>
        <form method="post" action="menu.jsp">
            <p>Cliente: <input type="text" name="cliente"></p>
            <p>Producto: <input type="text" name="producto"></p>
            <p>Cantidad: <input type="int" name="stock"></p>
            <input type="submit" value="Finalizar">
        </form>
    </body>
</html>