<%-- 
    Document   : ValidarIngresarProducto
    Created on : 07-05-2014, 04:56:11 PM
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
            PreparedStatement  st = cn.prepareStatement("INSERT INTO TAREABD.PRODUCTO (ID_PRODUCTO, STOCK, DESCRIPCION, CATEGORIA, PRECIO, NOMBRE) VALUES (?, ?, ?, ?, ?, ?)");

            st.setString(1,id_producto);
            st.setString(2,stock);
            st.setString(3,descripcion);
            st.setString(4,categoria);
            st.setString(5,precio);
            st.setString(6,nombre);

            st.executeUpdate();
            out.println("<script>alert('Producto ingresado con éxito.')</script>");
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
