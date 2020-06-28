/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.User;
import java.rmi.RemoteException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.processing.SupportedSourceVersion;

/**
 *
 * @author phuct
 */
public class UserDAO {

    private Connection connection;
    DBConnection dBConnection;
    PreparedStatement pst;

    public UserDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();

    }

    public boolean insert(String userName, String userPassword, String userRole) {
        try {
            String sql = "INSERT INTO `user`(`userName`, `userPassword`, `userRole`) VALUES (?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, userName);
            pst.setString(2, userPassword);
            pst.setString(3, userRole);
            return pst.execute();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean update(String userName, String userPassword, String userRole, int userId) {
        try {
            String sql = "UPDATE `user` SET `userName`=?,`userPassword`=?,`userRole`=? WHERE `userId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, userName);
            pst.setString(2, userPassword);
            pst.setString(3, userRole);
            pst.setInt(4, userId);

            pst.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int userId) {
        try {
            String sql = "DELETE FROM `user` WHERE `userId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, userId);

            pst.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<User> login(String Username, String Password) {
        try {
            ResultSet rs;
            String sql = "SELECT * FROM `user` WHERE `userName`=? AND `userPassword`=?";
            pst = connection.prepareStatement(sql);
            pst.setString(1, Username);
            pst.setString(2, Password);
            rs = pst.executeQuery();

            int check = 0;
            String db_aUser;
            String db_aPass;
            if (rs.next()) {

                db_aUser = rs.getString("userName");
                db_aPass = rs.getString("userPassword");

                if (Username.equals(db_aUser)) {

                    return searchUserByUserName(db_aUser);
                }
            }
        } catch (SQLException ex) {
        }
        return null;
    }

    public ArrayList<User> searchUserByUserName(String username) {
        try {
            ArrayList<User> user = new ArrayList<User>();
            ResultSet rs;
            String sql = "SELECT * FROM `user` WHERE `userName`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            rs = pst.executeQuery();
            if (rs.next()) {
                int userId = rs.getInt("userId");
                String userName = rs.getString("userName");
                String userPassword = rs.getString("userPassword");
                String userRole = rs.getString("userRole");
                user.add(new User(userId, userName, userPassword, userRole));

                return user;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
       public ArrayList<User> searchUserByUserId(int userId) {
        try {
            ArrayList<User> user = new ArrayList<User>();
            ResultSet rs;
            String sql = "SELECT * FROM `user` WHERE `userId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, userId);
            rs = pst.executeQuery();
            if (rs.next()) {
                userId = rs.getInt("userId");
                String userName = rs.getString("userName");
                String userPassword = rs.getString("userPassword");
                String userRole = rs.getString("userRole");
                user.add(new User(userId, userName, userPassword, userRole));

                return user;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    

}
