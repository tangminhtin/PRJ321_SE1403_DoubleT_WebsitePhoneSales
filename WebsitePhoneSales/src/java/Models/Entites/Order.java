/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author TangMinhTin - CE130438 - tintmce130438@fpt.edu.vn
 */
public class Order implements Serializable {
    private int orderId;
    private Date orderDate;
    private int orderQuantity;
    private double orderTotalPrice;
    private String orderNote;
    private int phoneId;
    private int customerId;

    /**
     *
     */
    public Order() {
    }

    /**
     *
     * @param orderId
     * @param orderDate
     * @param orderQuantity
     * @param orderTotalPrice
     * @param orderNote
     * @param phoneId
     * @param customerId
     */
    public Order(int orderId, Date orderDate, int orderQuantity, double orderTotalPrice, String orderNote, int phoneId, int customerId) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.orderQuantity = orderQuantity;
        this.orderTotalPrice = orderTotalPrice;
        this.orderNote = orderNote;
        this.phoneId = phoneId;
        this.customerId = customerId;
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
    public Date getOrderDate() {
        return orderDate;
    }

    /**
     *
     * @param orderDate
     */
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    /**
     *
     * @return
     */
    public int getOrderQuantity() {
        return orderQuantity;
    }

    /**
     *
     * @param orderQuantity
     */
    public void setOrderQuantity(int orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

    /**
     *
     * @return
     */
    public double getOrderTotalPrice() {
        return orderTotalPrice;
    }

    /**
     *
     * @param orderTotalPrice
     */
    public void setOrderTotalPrice(double orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    /**
     *
     * @return
     */
    public String getOrderNote() {
        return orderNote;
    }

    /**
     *
     * @param orderNote
     */
    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
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
    public int getCustomerId() {
        return customerId;
    }

    /**
     *
     * @param customerId
     */
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", orderDate=" + orderDate + ", orderQuantity=" + orderQuantity + ", orderTotalPrice=" + orderTotalPrice + ", orderNote=" + orderNote + ", phoneId=" + phoneId + ", customerId=" + customerId + '}';
    }
    
}
