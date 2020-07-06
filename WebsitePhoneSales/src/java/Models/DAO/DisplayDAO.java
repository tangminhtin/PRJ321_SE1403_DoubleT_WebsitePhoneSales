/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Display;
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
public class DisplayDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Display> display;

    public DisplayDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        display = new ArrayList<>();
    }

    public ArrayList<Display> getAllPhone(int displayId) {
        try {
            String sql = "SELECT * FROM `display` WHERE `displayId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, displayId);
            rs = pst.executeQuery();
            while (rs.next()) {
                displayId = rs.getInt("displayId");
                String displayType = rs.getString("displayType");
                String displaySize = rs.getString("displaySize");
                String displayResolution = rs.getString("displayResolution");
                String displayProtection = rs.getString("displayProtection");
                
                display.add(new Display(displayId, displayType, displaySize, displayResolution, displayProtection));
            }
            return display;
        } catch (SQLException ex) {
            Logger.getLogger(DisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
