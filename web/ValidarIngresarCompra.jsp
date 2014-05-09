<%-- 
    Document   : ValidarIngresarCompra
    Created on : 07-05-2014, 04:11:44 PM
    Author     : SebastiánAriel
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String login = "system";
    String password = "Dorothtyt01";
    String id_producto, cantidad, precio,id_compra, id_detalle, flag,id_producto2, encontrado;
    id_producto = request.getParameter("id_producto");
    cantidad = request.getParameter("stock");
    precio = request.getParameter("precio");
    id_compra = "1";
    id_detalle = "1";
    flag = "0";
    encontrado = "0";
    try
    {
        Class.forName(driver);
        cn = DriverManager.getConnection(url, login, password);
        
        PreparedStatement  st = cn.prepareStatement("INSERT INTO TAREABD.COMPRA (ID_COMPRA, MONTO, FECHA) VALUES (?,?,CURRENT_TIMESTAMP)");
        Statement st2 = cn.createStatement();
        ResultSet rs0 = st2.executeQuery("select * from TAREABD.PRODUCTO");
        while (rs0.next()){
            id_producto2 = rs0.getString("ID_PRODUCTO");
            if (id_producto2.equals(id_producto)){
                encontrado = "1";
                break;
            }
        }
        if (encontrado.equals("1")){
            ResultSet rs = st2.executeQuery("select * from TAREABD.COMPRA");
            while (rs.next()){
                id_compra = rs.getString("ID_COMPRA");
                flag = "1";
            }
            if (flag.equals("1")){
                id_compra = Integer.toString(Integer.parseInt(id_compra)+1);
            }
            st.setString(1,id_compra);
            st.setString(2,cantidad);
            st.executeUpdate();

            PreparedStatement  st3 = cn.prepareStatement("INSERT INTO TAREABD.DETALLE_COMPRA (ID_DETALLE, ID_COMPRA, ID_PRODUCTO, CANTIDAD, PRECIO) VALUES ("+id_compra+","+id_compra+",?,?,?)");
            st3.setString(1,id_producto);
            st3.setString(2,cantidad);
            st3.setString(3,precio);
            st3.executeUpdate();
            out.println("<script>alert('Compra ingresada con éxito.')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'>");
        }
        else{
            out.println("<script>alert('El producto no existe.')</script>");
            out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'>");
        }
        
    }catch (Exception e)
    {
        out.print("<br>Error en la conexión: " + e);
    }
    finally
    {
            if (cn != null)
            {
                try 
                {
                    cn.close();
                }catch (SQLException e)
                {
                    out.println("<br>error cerrando conexión: "+e);
                }
            }
    }    
%>