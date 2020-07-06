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
public class commentDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Comment> comment;

    public commentDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        comment = new ArrayList<>();
    }

    public ArrayList<Comment> getAllPhone(int commentId) {
        try {
            String sql = "SELECT * FROM `comment` WHERE `commentId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, commentId);
            rs = pst.executeQuery();
            while (rs.next()) {
                commentId = rs.getInt("commentId");
                String commentContent = rs.getString("commentContent");
                Date commentDate = rs.getDate("commentDate");
                int customerId = rs.getInt("customerId");
            
               comment.add(new Comment(commentId, commentContent, commentDate, customerId));
            }
            return comment;
        } catch (SQLException ex) {
            Logger.getLogger(commentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
