
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
public class Producto {

    private int id_producto, stock, precio;
    private String descripcion, categoria;
    private final conexionBD BDP = new conexionBD();
    private boolean encontrado;

    public Producto(int id_producto) {
        try {
            ResultSet Productos = BDP.getStmt().executeQuery("SELECT * FROM PRODUCTO WHERE id_producto=" +id_producto);
            encontrado= false;
            this.id_producto = id_producto;
            while (Productos.next()) {
                this.categoria = Productos.getString("categoria");
                this.stock = Productos.getInt("stock");
                this.precio = Productos.getInt("precio");
                this.descripcion = Productos.getString("descripcion");
                encontrado=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * @return the id_producto
     */
    public int getId_producto() {
        return id_producto;
    }

    /**
     * @return the stock
     */
    public int getStock() {
        return stock;
    }

    /**
     * @param stock the stock to set
     */
    public void setStock(int stock) {
        this.stock = stock;
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

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void editar_BD(){
        try {
            BDP.getStmt().executeQuery("UPDATE PRODUCTO SET stock ="+this.stock+",precio="+this.precio+", descripcion=' "+this.descripcion+"', categoria='"+this.categoria+"' WHERE  id_producto="+id_producto);
        } catch (SQLException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void borrar_BD() {
        try {
            BDP.getStmt().executeQuery("DELETE PRODUCTO WHERE id_producto="+id_producto);
        } catch (SQLException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
