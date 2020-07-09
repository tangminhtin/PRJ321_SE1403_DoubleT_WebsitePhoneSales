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
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `display`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int displayId = rs.getInt("displayId");
                String displayType = rs.getString("displayType");
                String displaySize = rs.getString("displaySize");
                String displayResolution = rs.getString("displayResolution");
                String displayProtection = rs.getString("displayProtection");
                display.add(new Display(displayId, displayType, displaySize, displayResolution, displayProtection));

            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Display> getAllPhone() {
        return display;
    }

    public Display getPhoneById(int displayId) {
        for (Display displays : display) {
            if (displays.getDisplayId() == displayId) {
                return displays;
            }
        }
        return null;
    }

}
