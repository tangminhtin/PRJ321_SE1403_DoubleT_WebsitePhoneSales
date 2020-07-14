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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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
            String sql = "SELECT * FROM `orderdetail`";
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
                        rs.getInt("orderDetailQuantity")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public OrderDetail getOrderDetailById(int orderId) {
        for (OrderDetail od : orderDetails) {
            if (od.getOrderId()== orderId) {
                return od;
            }
        }
        return null;
    }

    public int insert(int orderId, int phoneId, int shipperId, int employeeId, double totalPrice, int quantity) {
        try {
            String sql = "INSERT INTO `orderdetail`(`orderId`, `phoneId`, `shipperId`, `employeeId`, `orderDetailTotalPrice`, `orderDetailQuantity`) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, orderId);
            pst.setInt(2, phoneId);
            pst.setInt(3, shipperId);
            pst.setInt(4, employeeId);
            pst.setDouble(5, totalPrice);
            pst.setInt(6, quantity);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `orderdetail`");
            if (rs.last()) {
                return rs.getInt("orderId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public boolean update(double totalPrice, int quantity, int orderId) {
        try {
            String sql = "UPDATE `orderdetail` SET `orderDetailTotalPrice`=?,`orderDetailQuantity`=? WHERE `orderId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDouble(1, totalPrice);
            pst.setInt(2, quantity);
            pst.setInt(3, orderId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean delete(int orderId) {
        try {
            String sql = "DELETE FROM `orderdetail` WHERE orderId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, orderId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
