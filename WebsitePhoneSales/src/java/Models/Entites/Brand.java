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
public class Brand implements Serializable {

    private int brandId;
    private String brandName;
    private String brandImage;

    /**
     *
     */
    public Brand() {
    }

    /**
     *
     * @param brandId
     * @param brandName
     * @param brandImage
     */
    public Brand(int brandId, String brandName, String brandImage) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.brandImage = brandImage;
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
     * @param brandId
     */
    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    /**
     *
     * @return
     */
    public String getBrandName() {
        return brandName;
    }

    /**
     *
     * @param brandName
     */
    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    /**
     *
     * @return
     */
    public String getBrandImage() {
        return brandImage;
    }

    /**
     *
     * @param brandImage
     */
    public void setBrandImage(String brandImage) {
        this.brandImage = brandImage;
    }

    @Override
    public String toString() {
        return "Brand{" + "brandId=" + brandId + ", brandName=" + brandName + ", brandImage=" + brandImage + '}';
    }

}
