/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

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
public class PhoneDetailDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<PhoneDetail> phoneDetail;

    public PhoneDetailDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        phoneDetail = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `phonedetail`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            phoneDetail.clear();
            while (rs.next()) {
                int phoneDetailId = rs.getInt("phoneDetailId");
                String phoneDetailImage = rs.getString("phoneDetailImage");
                String phoneDetailDescription = rs.getString("phoneDetailDescription");
                String phoneDetailVideo = rs.getString("phoneDetailVideo");
                String phoneDetailSpecialFeatures = rs.getString("phoneDetailSpecialFeatures");
                int displayId = rs.getInt("displayId");
                int bodyId = rs.getInt("bodyId");
                int platformId = rs.getInt("platformId");
                int mainCameraId = rs.getInt("mainCameraId");
                int selfieCameraId = rs.getInt("selfieCameraId");
                int storageId = rs.getInt("storageId");
                int batteryId = rs.getInt("batteryId");
                int connectionId = rs.getInt("connectionId");
                int commentId = rs.getInt("commentId");

                phoneDetail.add(new PhoneDetail(phoneDetailId, phoneDetailImage, phoneDetailDescription, phoneDetailVideo, phoneDetailSpecialFeatures, displayId, bodyId, platformId, mainCameraId, selfieCameraId, storageId, batteryId, connectionId, commentId));

            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<PhoneDetail> getAllPhone() {
        return phoneDetail;
    }

    public PhoneDetail getPhoneById(int phoneDetailId) {
        for (PhoneDetail pd : phoneDetail) {
            if (pd.getPhoneDetailId() == phoneDetailId) {
                return pd;
            }
        }
        return null;
    }

    public int insert(int phoneDetailId, String image, String description, String video, String specialFeatures, int displayId, int bodyId, int platformId, int mainCameraId, int selfieCameraId, int storageId, int batteryId, int connectionId) {
        try {
            String sql = "INSERT INTO `phonedetail`(`phoneDetailId`, `phoneDetailImage`, `phoneDetailDescription`, `phoneDetailVideo`, `phoneDetailSpecialFeatures`, `displayId`, `bodyId`, `platformId`, `mainCameraId`, `selfieCameraId`, `storageId`, `batteryId`, `connectionId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, phoneDetailId);
            pst.setString(2, image);
            pst.setString(3, description);
            pst.setString(4, video);
            pst.setString(5, specialFeatures);
            pst.setInt(6, displayId);
            pst.setInt(7, bodyId);
            pst.setInt(8, platformId);
            pst.setInt(9, mainCameraId);
            pst.setInt(10, selfieCameraId);
            pst.setInt(11, storageId);
            pst.setInt(12, batteryId);
            pst.setInt(13, connectionId);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `phonedetail`");
            if (rs.last()) {
                return rs.getInt("phoneDetailId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String image, String description, String video, String specialFeatures, int phoneDetailId) {
        try {
            String sql = "UPDATE `phonedetail` SET `phoneDetailImage`=?,`phoneDetailDescription`=?,`phoneDetailVideo`=?,`phoneDetailSpecialFeatures`=? WHERE `phoneDetailId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, image);
            pst.setString(2, description);
            pst.setString(3, video);
            pst.setString(4, specialFeatures);
            pst.setInt(5, phoneDetailId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int phoneDetailId) {
        try {
            String sql = "DELETE FROM `phonedetail` WHERE phoneDetailId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, phoneDetailId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
