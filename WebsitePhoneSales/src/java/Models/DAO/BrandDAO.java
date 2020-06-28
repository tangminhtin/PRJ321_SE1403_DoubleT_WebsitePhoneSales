/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tangminhtin
 */
public class BrandDAO {

    private Connection connection;
    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public BrandDAO() {
        DBConnection dbc = new DBConnection();
        connection = dbc.getConnection();
        preparedStatement = null;
        resultSet = null;
        sql = "";
    }

    public ResultSet getBrands() {
        try {
            String sql = "SELECT * FROM `brand`";
            preparedStatement = connection.prepareStatement(sql);
            return preparedStatement.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
