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

    public Employee() {
    }

    public Employee(int employeeId, String employeeFullname, String employeeAddress, String employeePhone, String employeeEmail, String employeeImage, int userId) {
        this.employeeId = employeeId;
        this.employeeFullname = employeeFullname;
        this.employeeAddress = employeeAddress;
        this.employeePhone = employeePhone;
        this.employeeEmail = employeeEmail;
        this.employeeImage = employeeImage;
        this.userId = userId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeFullname() {
        return employeeFullname;
    }

    public void setEmployeeFullname(String employeeFullname) {
        this.employeeFullname = employeeFullname;
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeImage() {
        return employeeImage;
    }

    public void setEmployeeImage(String employeeImage) {
        this.employeeImage = employeeImage;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Employee{" + "employeeId=" + employeeId + ", employeeFullname=" + employeeFullname + ", employeeAddress=" + employeeAddress + ", employeePhone=" + employeePhone + ", employeeEmail=" + employeeEmail + ", employeeImage=" + employeeImage + ", userId=" + userId + '}';
    }
    
}
