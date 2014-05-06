
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author DualRise
 */
public class Admin extends Usuario {

    public Admin(String rut, String pass) {
        super(rut, pass);
    }

    public void Ingresarvendedor(String rut, String contraseña, String nombre, int comision) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("INSERT INTO USUARIO(rut,descripcion,precio,categoria) VALUES (rut='" + rut + "'contraseña='" + contraseña + "'nombre='" + nombre + "'comision=" + comision + ")");
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void agregarProducto(int stock, String descripcion, int precio, String categoria) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("INSERT INTO PRODUCTO(stock,descripcion,precio,categoria) VALUES (stock=" + stock + ",descipcion='" + descripcion + "'precio=" + precio + "categoria='" + categoria + "')");
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editar_productos(int stock, String descripcion, int precio, String categoria) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("UPDATE PRODUCTO SET stock=" + stock + "descrpcion='" + descripcion + "'precio=" + precio + "categoria='" + categoria + "')");
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void agregar_compra(int monto, String fecha, String hora) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("INSERT INTO COMPRA(monto,fecha,hora) VALUES (monto=" + monto + ",fecha='" + fecha + "hora" + hora + "')");
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //ver ventas  cliente debe mostrar info en la pagina, es decir que el metodo debe retornar esa informacion
    //puede ser en forma de arreglo, lista, diccionario,etc...(LA FUNDION NO DEBE SER VOID,),lo mismo para 
    //mis vantas de vendedor

    public ResultSet ver_venta_Cliente(int id_cliente) {
        conexionBD log = new conexionBD();
        Venta cl = new Venta(id_cliente);
        boolean encontrado = false;
        ResultSet Ventas=null;
        try {
            Ventas = log.getStmt().executeQuery("SELECT FROM VENTA WHERE id_cliente=" + id_cliente);
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        return Ventas;
    }
}

