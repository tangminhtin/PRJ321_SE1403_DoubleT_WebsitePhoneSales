/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Body;
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
    ArrayList<Body> bodies;

    public BodyDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        bodies = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `body`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            bodies.clear();
            while (rs.next()) {
                int bodyId = rs.getInt("bodyId");
                String bodyDimensions = rs.getString("bodyDimensions");
                String bodyWeight = rs.getString("bodyWeight");
                String bodyBuild = rs.getString("bodyBuild");

                bodies.add(new Body(bodyId, bodyDimensions, bodyWeight, bodyBuild));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BodyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Body> getAllPhone() {
        return bodies;
    }

    public Body getPhoneById(int bodyId) {
        for (Body bd : bodies) {
            if (bd.getBodyId() == bodyId) {
                return bd;
            }
        }

        return null;
    }
    
    public int insert(int bodyId, String dimensions, String weight, String build) {
        try {
            String sql = "INSERT INTO `body`(`bodyId`, `bodyDimensions`, `bodyWeight`, `bodyBuild`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, bodyId);
            pst.setString(2, dimensions);
            pst.setString(3, weight);
            pst.setString(4, build);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `body`");
            if(rs.last()) {
                return rs.getInt("bodyId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BodyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public boolean update(String dimensions, String weight, String build, int bodyId) {
        try {
            String sql = "UPDATE `body` SET `bodyDimensions`=?,`bodyWeight`=?,`bodyBuild`=? WHERE `bodyId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, dimensions);
            pst.setString(2, weight);
            pst.setString(3, build);
            pst.setInt(4, bodyId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BodyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean delete(int bodyId) {
        try {
            String sql = "DELETE FROM `body` WHERE bodyId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, bodyId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BodyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
