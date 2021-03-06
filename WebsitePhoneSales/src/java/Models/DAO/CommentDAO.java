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

    /**
     *
     */
    public CommentDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        comments = new ArrayList<>();
        load();
    }

    /**
     *
     */
    public void load() {
        try {
            String sql = "SELECT * FROM `comment` ORDER BY commentDate DESC";
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

    /**
     *
     * @return
     */
    public ArrayList<Comment> getComments() {
        return comments;
    }

    /**
     *
     * @param commentId
     * @return
     */
    public Comment getComment(int commentId) {
        for (Comment cmt : comments) {
            if (cmt.getCommentId() == commentId) {
                return cmt;
            }
        }
        return null;
    }

    /**
     *
     * @param content
     * @param date
     * @param customerId
     * @return
     */
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

    /**
     *
     * @param content
     * @param date
     * @param customerId
     * @param commentId
     * @return
     */
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

    /**
     *
     * @param customerId
     * @return
     */
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

    /**
     *
     * @param customerId
     * @return
     */
    public ArrayList<Comment> getComments(int customerId) {
        ArrayList<Comment> cmts = new ArrayList<>();
        for (Comment cmt : comments) {
            if (cmt.getCustomerId() == customerId) {
                cmts.add(cmt);
            }
        }
        return cmts;
    }

    /**
     *
     * @return
     */
    public int getNumberOfComment() {
        return comments.size();
    }

    /**
     *
     * @param start
     * @param limit
     * @return
     */
    public ArrayList<Comment> getCommentsInRange(int start, int limit) {
        try {
            ArrayList<Comment> cmts = new ArrayList<>();
            String sql = "SELECT * FROM `comment` ORDER BY commentId DESC LIMIT ?, ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, start);
            pst.setInt(2, limit);
            rs = pst.executeQuery();
            while (rs.next()) {
                cmts.add(new Comment(
                        rs.getInt("commentId"),
                        rs.getString("commentContent"),
                        rs.getDate("commentDate"),
                        rs.getInt("customerId"))
                );
            }
            return cmts;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
