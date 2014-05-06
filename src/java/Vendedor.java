
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
public class Vendedor extends Usuario {

    public Vendedor(String rut, String pass) {
        super(rut, pass);
    }

    public void ingresar_cliente(String rut, String nombre) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("INSERT INTO CLIENTE(rut,nombre) VALUES (rut='" + rut + "',nombre='" + nombre + "')");
        } catch (SQLException ex) {
            Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void ingresar_venta(int monto, String fecha, String hora) {
        conexionBD log = new conexionBD();
        try {
            log.getStmt().executeQuery("INSERT INTO VENTA(monto,fecha, hora) VALUES (monto=" + monto + ",fecha='" + fecha + "'hora=" + hora + "')");
        } catch (SQLException ex) {
            Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet misventa(int id) {
        conexionBD log=new conexionBD();
        ResultSet PRD=null;
        try {
            PRD=log.getStmt().executeQuery("SELECT VENTA.id_usuario,DETALLEVENTA.id_producto FROM VENTA,DETALLEVENTA WHERE VENTA.id_producto= DETALLEVENTA.id_producto AND id_usuario"+id);
        } catch (SQLException ex) {
            Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return PRD;

    }

    public ResultSet ver_venta_Cliente(int id_cliente) {
        conexionBD log = new conexionBD();
        Venta cl = new Venta(id_cliente);
        boolean encontrado = false;
        ResultSet Ventas = null;
        try {
            Ventas = log.getStmt().executeQuery("SELECT FROM VENTA WHERE id_cliente=" + id_cliente);
            return Ventas;
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            return Ventas;
        }

    }
}
