
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
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
public class conexionBD {

    private Statement stmt;

    public conexionBD() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException ex) {
            System.out.println("Se cae por Driver");
            Logger.getLogger(conexionBD.class.getName()).log(Level.SEVERE, null, ex);            
        }
        try {
            Connection BD = DriverManager.getConnection("jdbc:oracle:thin:@200.86.127.226:1521:XE", "sharsha", "1234567");
            stmt = BD.createStatement();
            System.out.println("Se conecta Base de Datos");
        } catch (SQLException ex) {
            System.out.println("Se cae por excepcion de SQL");
            Logger.getLogger(conexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     /**
     * @return the stmt
     */
    public Statement getStmt() {
        return stmt;
    }
}
