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
            while (rs.next()) {
                int mainCameraId = rs.getInt("mainCameraId");
                String mainCameraResolution = rs.getString("mainCameraResolution");
                String mainCameraFeatures = rs.getString("mainCameraFeatures");
                String mainCameraVideo = rs.getString("mainCameraVideo");

                mainCamera.add(new MainCamera(mainCameraId, mainCameraResolution, mainCameraFeatures, mainCameraVideo));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
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
}
