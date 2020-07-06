/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Display;
import Models.Entites.MainCamera;
import Models.Entites.Phone;
import Models.Entites.PhoneDetail;
import Models.Entites.Platform;
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
public class mainCameraDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<MainCamera> mainCamera;

    public mainCameraDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        mainCamera = new ArrayList<>();
    }

    public ArrayList<MainCamera> getAllPhone(int mainCameraId) {
        try {
            String sql = "SELECT * FROM `maincamera` WHERE `mainCameraId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, mainCameraId);
            rs = pst.executeQuery();
            while (rs.next()) {
                mainCameraId = rs.getInt("mainCameraId");
                String mainCameraResolution = rs.getString("mainCameraResolution");
                String mainCameraFeatures = rs.getString("mainCameraFeatures");
                String mainCameraVideo = rs.getString("mainCameraVideo");
                
                mainCamera.add(new MainCamera(mainCameraId, mainCameraResolution, mainCameraFeatures, mainCameraVideo));
            }
            return mainCamera;
        } catch (SQLException ex) {
            Logger.getLogger(mainCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
