<%-- 
    Document   : ModificarProducto
    Created on : 02-05-2014, 07:07:00 PM
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
        <%
                String nombre = request.getParameter("tabla");
                String nombre1[] = nombre.split("-");
                String nombre2 = nombre1[0];
                String id_producto = nombre1[1];
                String cantidad = nombre1[2];
                String descripcion = nombre1[3];
                String categoria = nombre1[4];
                String precio = nombre1[5];
        %>
        <h1>Modificar producto:</h1>
        <form method="post" action="ValidarModificarProducto.jsp">
            <p>Código producto: <input type="int" value=<%out.println(id_producto);%> name="id_producto" style="color: darkslategray ; background-color: greenyellow" readonly></p>
            <p>Nombre: <input value=<%out.println(nombre2);%> type="text" name="nombre" style="color: darkslategray ; background-color: greenyellow" readonly> </p>
            <p>Descripción: <input value=<%out.println(descripcion);%> type="text" name="descripcion"></p>
            <p>Categoría: <input value=<%out.println(categoria);%> type="text" name="categoria"></p>
            <p>Cantidad: <input value=<%out.println(cantidad);%> type="int" name="stock" style="color: darkslategray ; background-color: greenyellow" readonly></p>
            <p>Precio: <input value=<%out.println(precio);%> type="int" name="precio"></p>
            <input type="submit" value="Guardar cambios">
        </form>
    </body>
</html>
