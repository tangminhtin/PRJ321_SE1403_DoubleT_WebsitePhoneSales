/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Shipper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tangminhtin
 */
public class ShipperDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Shipper> shippers;

    public ShipperDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        shippers = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `shipper`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            shippers.clear();
            while (rs.next()) {
                shippers.add(new Shipper(
                        rs.getInt("shipperId"),
                        rs.getString("shipperName"),
                        rs.getString("shipperPhone")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShipperDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Shipper> getShippers() {
        return shippers;
    }

    public Shipper getShipperById(int shipperId) {
        for (Shipper s : shippers) {
            if (s.getShipperId() == shipperId) {
                return s;
            }
        }
        return null;
    }

    public int insert(String name, String phone) {
        try {
            String sql = "INSERT INTO `shipper`(`shipperName`, `shipperPhone`) VALUES (?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, phone);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `shipper`");
            if (rs.last()) {
                return rs.getInt("shipperId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShipperDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String name, String phone, int shipperId) {
        try {
            String sql = "UPDATE `shipper` SET `shipperName`=?,`shipperPhone`=? WHERE `shipperId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, phone);
            pst.setInt(3, shipperId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ShipperDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int shipperId) {
        try {
            String sql = "DELETE FROM `shipper` WHERE shipperId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, shipperId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ShipperDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
