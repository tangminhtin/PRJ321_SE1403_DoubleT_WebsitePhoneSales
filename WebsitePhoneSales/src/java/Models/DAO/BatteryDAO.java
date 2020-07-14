/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Battery;
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
            battery.clear();
            while (rs.next()) {
                int batteryId = rs.getInt("batteryId");
                int batteryCapacity = rs.getInt("batteryCapacity");
                String batteryType = rs.getString("batteryType");
                String batteryTechnology = rs.getString("batteryTechnology");

                battery.add(new Battery(batteryId, batteryCapacity, batteryType, batteryTechnology));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BatteryDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    public int insert(int batteryId, int capacity, String type, String technology) {
        try {
            String sql = "INSERT INTO `battery`(`batteryId`, `batteryCapacity`, `batteryType`, `batteryTechnology`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, batteryId);
            pst.setInt(2, capacity);
            pst.setString(3, type);
            pst.setString(4, technology);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `battery`");
            if (rs.last()) {
                return rs.getInt("batteryId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BatteryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(int capacity, String type, String technology, int batteryId) {
        try {
            String sql = "UPDATE `battery` SET `batteryCapacity`=?,`batteryType`=?,`batteryTechnology`=? WHERE `batteryId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, capacity);
            pst.setString(2, type);
            pst.setString(3, technology);
            pst.setInt(4, batteryId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BatteryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int batteryId) {
        try {
            String sql = "DELETE FROM `battery` WHERE batteryId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, batteryId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BatteryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
