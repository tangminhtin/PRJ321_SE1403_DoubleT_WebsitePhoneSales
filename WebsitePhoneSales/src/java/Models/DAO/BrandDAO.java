/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Brand;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tangminhtin
 */
public class BrandDAO {

    private Connection connection = null;
    private String sql = "";
    private PreparedStatement preparedStatement = null;
    private ResultSet rs = null;
    private ArrayList<Brand> brands;

    public BrandDAO() {
        DBConnection dbc = new DBConnection();
        connection = dbc.getConnection();
        brands = new ArrayList<>();
        load();
    }

    public ArrayList<Brand> getBrands() {
        return brands;
    }

    public void load() {
        try {
            sql = "SELECT * FROM `brand`";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            brands.clear();
            while (rs.next()) {
                brands.add(new Brand(rs.getInt("brandId"),
                        rs.getString("brandName"),
                        rs.getString("brandImage")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Brand getBrand(int brandId) {
        for (Brand b : brands) {
            if (b.getBrandId() == brandId) {
                return b;
            }
        }
        return null;
    }
    
    public int getNumberOfBrand() {
        return brands.size();
    }
}
