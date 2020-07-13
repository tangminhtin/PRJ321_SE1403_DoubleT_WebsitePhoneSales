/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

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
            platform.clear();
            while (rs.next()) {
                int platformId = rs.getInt("platformId");
                String platformOS = rs.getString("platformOS");
                String platformChipset = rs.getString("platformChipset");
                String platformCPU = rs.getString("platformCPU");
                String platformGPU = rs.getString("platformGPU");

                platform.add(new Platform(platformId, platformOS, platformChipset, platformCPU, platformGPU));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PlatformDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    public int insert(String OS, String chipset, String CPU, String GPU) {
        try {
            String sql = "INSERT INTO `platform`(`platformOS`, `platformChipset`, `platformCPU`, `platformGPU`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, OS);
            pst.setString(2, chipset);
            pst.setString(3, CPU);
            pst.setString(4, GPU);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `platform`");
            if (rs.last()) {
                return rs.getInt("platformId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PlatformDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String OS, String chipset, String CPU, String GPU, int platformId) {
        try {
            String sql = "UPDATE `platform` SET `platformOS`=?,`platformChipset`=?,`platformCPU`=?,`platformGPU`=? WHERE `platformId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, OS);
            pst.setString(2, chipset);
            pst.setString(3, CPU);
            pst.setString(4, GPU);
            pst.setInt(5, platformId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PlatformDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int platformId) {
        try {
            String sql = "DELETE FROM `platform` WHERE platformId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, platformId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PlatformDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
