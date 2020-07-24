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
public class Shipper implements Serializable {
    private int shipperId;
    private String shipperName;
    private String shipperPhone;

    /**
     *
     */
    public Shipper() {
    }

    /**
     *
     * @param shipperId
     * @param shipperName
     * @param shipperPhone
     */
    public Shipper(int shipperId, String shipperName, String shipperPhone) {
        this.shipperId = shipperId;
        this.shipperName = shipperName;
        this.shipperPhone = shipperPhone;
    }

    /**
     *
     * @return
     */
    public int getShipperId() {
        return shipperId;
    }

    /**
     *
     * @param shipperId
     */
    public void setShipperId(int shipperId) {
        this.shipperId = shipperId;
    }

    /**
     *
     * @return
     */
    public String getShipperName() {
        return shipperName;
    }

    /**
     *
     * @param shipperName
     */
    public void setShipperName(String shipperName) {
        this.shipperName = shipperName;
    }

    /**
     *
     * @return
     */
    public String getShipperPhone() {
        return shipperPhone;
    }

    /**
     *
     * @param shipperPhone
     */
    public void setShipperPhone(String shipperPhone) {
        this.shipperPhone = shipperPhone;
    }

    @Override
    public String toString() {
        return "Shipper{" + "shipperId=" + shipperId + ", shipperName=" + shipperName + ", shipperPhone=" + shipperPhone + '}';
    }
    
}
