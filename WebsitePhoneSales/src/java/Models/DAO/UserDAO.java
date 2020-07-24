/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.User;
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
public class UserDAO {

    private Connection connection = null;
    DBConnection dBConnection = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    ArrayList<User> users;

    /**
     *
     */
    public UserDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        users = new ArrayList<>();
        load();
    }

    /**
     *
     */
    public void load() {
        try {
            String sql = "SELECT * FROM `user` WHERE userRole!='admin' ORDER BY userId DESC";
            pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            users.clear();
            while (rs.next()) {
                users.add(new User(rs.getInt("userId"),
                        rs.getString("userName"),
                        rs.getString("userPassword"),
                        rs.getString("userRole")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @param userName
     * @param userPassword
     * @param userRole
     * @return
     */
    public int insert(String userName, String userPassword, String userRole) {
        try {
            String sql = "INSERT INTO `user`(`userName`, `userPassword`, `userRole`) VALUES (?, MD5(?), ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, userName);
            pst.setString(2, userPassword);
            pst.setString(3, userRole);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `user`");
            if (rs.last()) {
                return rs.getInt("userId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    /**
     *
     * @param userPassword
     * @param userRole
     * @param userId
     * @return
     */
    public boolean update(String userPassword, String userRole, int userId) {
        try {
            String sql = "UPDATE `user` SET `userPassword`=MD5(?),`userRole`=? WHERE `userId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, userPassword);
            pst.setString(2, userRole);
            pst.setInt(3, userId);
            pst.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param userId
     * @return
     */
    public boolean delete(int userId) {
        try {
            String sql = "DELETE FROM `user` WHERE `userId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, userId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param username
     * @param password
     * @return
     */
    public User login(String username, String password) {
        try {
            String sql = "SELECT * FROM `user` WHERE `userName`=? AND `userPassword`=MD5(?)";
            pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if (rs.first()) {
                return new User(rs.getInt("userId"), rs.getString("userName"), rs.getString("userPassword"), rs.getString("userRole"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     *
     * @param username
     * @return
     */
    public User searchUserByUserName(String username) {
        for (User u : users) {
            if (u.getUserName().equals(username)) {
                return u;
            }
        }
        return null;
    }

    /**
     *
     * @param userId
     * @return
     */
    public User searchUserByUserId(int userId) {
        for (User u : users) {
            if (u.getUserId() == userId) {
                return u;
            }
        }
        return null;
    }

    /**
     *
     * @return
     */
    public ArrayList<User> getUsers() {
        return users;
    }

    /**
     *
     * @param userId
     * @return
     */
    public String getRoleByUserId(int userId) {
        for (User u : users) {
            if (u.getUserId() == userId) {
                return u.getUserRole();
            }
        }
        return null;
    }

    /**
     *
     * @param start
     * @param limit
     * @return
     */
    public ArrayList<User> getUsersInRange(int start, int limit) {
        try {
            ArrayList<User> userLimit = new ArrayList<>();
            String sql = "SELECT * FROM `user` WHERE userRole!='admin' ORDER BY userId DESC LIMIT ?, ?";
            pst = connection.prepareStatement(sql);
            pst.setInt(1, start);
            pst.setInt(2, limit);
            rs = pst.executeQuery();
            while (rs.next()) {
                userLimit.add(new User(rs.getInt("userId"), rs.getString("userName"),
                        rs.getString("userPassword"), rs.getString("userRole")));
            }
            return userLimit;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     *
     * @return
     */
    public int getNumberOfUser() {
        return users.size();
    }
    
    /**
     *
     * @param id
     * @return
     */
    public User getUser(int id) {
        for(User u: users) {
            if(u.getUserId() == id) {
                return u;
            }
        }
        return null;
    }
}
