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
public class Employee implements Serializable{
    private int employeeId;
    private String employeeFullname;
    private String employeeAddress;
    private String employeePhone;
    private String employeeEmail;
    private String employeeImage;
    private int userId;

    /**
     *
     */
    public Employee() {
    }

    /**
     *
     * @param employeeId
     * @param employeeFullname
     * @param employeeAddress
     * @param employeePhone
     * @param employeeEmail
     * @param employeeImage
     * @param userId
     */
    public Employee(int employeeId, String employeeFullname, String employeeAddress, String employeePhone, String employeeEmail, String employeeImage, int userId) {
        this.employeeId = employeeId;
        this.employeeFullname = employeeFullname;
        this.employeeAddress = employeeAddress;
        this.employeePhone = employeePhone;
        this.employeeEmail = employeeEmail;
        this.employeeImage = employeeImage;
        this.userId = userId;
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
    public String getEmployeeFullname() {
        return employeeFullname;
    }

    /**
     *
     * @param employeeFullname
     */
    public void setEmployeeFullname(String employeeFullname) {
        this.employeeFullname = employeeFullname;
    }

    /**
     *
     * @return
     */
    public String getEmployeeAddress() {
        return employeeAddress;
    }

    /**
     *
     * @param employeeAddress
     */
    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    /**
     *
     * @return
     */
    public String getEmployeePhone() {
        return employeePhone;
    }

    /**
     *
     * @param employeePhone
     */
    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    /**
     *
     * @return
     */
    public String getEmployeeEmail() {
        return employeeEmail;
    }

    /**
     *
     * @param employeeEmail
     */
    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    /**
     *
     * @return
     */
    public String getEmployeeImage() {
        return employeeImage;
    }

    /**
     *
     * @param employeeImage
     */
    public void setEmployeeImage(String employeeImage) {
        this.employeeImage = employeeImage;
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

    @Override
    public String toString() {
        return "Employee{" + "employeeId=" + employeeId + ", employeeFullname=" + employeeFullname + ", employeeAddress=" + employeeAddress + ", employeePhone=" + employeePhone + ", employeeEmail=" + employeeEmail + ", employeeImage=" + employeeImage + ", userId=" + userId + '}';
    }
    
}
