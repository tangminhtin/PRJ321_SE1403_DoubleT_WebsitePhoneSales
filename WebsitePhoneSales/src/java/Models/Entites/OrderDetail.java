/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

import java.io.Serializable;

/**
 *
 * @author TangMinhTin - CE130438 - tintmce130438@fpt.edu.vn
 */
public class OrderDetail implements Serializable {
    private int orderId;
    private int phoneId;
    private int shipperId;
    private int employeeId;
    private double orderDetailTotalPrice;
    private int orderDetailQuantity;

    /**
     *
     */
    public OrderDetail() {
    }

    /**
     *
     * @param orderId
     * @param phoneId
     * @param shipperId
     * @param employeeId
     * @param orderDetailTotalPrice
     * @param orderDetailQuantity
     */
    public OrderDetail(int orderId, int phoneId, int shipperId, int employeeId, double orderDetailTotalPrice, int orderDetailQuantity) {
        this.orderId = orderId;
        this.phoneId = phoneId;
        this.shipperId = shipperId;
        this.employeeId = employeeId;
        this.orderDetailTotalPrice = orderDetailTotalPrice;
        this.orderDetailQuantity = orderDetailQuantity;
    }

    /**
     *
     * @return
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     *
     * @param orderId
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     *
     * @return
     */
    public int getPhoneId() {
        return phoneId;
    }

    /**
     *
     * @param phoneId
     */
    public void setPhoneId(int phoneId) {
        this.phoneId = phoneId;
    }

    /**
     *
     * @return
     */
    public int getShipperId() {
        return shipperId;
    }

    /**
     *
     * @param shipperId
     */
    public void setShipperId(int shipperId) {
        this.shipperId = shipperId;
    }

    /**
     *
     * @return
     */
    public int getEmployeeId() {
        return employeeId;
    }

    /**
     *
     * @param employeeId
     */
    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    /**
     *
     * @return
     */
    public double getOrderDetailTotalPrice() {
        return orderDetailTotalPrice;
    }

    /**
     *
     * @param orderDetailTotalPrice
     */
    public void setOrderDetailTotalPrice(double orderDetailTotalPrice) {
        this.orderDetailTotalPrice = orderDetailTotalPrice;
    }

    /**
     *
     * @return
     */
    public int getOrderDetailQuantity() {
        return orderDetailQuantity;
    }

    /**
     *
     * @param orderDetailQuantity
     */
    public void setOrderDetailQuantity(int orderDetailQuantity) {
        this.orderDetailQuantity = orderDetailQuantity;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "orderId=" + orderId + ", phoneId=" + phoneId + ", shipperId=" + shipperId + ", employeeId=" + employeeId + ", orderDetailTotalPrice=" + orderDetailTotalPrice + ", orderDetailQuantity=" + orderDetailQuantity + '}';
    }
}
