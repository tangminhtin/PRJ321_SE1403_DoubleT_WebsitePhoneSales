/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Body;
import Models.Entites.Comment;
import Models.Entites.Display;
import Models.Entites.Phone;
import Models.Entites.PhoneDetail;
import Models.Entites.Storage;
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
    ArrayList<Comment> comment;

    public CommentDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        comment = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `comment`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int commentId = rs.getInt("commentId");
                String commentContent = rs.getString("commentContent");
                Date commentDate = rs.getDate("commentDate");
                int customerId = rs.getInt("customerId");

                comment.add(new Comment(commentId, commentContent, commentDate, customerId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Comment> getAllPhone() {
        return comment;
    }

    public Comment getPhoneById(int commentId) {
        for (Comment cmt : comment) {
            if (cmt.getCommentId() == commentId) {
                return cmt;
            }
        }
        return null;
    }

}
