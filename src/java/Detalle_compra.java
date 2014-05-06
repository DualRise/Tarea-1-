
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
public class Detalle_compra {
    private int id_detalle, id_compra, id_producto, cantidad, precio;
    private boolean encontrado;
    private final conexionBD BDP = new conexionBD();
    
    public Detalle_compra(int id_detalle){
        ResultSet DetalleC;
        try {
            DetalleC = BDP.getStmt().executeQuery("SELECT * FROM DETALLECOMPRA WHERE id_detalle=" + id_detalle);
            encontrado = false;
            this.id_detalle = id_detalle;
            while (DetalleC.next()) {
                this.id_compra = DetalleC.getInt("id_compra");
                this.id_producto = DetalleC.getInt("id_producto");
                this.cantidad = DetalleC.getInt("cantidad");
                this.precio=DetalleC.getInt("precio");
                encontrado = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_compra.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
    }

    /**
     * @return the id_detalle
     */
    public int getId_detalle() {
        return id_detalle;
    }

    /**
     * @return the id_compra
     */
    public int getId_compra() {
        return id_compra;
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
     * @return the precio
     */
    public int getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(int precio) {
        this.precio = precio;
    }
    public void borrar_BD(){
        try {
            BDP.getStmt().executeQuery("DELETE DETALLECOMPRA WHERE id_detalle=" + id_detalle);
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_compra.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editar_BD(){
        try {
            BDP.getStmt().executeQuery("UPDATE DETALLECOMPRA SET cantidad ="+this.cantidad+"', precio= "+this.precio+" WHERE  id_producto="+id_detalle);
        } catch (SQLException ex) {
            Logger.getLogger(Detalle_compra.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
