<%-- 
    Document   : ValidarModificarProducto
    Created on : 08-05-2014, 03:51:45 PM
    Author     : SebastiánAriel
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Connection cn = null;
   
    String driver = "oracle.jdbc.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String login = "system";
    String password = "Dorothtyt01";
   
    String id_producto, nombre, descripcion, categoria, stock, precio;
   
    id_producto = request.getParameter("id_producto");
    nombre = request.getParameter("nombre");
    descripcion = request.getParameter("descripcion");
    categoria = request.getParameter("categoria");
    stock = request.getParameter("stock");
    precio = request.getParameter("precio");
    try{
            Class.forName(driver);
            cn = DriverManager.getConnection(url, login, password);     
            PreparedStatement  st = cn.prepareStatement("UPDATE TAREABD.PRODUCTO SET STOCK=?, DESCRIPCION=?, CATEGORIA=?, PRECIO=?, NOMBRE=?  WHERE ID_PRODUCTO=?");
            st.setString(1,stock);
            st.setString(2,descripcion);
            st.setString(3,categoria);
            st.setString(4,precio);
            st.setString(5,nombre);
            st.setString(6,id_producto);

            st.executeUpdate();
            out.println("<script>alert('Producto modificado con éxito.')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'>");
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
