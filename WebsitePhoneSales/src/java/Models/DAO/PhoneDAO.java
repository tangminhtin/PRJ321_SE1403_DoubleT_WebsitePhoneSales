/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Phone;
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
public class PhoneDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Phone> phone;

    public PhoneDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        phone = new ArrayList<>();
        load();
    }

    public ArrayList<Phone> getAllPhone() {
        return phone;
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `phone`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            phone.clear();
            while (rs.next()) {
                int phoneId = rs.getInt("phoneId");
                String phoneImage = rs.getString("phoneImage");
                String phoneName = rs.getString("phoneName");
                double phoneDiscount = rs.getDouble("phoneDiscount");
                double phonePrice = rs.getDouble("phonePrice");
                String phoneShortDescription = rs.getString("phoneShortDescription");
                int brandId = rs.getInt("brandId");
                int phoneDetailId = rs.getInt("phoneDetailId");
                phone.add(new Phone(phoneId, phoneImage, phoneName, phoneDiscount, phonePrice, phoneShortDescription, brandId, phoneDetailId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getNumberOfPhone() {
        return phone.size();
    }

    public ArrayList<Phone> getPhonesInRange(int start, int limit) {
        try {
            ArrayList<Phone> phonesLimit = new ArrayList<>();
            String sql = "SELECT * FROM `phone` LIMIT ?, ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, start);
            pst.setInt(2, limit);
            rs = pst.executeQuery();
            while (rs.next()) {
                phonesLimit.add(new Phone(
                        rs.getInt("phoneId"),
                        rs.getString("phoneImage"),
                        rs.getString("phoneName"),
                        rs.getDouble("phoneDiscount"),
                        rs.getDouble("phonePrice"),
                        rs.getString("phoneShortDescription"),
                        rs.getInt("brandId"),
                        rs.getInt("phoneDetailId")
                ));
            }
            return phonesLimit;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Phone getPhoneById(int phoneId) {
        for (Phone item : phone) {
            if (item.getPhoneId() == phoneId) {
                return item;
            }
        }
        return null;
    }

}
