/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Battery;
import Models.Entites.Body;
import Models.Entites.Display;
import Models.Entites.Phone;
import Models.Entites.PhoneDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phuct
 */
public class batteryDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Battery> battery;

    public batteryDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        battery = new ArrayList<>();
    }

    public ArrayList<Battery> getAllPhone(int batteryId) {
        try {
            String sql = "SELECT * FROM `battery` WHERE `batteryId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, batteryId);
            rs = pst.executeQuery();
            while (rs.next()) {
                batteryId = rs.getInt("batteryId");
                int batteryCapacity = rs.getInt("batteryCapacity");
                String batteryType = rs.getString("batteryType");
                String batteryTechnology = rs.getString("batteryTechnology");
               
               battery.add(new Battery(batteryId, batteryCapacity, batteryType, batteryTechnology));
            }
            return battery;
        } catch (SQLException ex) {
            Logger.getLogger(batteryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
