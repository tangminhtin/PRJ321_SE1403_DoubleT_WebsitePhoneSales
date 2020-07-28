/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tangminhtin
 */
public class DBConnection {
    private Connection connection;

    /**
     *
     */
    public DBConnection() {
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/db_website_phone_sales", "root", "");
//            connection = (Connection) DriverManager.getConnection("jdbc:mysql://node229237-doubletshop.j.layershift.co.uk/db_website_phone_sales", "jelastic-4371733", "3g1D57c0N7gGD4dLo6M8");
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     *
     * @return
     */
    public Connection getConnection() {
        return connection;
    }
    
    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
