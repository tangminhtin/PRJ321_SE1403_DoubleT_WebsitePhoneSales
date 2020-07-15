/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.SelfieCamera;
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
public class SelfieCameraDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<SelfieCamera> selfieCamera;

    public SelfieCameraDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        selfieCamera = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `selfiecamera`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            selfieCamera.clear();
            while (rs.next()) {
                int selfieCameraId = rs.getInt("selfieCameraId");
                String selfieCameraResolution = rs.getString("selfieCameraResolution");
                String selfieCameraFeatures = rs.getString("selfieCameraFeatures");
                String selfieCameraVideo = rs.getString("selfieCameraVideo");
                selfieCamera.add(new SelfieCamera(selfieCameraId, selfieCameraResolution, selfieCameraFeatures, selfieCameraVideo));

            }
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<SelfieCamera> getAllPhone() {
        return selfieCamera;
    }

    public SelfieCamera getSelfieCamera(int selfieCameraId) {
        for (SelfieCamera sc : selfieCamera) {
            if (sc.getSelfieCameraId() == selfieCameraId) {
                return sc;
            }
        }
        return null;
    }

    public int insert(int selfieCameraId, String resolution, String features, String video) {
        try {
            String sql = "INSERT INTO `selfiecamera`(`selfieCameraId`, `selfieCameraResolution`, `selfieCameraFeatures`, `selfieCameraVideo`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, selfieCameraId);
            pst.setString(2, resolution);
            pst.setString(3, features);
            pst.setString(4, video);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `selfiecamera`");
            if (rs.last()) {
                return rs.getInt("selfieCameraId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String resolution, String features, String video, int selfieCameraId) {
        try {
            String sql = "UPDATE `selfiecamera` SET `selfieCameraResolution`=?,`selfieCameraFeatures`=?,`selfieCameraVideo`=? WHERE  `selfieCameraId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, resolution);
            pst.setString(2, features);
            pst.setString(3, video);
            pst.setInt(4, selfieCameraId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int selfieCameraId) {
        try {
            String sql = "DELETE FROM `selfiecamera` WHERE selfieCameraId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, selfieCameraId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SelfieCameraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
