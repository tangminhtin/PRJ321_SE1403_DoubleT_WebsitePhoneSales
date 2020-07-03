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
public class phoneDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Phone> phone;

    public phoneDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        phone = new ArrayList<>();
    }

    public ArrayList<Phone> getAllPhone() {
        try {
            String sql = "SELECT * FROM `phone`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
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
            return phone;
        } catch (SQLException ex) {
            Logger.getLogger(phoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
