<%-- 
    Document   : ValidarCliente
    Created on : 06-05-2014, 02:05:50 PM
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
   
    String nombre, rut;
   
    nombre = request.getParameter("nombre");
    rut = request.getParameter("rut");
    try{
            Class.forName(driver);
            cn = DriverManager.getConnection(url, login, password);     
            PreparedStatement  st = cn.prepareStatement("INSERT INTO TAREABD.CLIENTE (RUT, NOMBRE) VALUES (?, ?)");

            st.setString(1,rut);
            st.setString(2,nombre);

            st.executeUpdate();
            out.println("<script>alert('Cliente ingresado con éxito.')</script>");
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
