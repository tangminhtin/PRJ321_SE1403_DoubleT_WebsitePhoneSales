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

    public DBConnection() {
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/db_website_phone_sales", "root", "");
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Connection getConnection() {
        return connection;
    }
    
}
