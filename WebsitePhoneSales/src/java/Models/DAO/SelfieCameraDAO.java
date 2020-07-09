/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Phone;
import Models.Entites.PhoneDetail;
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
            while (rs.next()) {
                int selfieCameraId = rs.getInt("selfieCameraId");
                String selfieCameraResolution = rs.getString("selfieCameraResolution");
                String selfieCameraFeatures = rs.getString("selfieCameraFeatures");
                String selfieCameraVideo = rs.getString("selfieCameraVideo");
                selfieCamera.add(new SelfieCamera(selfieCameraId, selfieCameraResolution, selfieCameraFeatures, selfieCameraVideo));

            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<SelfieCamera> getAllPhone() {
        return selfieCamera;
    }

    public SelfieCamera getPhoneById(int selfieCameraId) {
        for (SelfieCamera sc : selfieCamera) {
            if (sc.getSelfieCameraId() == selfieCameraId) {
                return sc;
            }
        }
        return null;
    }

}
