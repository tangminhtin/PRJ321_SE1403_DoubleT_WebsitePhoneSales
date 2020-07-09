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
public class Customer implements Serializable {
    private int customerId;
    private String customerFullname;
    private String customerAddress;
    private String customerPhone;
    private String customerEmail;
    private String customerImage;
    private int userId;

    public Customer() {
    }

    public Customer(int customerId, String customerFullname, String customerAddress, String customerPhone, String customerEmail, String customerImage, int userId) {
        this.customerId = customerId;
        this.customerFullname = customerFullname;
        this.customerAddress = customerAddress;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerImage = customerImage;
        this.userId = userId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerFullname() {
        return customerFullname;
    }

    public void setCustomerFullname(String customerFullname) {
        this.customerFullname = customerFullname;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerImage() {
        return customerImage;
    }

    public void setCustomerImage(String customerImage) {
        this.customerImage = customerImage;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerId=" + customerId + ", customerFullname=" + customerFullname + ", customerAddress=" + customerAddress + ", customerPhone=" + customerPhone + ", customerEmail=" + customerEmail + ", customerImage=" + customerImage + ", userId=" + userId + '}';
    }
    
}
