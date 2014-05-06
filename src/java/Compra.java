
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
public class Compra {

    private int id_compra, monto;
    private String fecha, hora;
    private boolean encontrado;
    private final conexionBD BDP = new conexionBD();

    public Compra(int compra) {
        ResultSet Compras;
        try {
            Compras=BDP.getStmt().executeQuery("SELECT * FROM COMPRA WHERE id_compra=" + id_compra);
            encontrado = false;
            this.id_compra = id_compra;
            while (Compras.next()) {
                this.id_compra = Compras.getInt("id_compra");
                this.monto = Compras.getInt("monto");
                this.fecha = Compras.getString("fecha");
                this.hora = Compras.getString("hora");
                encontrado = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Compra.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * @return the id_compra
     */
    public int getId_compra() {
        return id_compra;
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
    public void borrar_bd(){
        try {
            BDP.getStmt().executeQuery("DELETE COMPRA WHERE id_detalle=" + id_compra);
        } catch (SQLException ex) {
            Logger.getLogger(Compra.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editar_BD(){
        try {
            BDP.getStmt().executeQuery("UPDATE COMPRA SET monto ="+this.monto+", fecha= '"+this.fecha+"', hora= '"+this.hora+"' WHERE  id_producto="+id_compra);
        } catch (SQLException ex) {
            Logger.getLogger(Compra.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
