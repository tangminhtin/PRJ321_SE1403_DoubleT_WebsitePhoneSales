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
public class BodyDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Body> body;

    public BodyDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        body = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `body`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int bodyId = rs.getInt("bodyId");
                String bodyDimensions = rs.getString("bodyDimensions");
                String bodyWeight = rs.getString("bodyWeight");
                String bodyBuild = rs.getString("bodyBuild");

                body.add(new Body(bodyId, bodyDimensions, bodyWeight, bodyBuild));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Body> getAllPhone() {
        return body;
    }

    public Body getPhoneById(int bodyId) {
        for (Body bd : body) {
            if (bd.getBodyId() == bodyId) {
                return bd;
            }
        }

        return null;
    }

}
