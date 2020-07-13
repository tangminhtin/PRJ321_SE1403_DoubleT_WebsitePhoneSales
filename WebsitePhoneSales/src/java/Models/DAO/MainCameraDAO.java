/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.MainCamera;
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
public class MainCameraDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<MainCamera> mainCamera;

    public MainCameraDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        mainCamera = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `maincamera`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            mainCamera.clear();
            while (rs.next()) {
                int mainCameraId = rs.getInt("mainCameraId");
                String mainCameraResolution = rs.getString("mainCameraResolution");
                String mainCameraFeatures = rs.getString("mainCameraFeatures");
                String mainCameraVideo = rs.getString("mainCameraVideo");

                mainCamera.add(new MainCamera(mainCameraId, mainCameraResolution, mainCameraFeatures, mainCameraVideo));
            }
        } catch (SQLException ex) {
            Logger.getLogger(MainCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<MainCamera> getAllPhone() {
        return mainCamera;
    }

    public MainCamera getPhoneById(int maincameraId) {
        for (MainCamera mc : mainCamera) {
            if (mc.getMainCameraId() == maincameraId) {
                return mc;
            }
        }
        return null;
    }

    public int insert(String resolution, String features, String video) {
        try {
            String sql = "INSERT INTO `maincamera`(`mainCameraResolution`, `mainCameraFeatures`, `mainCameraVideo`) VALUES (?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, resolution);
            pst.setString(2, features);
            pst.setString(3, video);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `maincamera`");
            if (rs.last()) {
                return rs.getInt("mainCameraId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(MainCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String resolution, String features, String video, int mainCameraId) {
        try {
            String sql = "UPDATE `maincamera` SET `mainCameraResolution`=?,`mainCameraFeatures`=?,`mainCameraVideo`=? WHERE `mainCameraId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, resolution);
            pst.setString(2, features);
            pst.setString(3, video);
            pst.setInt(4, mainCameraId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(MainCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int mainCameraId) {
        try {
            String sql = "DELETE FROM `maincamera` WHERE mainCameraId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, mainCameraId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(MainCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
