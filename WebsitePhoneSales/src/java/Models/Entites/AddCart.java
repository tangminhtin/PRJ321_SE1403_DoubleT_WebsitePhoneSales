/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

import java.io.Serializable;

/**
 *
 * @author phuct
 */
public class AddCart implements Serializable {

    private int phoneId;
    private String phoneName;
    private double phonePrice;
    private int phoneQuantity;
    private int userId;

    /**
     *
     */
    public AddCart() {
    }

    /**
     *
     * @param phoneId
     * @param phoneName
     * @param phonePrice
     * @param phoneQuantity
     * @param userId
     */
    public AddCart(int phoneId, String phoneName, double phonePrice, int phoneQuantity, int userId) {
        this.phoneId = phoneId;
        this.phoneName = phoneName;
        this.phonePrice = phonePrice;
        this.phoneQuantity = phoneQuantity;
        this.userId = userId;
    }

    /**
     *
     * @return
     */
    public int getUserId() {
        return userId;
    }

    /**
     *
     * @param userId
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     *
     * @return
     */
    public double getPhonePrice() {
        return phonePrice;
    }

    /**
     *
     * @param phonePrice
     */
    public void setPhonePrice(double phonePrice) {
        this.phonePrice = phonePrice;
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
    public String getPhoneName() {
        return phoneName;
    }

    /**
     *
     * @param phoneName
     */
    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    /**
     *
     * @return
     */
    public int getPhoneQuantity() {
        return phoneQuantity;
    }

    /**
     *
     * @param phoneQuantity
     */
    public void setPhoneQuantity(int phoneQuantity) {
        this.phoneQuantity = phoneQuantity;
    }

}
