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

    /**
     *
     */
    public Customer() {
    }

    /**
     *
     * @param customerId
     * @param customerFullname
     * @param customerAddress
     * @param customerPhone
     * @param customerEmail
     * @param customerImage
     * @param userId
     */
    public Customer(int customerId, String customerFullname, String customerAddress, String customerPhone, String customerEmail, String customerImage, int userId) {
        this.customerId = customerId;
        this.customerFullname = customerFullname;
        this.customerAddress = customerAddress;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerImage = customerImage;
        this.userId = userId;
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

    /**
     *
     * @return
     */
    public String getCustomerFullname() {
        return customerFullname;
    }

    /**
     *
     * @param customerFullname
     */
    public void setCustomerFullname(String customerFullname) {
        this.customerFullname = customerFullname;
    }

    /**
     *
     * @return
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     *
     * @param customerAddress
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    /**
     *
     * @return
     */
    public String getCustomerPhone() {
        return customerPhone;
    }

    /**
     *
     * @param customerPhone
     */
    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
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
    public String getCustomerEmail() {
        return customerEmail;
    }

    /**
     *
     * @param customerEmail
     */
    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    /**
     *
     * @return
     */
    public String getCustomerImage() {
        return customerImage;
    }

    /**
     *
     * @param customerImage
     */
    public void setCustomerImage(String customerImage) {
        this.customerImage = customerImage;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerId=" + customerId + ", customerFullname=" + customerFullname + ", customerAddress=" + customerAddress + ", customerPhone=" + customerPhone + ", customerEmail=" + customerEmail + ", customerImage=" + customerImage + ", userId=" + userId + '}';
    }
    
}
