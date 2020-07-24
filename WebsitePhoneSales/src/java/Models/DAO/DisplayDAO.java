/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Display;
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
public class DisplayDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Display> displays;

    /**
     *
     */
    public DisplayDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        displays = new ArrayList<>();
        load();
    }

    /**
     *
     */
    public void load() {
        try {
            String sql = "SELECT * FROM `display`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            displays.clear();
            while (rs.next()) {
                int displayId = rs.getInt("displayId");
                String displayType = rs.getString("displayType");
                String displaySize = rs.getString("displaySize");
                String displayResolution = rs.getString("displayResolution");
                String displayProtection = rs.getString("displayProtection");
                displays.add(new Display(displayId, displayType, displaySize, displayResolution, displayProtection));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @return
     */
    public ArrayList<Display> getAllPhone() {
        return displays;
    }

    /**
     *
     * @param displayId
     * @return
     */
    public Display getDisplay(int displayId) {
        for (Display display : displays) {
            if (display.getDisplayId() == displayId) {
                return display;
            }
        }
        return null;
    }
    
    /**
     *
     * @param type
     * @param size
     * @param resolution
     * @param protection
     * @return
     */
    public int insert(String type, String size, String resolution, String protection) {
        try {
            String sql = "INSERT INTO `display`(`displayType`, `displaySize`, `displayResolution`, `displayProtection`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, type);
            pst.setString(2, size);
            pst.setString(3, resolution);
            pst.setString(4, protection);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `display`");
            if(rs.last()) {
                return rs.getInt("displayId");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    /**
     *
     * @param type
     * @param size
     * @param resolution
     * @param protection
     * @param displayId
     * @return
     */
    public boolean update(String type, String size, String resolution, String protection, int displayId) {
        try {
            String sql = "UPDATE `display` SET `displayType`=?,`displaySize`=?,`displayResolution`=?, `displayProtection`=? WHERE  `displayId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, type);
            pst.setString(2, size);
            pst.setString(3, resolution);
            pst.setString(4, protection);
            pst.setInt(5, displayId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(DisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    /**
     *
     * @param displayId
     * @return
     */
    public boolean delete(int displayId) {
        try {
            String sql = "DELETE FROM `display` WHERE displayId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, displayId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(DisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }


}
