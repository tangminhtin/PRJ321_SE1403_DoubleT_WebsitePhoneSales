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
public class BatteryDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Battery> battery;

    public BatteryDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        battery = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `battery`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int batteryId = rs.getInt("batteryId");
                int batteryCapacity = rs.getInt("batteryCapacity");
                String batteryType = rs.getString("batteryType");
                String batteryTechnology = rs.getString("batteryTechnology");

                battery.add(new Battery(batteryId, batteryCapacity, batteryType, batteryTechnology));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Battery> getAllPhone() {
        return battery;
    }

    public Battery getPhoneById(int batteryId) {
        for (Battery batterys : battery) {
            if (batterys.getBatteryId() == batteryId) {
                return batterys;
            }
        }
        return null;
    }

}
