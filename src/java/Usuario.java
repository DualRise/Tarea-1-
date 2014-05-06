
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
public class Usuario {
//el tipo lo da la herencia
    private String rut, contraseña, nombre,tipo;
    private int id_usuario, comision;
    private boolean logueado;
    private final conexionBD BDP = new conexionBD();
    //el constuctor se utiliza para iniciar sesion, se inicia con rut y pass
    public Usuario(String rutu, String pass) {
        ResultSet Usuarios;
        try {
            Usuarios = BDP.getStmt().executeQuery("SELECT * FROM USUARIO WHERE rut='" + rutu+"' and //VERIFICA EL PASS");
            logueado = false;
            this.rut=rutu;
            while (Usuarios.next()) {
                this.rut = Usuarios.getString("rut");
                this.nombre = Usuarios.getString("nombre");
                this.comision = Usuarios.getInt("comision");
                
                logueado = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * @return the rut
     */
    public String getRut() {
        return rut;
    }

    /**
     * @return the contraseña
     */
    public String getContraseña() {
        return contraseña;
    }

    /**
     * @param contraseña the contraseña to set
     */
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
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
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @return the comision
     */
    public int getComision() {
        return comision;
    }

    /**
     * @param comision the comision to set
     */
    public void setComision(int comision) {
        this.comision = comision;
    }

   
//solo el administrador puede ingresar cliente
    public void ingresarcliente() {

    }

    //aca si esta bn
    //aca tienes que poner todas las acciones que salenen el pdf
    //por ejemplo en el pdf dice un  usuario administrados agregar producto
    //por eso se hace esta funcion, pero solo en elusuario administrador de la herencia
    // primero debes hacer la herencia

    /**
     * @return the logueado, Ture si esta logueado, Flase si no
     */
    public boolean isLogueado() {
        return logueado;
    }
}
