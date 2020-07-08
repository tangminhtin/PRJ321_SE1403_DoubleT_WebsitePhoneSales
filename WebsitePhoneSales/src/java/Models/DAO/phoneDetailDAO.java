/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

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
public class phoneDetailDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<PhoneDetail> phoneDetail;

    public phoneDetailDAO() {
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
            Logger.getLogger(phoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<PhoneDetail> getAllPhone() {
        return phoneDetail;
    }
    
     public PhoneDetail getPhoneById(int phoneDetailId) {
        for(PhoneDetail pd: phoneDetail) {
            if(pd.getPhoneDetailId() == phoneDetailId) {
                return pd;
            }
        }
        
        return null;
//        try {
//            String sql = "SELECT * FROM `phonedetail` WHERE `phoneDetailId`=?";
//            PreparedStatement pst = connection.prepareStatement(sql);
//            pst.setInt(1, phoneDetailId);
//            rs = pst.executeQuery();
//            while (rs.next()) {
//                //phoneDetailId = rs.getInt("phoneDetailId");
//                String phoneDetailImage = rs.getString("phoneDetailImage");
//                String phoneDetailDescription = rs.getString("phoneDetailDescription");
//                String phoneDetailVideo = rs.getString("phoneDetailVideo");
//                String phoneDetailSpecialFeatures = rs.getString("phoneDetailSpecialFeatures");
//                int displayId = rs.getInt("displayId");
//                int bodyId = rs.getInt("bodyId");
//                int platformId = rs.getInt("platformId");
//                int mainCameraId = rs.getInt("mainCameraId");
//                int selfieCameraId = rs.getInt("selfieCameraId");
//                int storageId = rs.getInt("storageId");
//                int batteryId = rs.getInt("batteryId");
//                int connectionId = rs.getInt("connectionId");
//                int commentId = rs.getInt("commentId");
//
//                phoneDetail.add(new PhoneDetail(phoneDetailId, phoneDetailImage, phoneDetailDescription, phoneDetailVideo, phoneDetailSpecialFeatures, displayId, bodyId, platformId, mainCameraId, selfieCameraId, storageId, batteryId, connectionId, commentId));
//
//            }
//            return phoneDetail;
//        } catch (SQLException ex) {
//            Logger.getLogger(phoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
    }

}
