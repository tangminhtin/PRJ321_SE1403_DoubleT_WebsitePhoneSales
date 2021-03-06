/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Order;
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
 * @author tangminhtin
 */
public class OrderDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Order> orders;

    /**
     *
     */
    public OrderDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        orders = new ArrayList<>();
        load();
    }

    /**
     *
     */
    public void load() {
        try {
            String sql = "SELECT * FROM `order` ORDER BY orderDate DESC";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            orders.clear();
            while (rs.next()) {
                orders.add(new Order(rs.getInt("orderId"),
                        rs.getDate("orderDate"),
                        rs.getInt("orderQuantity"),
                        rs.getDouble("orderTotalPrice"),
                        rs.getString("orderNote"),
                        rs.getInt("phoneId"),
                        rs.getInt("customerId")));

            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @return
     */
    public ArrayList<Order> getOrders() {
        return orders;
    }

    /**
     *
     * @param orderId
     * @return
     */
    public Order getOrderById(int orderId) {
        for (Order o : orders) {
            if (o.getOrderId() == orderId) {
                return o;
            }
        }
        return null;
    }

    /**
     *
     * @param quantity
     * @param totalPrice
     * @param note
     * @param customerId
     * @return
     */
    public int insert( int quantity, double totalPrice, String note, int customerId) {
        try {
            String sql = "INSERT INTO `order`(`orderQuantity`, `orderTotalPrice`, `orderNote`, `customerId`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, quantity);
            pst.setDouble(2, totalPrice);
            pst.setString(3, note);
            pst.setInt(4, customerId);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `order`");
            if (rs.last()) {
                return rs.getInt("orderId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    /**
     *
     * @param date
     * @param quantity
     * @param totalPrice
     * @param note
     * @param orderId
     * @return
     */
    public boolean update(String date, int quantity, double totalPrice, String note, int orderId) {
        try {
            String sql = "UPDATE `order` SET `orderDate`=?,`orderQuantity`=?,`orderTotalPrice`=?,`orderNote`=? WHERE `orderId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDate(1, Date.valueOf(date));
            pst.setInt(2, quantity);
            pst.setDouble(3, totalPrice);
            pst.setString(4, note);
            pst.setInt(5, orderId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param orderId
     * @return
     */
    public boolean delete(int orderId) {
        try {
            String sql = "DELETE FROM `order` WHERE orderId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, orderId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param customerId
     * @return
     */
    public boolean deleteByCusId(int customerId) {
        try {
            String sql = "DELETE FROM `order` WHERE customerId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, customerId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param customerId
     * @return
     */
    public ArrayList<Order> getOrders(int customerId) {
        ArrayList<Order> ors = new ArrayList<>();
        for (Order o : ors) {
            if (o.getCustomerId() == customerId) {
                ors.add(o);
            }
        }
        return ors;
    }
    
    /**
     *
     * @return
     */
    public int getNumberOfOrder() {
        return orders.size();
    }
    
    /**
     *
     * @return
     */
    public int getMaxOrderId(){
        try {
            String sql = "SELECT MAX(`orderId`)FROM`order`";
            PreparedStatement pst = connection.prepareStatement(sql);
            return pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

}
