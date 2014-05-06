
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
public class Detalle_venta {

    private int id_detalle, id_venta, id_producto, cantidad;
    private boolean encontrado;
    private final conexionBD BDP = new conexionBD();

    public Detalle_venta(int id_detalle) {

        try {
            ResultSet DetalleV = BDP.getStmt().executeQuery("SELECT * FROM DETALLEVENTA WHERE id_detalle=" + id_detalle);
            encontrado = false;
            this.id_detalle = id_detalle;
            while (DetalleV.next()) {
                this.id_venta = DetalleV.getInt("id_venta");
                this.id_producto = DetalleV.getInt("id_producto");
                this.cantidad = DetalleV.getInt("cantidad");
                encontrado = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_venta.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * @return the id_detalle
     */
    public int getId_detalle() {
        return id_detalle;
    }

    /**
     * @return the id_venta
     */
    public int getId_venta() {
        return id_venta;
    }

    /**
     * @return the id_producto
     */
    public int getId_producto() {
        return id_producto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the encontrado
     */
    public boolean isEncontrado() {
        return encontrado;
    }

    /**
     * @return the BDP
     */
    public conexionBD getBDP() {
        return BDP;
    }

    public void borrar_BD() {
        try {
            BDP.getStmt().executeQuery("DELETE DETALLEVENTA WHERE id_detalle=" + id_detalle);
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editar_BD() {
        try {
            BDP.getStmt().executeQuery("UPDATE DETALLEVENTA SET cantidad ="+this.cantidad+"' WHERE  id_producto="+id_detalle);
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
