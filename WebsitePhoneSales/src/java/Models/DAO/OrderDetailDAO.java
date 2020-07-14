/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author tangminhtin
 */
public class OrderDetailDAO {
    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<OrderDetail> orderDetails;

    public OrderDetailDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        orderDetails = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `selfiecamera`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            orderDetails.clear();
            while (rs.next()) {
                orderDetails.add(new OrderDetail(
                        rs.getInt("orderId"), 
                        rs.getInt("phoneId"), 
                        rs.getInt("shipperId"), 
                        rs.getInt("employeeId"), 
                        rs.getDouble("orderDetailTotalPrice"), 
                rs.getInt("")));
                
                

            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Order> getAllPhone() {
        return orders;
    }

    public Order getPhoneById(int orderId) {
        for (Order o : orders) {
            if (o.getOrderId()== orderId) {
                return o;
            }
        }
        return null;
    }

    public int insert(String date, int quantity, double totalPrice, String note, int phoneId, int customerId) {
        try {
            String sql = "INSERT INTO `order`(`orderDate`, `orderQuantity`, `orderTotalPrice`, `orderNote`, `phoneId`, `customerId`) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDate(1, Date.valueOf(date));
            pst.setInt(2, quantity);
            pst.setDouble(3, totalPrice);
            pst.setString(4, note);
            pst.setInt(5, phoneId);
            pst.setInt(6, customerId);
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

    public boolean update(String date, int quantity, double totalPrice, String note, int phoneId, int customerId, int orderId) {
        try {
            String sql = "UPDATE `order` SET `orderDate`=?,`orderQuantity`=?,`orderTotalPrice`=?,`orderNote`=?,`phoneId`=?,`customerId`=? WHERE `orderId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDate(1, Date.valueOf(date));
            pst.setInt(2, quantity);
            pst.setDouble(3, totalPrice);
            pst.setString(4, note);
            pst.setInt(5, phoneId);
            pst.setInt(6, customerId);
            pst.setInt(7, orderId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

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

}
