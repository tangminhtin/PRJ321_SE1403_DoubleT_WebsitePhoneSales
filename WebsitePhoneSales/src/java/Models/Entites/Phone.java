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
public class Phone implements Serializable, Comparable<Phone> {
    private int phoneId;
    private String phoneImage;
    private String phoneName;
    private double phoneDiscount;
    private double phonePrice;
    private String phoneShortDescription;
    private int brandId;
    private int phoneDetailId;

    public Phone() {
    }

    public Phone(int phoneId, String phoneImage, String phoneName, double phoneDiscount, double phonePrice, String phoneShortDescription, int brandId, int phoneDetailId) {
        this.phoneId = phoneId;
        this.phoneImage = phoneImage;
        this.phoneName = phoneName;
        this.phoneDiscount = phoneDiscount;
        this.phonePrice = phonePrice;
        this.phoneShortDescription = phoneShortDescription;
        this.brandId = brandId;
        this.phoneDetailId = phoneDetailId;
    }

    public int getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(int phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneImage() {
        return phoneImage;
    }

    public void setPhoneImage(String phoneImage) {
        this.phoneImage = phoneImage;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    public double getPhoneDiscount() {
        return phoneDiscount;
    }

    public void setPhoneDiscount(double phoneDiscount) {
        this.phoneDiscount = phoneDiscount;
    }

    public double getPhonePrice() {
        return phonePrice;
    }

    public void setPhonePrice(double phonePrice) {
        this.phonePrice = phonePrice;
    }

    public String getPhoneShortDescription() {
        return phoneShortDescription;
    }

    public void setPhoneShortDescription(String phoneShortDescription) {
        this.phoneShortDescription = phoneShortDescription;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBranchId(int branchId) {
        this.brandId = brandId;
    }

    public int getPhoneDetailId() {
        return phoneDetailId;
    }

    public void setPhoneDetailId(int phoneDetailId) {
        this.phoneDetailId = phoneDetailId;
    }

    @Override
    public String toString() {
        return "Phone{" + "phoneId=" + phoneId + ", phoneImage=" + phoneImage + ", phoneName=" + phoneName + ", phoneDiscount=" + phoneDiscount + ", phonePrice=" + phonePrice + ", phoneShortDescription=" + phoneShortDescription + ", branchId=" + brandId + ", phoneDetailId=" + phoneDetailId + '}';
    }

    @Override
    public int compareTo(Phone o) {
        return (int) (this.getPhonePrice() - o.getPhonePrice());
    }
    
}
