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
public class AddCart implements Serializable{
    private int phoneId;
    private String phoneName;
    private double phonePrice;
    private int phoneQuantity;

    public AddCart() {
    }

    
    public AddCart(int phoneId, String phoneName, double phonePrice, int phoneQuantity) {
        this.phoneId = phoneId;
        this.phoneName = phoneName;
        this.phonePrice = phonePrice;
        this.phoneQuantity = phoneQuantity;
    }

    public double getPhonePrice() {
        return phonePrice;
    }

    public void setPhonePrice(double phonePrice) {
        this.phonePrice = phonePrice;
    }

    public int getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(int phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    public int getPhoneQuantity() {
        return phoneQuantity;
    }

    public void setPhoneQuantity(int phoneQuantity) {
        this.phoneQuantity = phoneQuantity;
    }
    
    
    
}
