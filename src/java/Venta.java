
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

public class Venta {
    private int id_venta, id_cliente, id_usuario, monto;
    private String fecha,hora;
    private boolean encontrado;
    private final conexionBD BDP = new conexionBD();
    
    public Venta(int id_venta){
        try {
            ResultSet Ventas = BDP.getStmt().executeQuery("SELECT * FROM VENTA WHERE id_venta="+id_venta);
            encontrado=false;
            this.id_venta = id_venta;
            while (Ventas.next()) {
                this.id_cliente = Ventas.getInt("id_cliente");
                this.id_usuario = Ventas.getInt("id_venta");
                this.monto=Ventas.getInt("monto");
                this.fecha=Ventas.getString("fecha");
                this.hora=Ventas.getString("hora");
                encontrado=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }

    /**
     * @return the id_venta
     */
    public int getId_venta() {
        return id_venta;
    }

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @return the monto
     */
    public int getMonto() {
        return monto;
    }

    /**
     * @param monto the monto to set
     */
    public void setMonto(int monto) {
        this.monto = monto;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the hora
     */
    public String getHora() {
        return hora;
    }

    /**
     * @param hora the hora to set
     */
    public void setHora(String hora) {
        this.hora = hora;
    }

    /**
     * @return the encontrado
     */
    public boolean isEncontrado() {
        return encontrado;
    }
    public void borra_BD(){
        try {
            BDP.getStmt().executeQuery("DELETE VENTA WHERE id_cliente=" + id_venta);
        } catch (SQLException ex) {
            Logger.getLogger(Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editar_BD(){
        try {
            BDP.getStmt().executeQuery("UPDATE VENTA SET monto ="+this.monto+",fecha='"+this.fecha+"', hora='"+this.hora+"' WHERE  id_producto="+id_venta);
        } catch (SQLException ex) {
            Logger.getLogger(Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
