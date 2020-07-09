/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

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
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
