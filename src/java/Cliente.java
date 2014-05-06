
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
public class Cliente {

    private int id_cliente;
    private String rut, nombre;
    private boolean encontrado;
    private final conexionBD BDP = new conexionBD();

    public Cliente(int id_cliente) {
        try {
            ResultSet Clientes = BDP.getStmt().executeQuery("SELECT * FROM CLIENTE WHERE id_Cliente="+id_cliente);
            encontrado=false;
            this.id_cliente = id_cliente;
            while (Clientes.next()) {
                this.rut = Clientes.getString("rut");
                this.nombre = Clientes.getString("nombre");
                encontrado=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @return the rut
     */
    public String getRut() {
        return rut;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the encontrado
     */
    public boolean isEncontrado() {
        return encontrado;
    }
    public void borrar_BD(){
        try {
            BDP.getStmt().executeQuery("DELETE CLIENTE WHERE id_cliente=" + id_cliente);
        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editar_BD(){
        try {
            BDP.getStmt().executeQuery("UPDATE CLIENTE SET rut ='"+this.rut+"',nombre='"+this.nombre+"' WHERE  id_producto="+id_cliente);
        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

