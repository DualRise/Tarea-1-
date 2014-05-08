<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.PreparedStatement"
        import="java.sql.SQLException"
        import="java.sql.Statement"
%>
<%
    Connection cn = null;
   
    String driver = "oracle.jdbc.OracleDriver";
    String url = "jdbc:oracle:thin:@200.86.127.226:1521:XE";
    String login = "sharsha";
    String password = "1234567";
   
    String s_nombre;
    String s_clave;
   
    s_nombre = request.getParameter("login");
    s_clave = request.getParameter("password");
   
    try{
        Class.forName(driver);
        cn = DriverManager.getConnection(url, login, password);
               
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("select * from sharsha.USUARIO where USUARIO.NOMBRE =" + "'"+s_nombre+"'");
       
        rs.next();
       
        session.setAttribute("login_admin", s_nombre);
        try{
            rs.getString("contrasena");
            session.setAttribute("nombre", rs.getString("NOMBRE"));
        }
        catch(Exception c){
            out.println("<script>alert('Nombre de usuario incorrecto, intente nuevamente')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=index.jsp'>");
       
        }
       
       String pass = rs.getString("contrasena");
       String tipo = rs.getString("tipo");
       
       if (pass.equals(s_clave))
       {
           session.setAttribute("logged_in", 1);
           if (tipo.equals("Administrador"))
           {
                out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'>");
           }
           else{
               out.println("<meta http-equiv='refresh' content='0;url=MenuUser.jsp'>");
           }
       }
       else
       {
            out.println("<script>alert('Contraseña incorrecta')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=index.jsp'>");
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
