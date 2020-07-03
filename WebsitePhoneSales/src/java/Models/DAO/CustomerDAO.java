/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Customer;
import java.sql.Connection;
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
public class CustomerDAO {
    private Connection connection = null;
    private ResultSet rs = null;
    private PreparedStatement ps = null;
    private ArrayList<Customer> customers;
    String sql = "";

    public CustomerDAO() {
        DBConnection dbc = new DBConnection();
        connection = dbc.getConnection();
        customers = new ArrayList<>();
        load();
    }
    
    public void load() {
        try {
            sql = "SELECT * FROM `customer`";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            customers.clear();
            while (rs.next()) {
                customers.add(new Customer(rs.getInt("customerId"),
                        rs.getString("customerFullname"), rs.getString("customerAddress"),
                        rs.getString("customerPhone"), rs.getInt("userId")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Customer> getCustomers() {
        return customers;
    }
    
}
