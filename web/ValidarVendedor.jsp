<%-- 
    Document   : ValidarVendedor
    Created on : 07-05-2014, 01:46:34 PM
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
   
    String nombre, rut, contrasena, contrasena2;
   
    nombre = request.getParameter("nombre");
    rut = request.getParameter("rut");
    contrasena = request.getParameter("contrasena");
    contrasena2 = request.getParameter("contrasena2");
    try{
        if (contrasena.equals(contrasena2)){
            Class.forName(driver);
            cn = DriverManager.getConnection(url, login, password);     
            PreparedStatement  st = cn.prepareStatement("INSERT INTO TAREABD.USUARIO (RUT, CONTRASENA, NOMBRE, TIPO) VALUES (?, ?, ?, ?)");

            st.setString(1,rut);
            st.setString(2,contrasena);
            st.setString(3,nombre);
            st.setString(4,"Usuario");

            st.executeUpdate();
            out.println("<script>alert('Vendedor ingresado con éxito.')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'>");
        }
        else{
            out.println("<script>alert('Las contraseñas no coinciden.')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=IngresarVendedor.jsp'>");
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
