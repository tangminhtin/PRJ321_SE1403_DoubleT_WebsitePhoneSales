/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Body;
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
public class bodyDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Body> body;

    public bodyDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        body = new ArrayList<>();
    }

    public ArrayList<Body> getAllPhone(int bodyId) {
        try {
            String sql = "SELECT * FROM `body` WHERE `bodyId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, bodyId);
            rs = pst.executeQuery();
            while (rs.next()) {
                bodyId = rs.getInt("bodyId");
                String bodyDimensions = rs.getString("bodyDimensions");
                String bodyWeight = rs.getString("bodyWeight");
                String bodyBuild = rs.getString("bodyBuild");
                
                body.add(new Body(bodyId, bodyDimensions, bodyWeight, bodyBuild));
            }
            return body;
        } catch (SQLException ex) {
            Logger.getLogger(bodyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
