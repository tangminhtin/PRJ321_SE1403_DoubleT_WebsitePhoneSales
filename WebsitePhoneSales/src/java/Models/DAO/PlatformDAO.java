/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Display;
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
public class PlatformDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Platform> platform;

    public PlatformDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        platform = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `platform`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int platformId = rs.getInt("platformId");
                String platformOS = rs.getString("platformOS");
                String platformChipset = rs.getString("platformChipset");
                String platformCPU = rs.getString("platformCPU");
                String platformGPU = rs.getString("platformGPU");

                platform.add(new Platform(platformId, platformOS, platformChipset, platformCPU, platformGPU));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Platform> getAllPhone() {
        return platform;
    }

    public Platform getPhoneById(int platformId) {
        for (Platform platforms : platform) {
            if (platforms.getPlatformId() == platformId) {
                return platforms;
            }
        }
        return null;
    }

}
