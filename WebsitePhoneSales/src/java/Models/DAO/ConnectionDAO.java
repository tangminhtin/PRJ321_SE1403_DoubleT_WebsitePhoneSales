/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

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
public class ConnectionDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Models.Entites.Connection> connArray;

    public ConnectionDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        connArray = new ArrayList<>();
        load();
    }

    public ArrayList<Models.Entites.Connection> getAllPhone() {
        return connArray;
    }

    public Models.Entites.Connection getPhoneById(int connectionId) {
        for (Models.Entites.Connection connection : connArray) {
            if (connection.getConnectionId() == connectionId) {
                return connection;
            }
        }

        return null;
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `connection`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            connArray.clear();
            while (rs.next()) {
                int connectionId = rs.getInt("connectionId");
                String connectionSIM = rs.getString("connectionSIM");
                String connectionMobileNetwork = rs.getString("connectionMobileNetwork");
                String connectionWLAN = rs.getString("connectionWLAN");
                String connectionBluetooth = rs.getString("connectionBluetooth");
                String connectionGPS = rs.getString("connectionGPS");
                int connectionNFC = rs.getInt("connectionNFC");
                int connectionRadio = rs.getInt("connectionRadio");
                String connectionUSB = rs.getString("connectionUSB");
                int connectionJack = rs.getInt("connectionJack");

                connArray.add(new Models.Entites.Connection(connectionId, connectionSIM, connectionMobileNetwork, connectionWLAN, connectionBluetooth, connectionGPS, connectionNFC, connectionRadio, connectionUSB, connectionJack));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int insert(int connectionId, String SIM, String mobileNetwork, String WLAN, String bluetooth, String GPS, int NFC, int radio, String USB, int jack) {
        try {
            String sql = "INSERT INTO `connection`(`connectionId`, `connectionSIM`, `connectionMobileNetwork`, `connectionWLAN`, `connectionBluetooth`, `connectionGPS`, `connectionNFC`, `connectionRadio`, `connectionUSB`, `connectionJack`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, connectionId);
            pst.setString(2, SIM);
            pst.setString(3, mobileNetwork);
            pst.setString(4, WLAN);
            pst.setString(5, bluetooth);
            pst.setString(6, GPS);
            pst.setInt(7, NFC);
            pst.setInt(8, radio);
            pst.setString(9, USB);
            pst.setInt(10, jack);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `connection`");
            if (rs.last()) {
                return rs.getInt("connectionId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String SIM, String mobileNetwork, String WLAN, String bluetooth, String GPS, int NFC, int radio, String USB, int jack, int connectionId) {
        try {
            String sql = "UPDATE `connection` SET `connectionSIM`=?,`connectionMobileNetwork`=?,`connectionWLAN`=?,`connectionBluetooth`=?,`connectionGPS`=?,`connectionNFC`=?,`connectionRadio`=?,`connectionUSB`=?,`connectionJack`=? WHERE `connectionId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, SIM);
            pst.setString(2, mobileNetwork);
            pst.setString(3, WLAN);
            pst.setString(4, bluetooth);
            pst.setString(5, GPS);
            pst.setInt(6, NFC);
            pst.setInt(7, radio);
            pst.setString(8, USB);
            pst.setInt(9, jack);
            pst.setInt(10, connectionId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int connectionId) {
        try {
            String sql = "DELETE FROM `connection` WHERE connectionId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, connectionId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
