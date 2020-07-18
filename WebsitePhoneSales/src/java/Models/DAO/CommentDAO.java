/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Comment;
import java.sql.Connection;
import java.sql.Date;
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
public class CommentDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Comment> comments;

    public CommentDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        comments = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `comment`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            comments.clear();
            while (rs.next()) {
                int commentId = rs.getInt("commentId");
                String commentContent = rs.getString("commentContent");
                Date commentDate = rs.getDate("commentDate");
                int customerId = rs.getInt("customerId");

                comments.add(new Comment(commentId, commentContent, commentDate, customerId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Comment> getComments() {
        return comments;
    }

    public Comment getComment(int commentId) {
        for (Comment cmt : comments) {
            if (cmt.getCommentId() == commentId) {
                return cmt;
            }
        }
        return null;
    }

    public int insert(String content, Date date, int customerId) {
        try {
            String sql = "INSERT INTO `comment`(`commentContent`, `commentDate`, `customerId`) VALUES (?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, content);
            pst.setDate(2, date);
            pst.setInt(3, customerId);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `comment`");
            if (rs.last()) {
                return rs.getInt("commentId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(String content, Date date, int customerId, int commentId) {
        try {
            String sql = "UPDATE `comment` SET `commentContent`=?,`commentDate`=?,`customerId`=? WHERE `commentId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, content);
            pst.setDate(2, date);
            pst.setInt(3, customerId);
            pst.setInt(4, commentId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int customerId) {
        try {
            String sql = "SELECT * FROM `comment` WHERE customerId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, customerId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<Comment> getComments(int customerId) {
        ArrayList<Comment> cmts = new ArrayList<>();
        for (Comment cmt : comments) {
            if (cmt.getCustomerId() == customerId) {
                cmts.add(cmt);
            }
        }
        return cmts;
    }

}
