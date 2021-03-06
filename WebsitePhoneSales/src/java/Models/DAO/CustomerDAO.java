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
    private String sql = "";

    /**
     *
     */
    public CustomerDAO() {
        DBConnection dbc = new DBConnection();
        connection = dbc.getConnection();
        customers = new ArrayList<>();
        load();
    }
    
    /**
     *
     */
    public void load() {
        try {
            sql = "SELECT * FROM `customer`";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            customers.clear();
            while (rs.next()) {
                customers.add(new Customer(rs.getInt("customerId"),
                        rs.getString("customerFullname"), rs.getString("customerAddress"),
                        rs.getString("customerPhone"), rs.getString("customerEmail"),
                        rs.getString("customerImage"), rs.getInt("userId")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     *
     * @return
     */
    public ArrayList<Customer> getCustomers() {
        return customers;
    }
    
    /**
     *
     * @param customerFullname
     * @param customerAddress
     * @param customerPhone
     * @param customerEmail
     * @param customerImage
     * @param userId
     * @return
     */
    public boolean insert(String customerFullname, String customerAddress, String customerPhone, String customerEmail, String customerImage, int userId) {
        try {
            String sql = "INSERT INTO `customer`(`customerFullname`, `customerAddress`, `customerPhone`, `customerEmail`, `customerImage`, `userId`) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, customerFullname);
            pst.setString(2, customerAddress);
            pst.setString(3, customerPhone);
            pst.setString(4, customerEmail);
            pst.setString(5, customerImage);
            pst.setInt(6, userId);
            pst.execute();
            load();
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    /**
     *
     * @param customerFullname
     * @param customerAddress
     * @param customerPhone
     * @param customerEmail
     * @param customerImage
     * @param customerId
     * @return
     */
    public boolean update(String customerFullname, String customerAddress, String customerPhone, String customerEmail, String customerImage, int customerId) {
        try {
            String sql = "UPDATE `customer` SET `customerFullname`=?,`customerAddress`=?,`customerPhone`=?,`customerEmail`=?,`customerImage`=? WHERE `customerId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, customerFullname);
            pst.setString(2, customerAddress);
            pst.setString(3, customerPhone);
            pst.setString(4, customerEmail);
            pst.setString(5, customerImage);
            pst.setInt(6, customerId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            String sql = "DELETE FROM `customer` WHERE `customerId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, customerId);
            pst.execute();
            load();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    /**
     *
     * @param userId
     * @return
     */
    public Customer getCustomer(int userId) {
        for(Customer c: customers) {
            if(c.getUserId()==userId) {
                return c;
            }
        }
        return null;
    }
    
    /**
     *
     * @param customerId
     * @return
     */
    public Customer getCustomerCusId(int customerId) {
        for(Customer c: customers) {
            if(c.getCustomerId()==customerId) {
                return c;
            }
        }
        return null;
    }
    
    /**
     *
     * @param userId
     * @return
     */
    public Customer getCustomerCusUserId(int userId) {
        for(Customer c: customers) {
            if(c.getUserId()==userId) {
                return c;
            }
        }
        return null;
    }
    
    /**
     *
     * @param email
     * @return
     */
    public Customer getCustomer(String email) {
        for(Customer c: customers) {
            if(c.getCustomerEmail().equals(email)) {
                return c;
            }
        }
        return null;
    }
    
}
