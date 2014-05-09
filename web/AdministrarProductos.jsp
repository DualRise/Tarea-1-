<%-- 
    Document   : AdministrarProductos
    Created on : 02-05-2014, 05:45:50 PM
    Author     : SebastiánAriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.PreparedStatement"
        import="java.sql.SQLException"
        import="java.sql.Statement"
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="ModificarProducto.jsp" name="productForm">
        <%Connection cn = null;
   
        String driver = "oracle.jdbc.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String login = "system";
        String password = "Dorothtyt01";
        %>
        
        
        <h1>Administrar Productos:</h1>
        <p>Lista de productos en la base de datos:</p>
        <select name="tabla">
        <%
           try{
               String nombre,id_producto,cantidad,descripcion,categoria,precio; 
               Class.forName(driver);
               cn = DriverManager.getConnection(url, login, password);

               Statement st = cn.createStatement();
               ResultSet rs = st.executeQuery("SELECT * FROM TAREABD.PRODUCTO");
               try{   
                   while (rs.next())
                   {
                       nombre = rs.getString("NOMBRE");
                       id_producto = rs.getString("ID_PRODUCTO");
                       cantidad = rs.getString("STOCK");
                       descripcion = rs.getString("DESCRIPCION");
                       categoria = rs.getString("CATEGORIA");
                       precio = rs.getString("PRECIO");
                       
                       out.println("<option value="+nombre+"-"+id_producto+"-"+cantidad+"-"+descripcion+"-"+categoria+"-"+precio+">" + "Nombre producto: "+ nombre + " Código producto: " + id_producto+ " Stock: "+cantidad+"</option>");
                   }
                   
                   
               }
               catch(Exception c){
                   out.println("<script>alert('Ha ocurrido un error:'"+c+")</script>");
               }

           }
           catch (Exception e) {
               out.print("<br>Error en la conexión: " + e);
           } finally {
                   if (cn != null) {
                       try {


                           cn.close();
                       } catch (SQLException e) {
                           out.println("<br>error cerrando conexión: "+e);
                       }
                   }
               }
           
        %>
        </select>
        <input type="submit" value="Modificar producto">
        </form>
        <form action="AgregarProducto.jsp">
            <input type="submit" value="Agregar producto">
        </form>
        <form action="menu.jsp">
            <input type="submit" value="Cancelar">
        </form>
    </body>
</html>
