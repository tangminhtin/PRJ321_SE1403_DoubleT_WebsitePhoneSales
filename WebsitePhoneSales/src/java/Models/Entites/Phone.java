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
    private int phoneStatus;

    /**
     *
     */
    public Phone() {
    }

    /**
     *
     * @param phoneId
     * @param phoneImage
     * @param phoneName
     * @param phoneDiscount
     * @param phonePrice
     * @param phoneShortDescription
     * @param brandId
     * @param phoneDetailId
     */
    public Phone(int phoneId, String phoneImage, String phoneName, double phoneDiscount, double phonePrice, String phoneShortDescription, int brandId, int phoneDetailId, int phoneStatus) {
        this.phoneId = phoneId;
        this.phoneImage = phoneImage;
        this.phoneName = phoneName;
        this.phoneDiscount = phoneDiscount;
        this.phonePrice = phonePrice;
        this.phoneShortDescription = phoneShortDescription;
        this.brandId = brandId;
        this.phoneDetailId = phoneDetailId;
        this.phoneStatus = phoneStatus;
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
    public String getPhoneImage() {
        return phoneImage;
    }

    /**
     *
     * @param phoneImage
     */
    public void setPhoneImage(String phoneImage) {
        this.phoneImage = phoneImage;
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
    public double getPhoneDiscount() {
        return phoneDiscount;
    }

    /**
     *
     * @param phoneDiscount
     */
    public void setPhoneDiscount(double phoneDiscount) {
        this.phoneDiscount = phoneDiscount;
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
    public String getPhoneShortDescription() {
        return phoneShortDescription;
    }

    /**
     *
     * @param phoneShortDescription
     */
    public void setPhoneShortDescription(String phoneShortDescription) {
        this.phoneShortDescription = phoneShortDescription;
    }

    /**
     *
     * @return
     */
    public int getBrandId() {
        return brandId;
    }

    /**
     *
     * @param branchId
     */
    public void setBranchId(int branchId) {
        this.brandId = brandId;
    }

    /**
     *
     * @return
     */
    public int getPhoneDetailId() {
        return phoneDetailId;
    }

    /**
     *
     * @param phoneDetailId
     */
    public void setPhoneDetailId(int phoneDetailId) {
        this.phoneDetailId = phoneDetailId;
    }

    public int getPhoneStatus() {
        return phoneStatus;
    }

    public void setPhoneStatus(int phoneStatus) {
        this.phoneStatus = phoneStatus;
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
