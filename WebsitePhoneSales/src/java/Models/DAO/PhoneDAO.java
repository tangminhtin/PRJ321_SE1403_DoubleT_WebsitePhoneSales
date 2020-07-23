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
import java.util.Arrays;
import java.util.Collections;
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
            String sql = "SELECT * FROM `phone` ORDER BY phoneId DESC";
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
            String sql = "SELECT * FROM `phone` ORDER BY phoneId DESC LIMIT ?, ?";
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

    public Phone getPhone(int phoneId) {
        for (Phone item : phone) {
            if (item.getPhoneId() == phoneId) {
                return item;
            }
        }
        return null;
    }

    public int insert(int phoneId, String image, String name, double discount, double price, String shortDescription, int brandId, int phoneDetailId) {
        try {
            String sql = "INSERT INTO `phone`(`phoneId`, `phoneImage`, `phoneName`, `phoneDiscount`, `phonePrice`, `phoneShortDescription`, `brandId`, `phoneDetailId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, phoneId);
            pst.setString(2, image);
            pst.setString(3, name);
            pst.setDouble(4, discount);
            pst.setDouble(5, price);
            pst.setString(6, shortDescription);
            pst.setInt(7, brandId);
            pst.setInt(8, phoneDetailId);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `phone`");
            if (rs.last()) {
                return rs.getInt("phoneId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String image, String name, double discount, double price, String shortDescription, int brandId, int phoneId) {
        try {
            String sql = "UPDATE `phone` SET `phoneImage`=?, `phoneName`=?,`phoneDiscount`=?,`phonePrice`=?,`phoneShortDescription`=?,`brandId`=? WHERE `phoneId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, image);
            pst.setString(2, name);
            pst.setDouble(3, discount);
            pst.setDouble(4, price);
            pst.setString(5, shortDescription);
            pst.setInt(6, brandId);
            pst.setInt(7, phoneId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int phoneId) {
        try {
            String sql = "DELETE FROM `phone` WHERE phoneId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, phoneId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<Phone> getAllPhone(int min, int max) {
        ArrayList<Phone> phonesList = new ArrayList<>();

        for (Phone p : phone) {
            if (p.getPhonePrice() >= min && p.getPhonePrice() <= max) {
                phonesList.add(p);
            }
        }
        return phonesList;
    }

    public ArrayList<Phone> getAllPhone(String order) {
        try {
            ArrayList<Phone> orderPhones = new ArrayList<>();
            String sql = "SELECT * FROM `phone` ORDER BY phonePrice " + order;
            PreparedStatement pst = connection.prepareStatement(sql);
//            pst.setString(1, order);
            rs = pst.executeQuery();

            while (rs.next()) {
                orderPhones.add(new Phone(rs.getInt("phoneId"), rs.getString("phoneImage"),
                        rs.getString("phoneName"), rs.getDouble("phoneDiscount"),
                        rs.getDouble("phonePrice"), rs.getString("phoneShortDescription"),
                        rs.getInt("brandId"), rs.getInt("phoneDetailId")));
            }
            return orderPhones;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
