/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import java.rmi.RemoteException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author phuct
 */
public class UserDAO {
    private Connection connection;
    DBConnection dBConnection;
    PreparedStatement pst;
    public UserDAO(){
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
       
        
    }
     public int login(String Username, String Password){
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
                    return check = 1;
                }
            }
        } catch (SQLException ex) {
        }
        return -1;
    }
}
