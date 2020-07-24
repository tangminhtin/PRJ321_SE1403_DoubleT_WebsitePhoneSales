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
public class Battery implements Serializable{
    private int batteryId;
    private int batteryCapacity;
    private String batteryType;
    private String batteryTechnology;

    /**
     *
     */
    public Battery() {
    }

    /**
     *
     * @param batteryId
     * @param batteryCapacity
     * @param batteryType
     * @param batteryTechnology
     */
    public Battery(int batteryId, int batteryCapacity, String batteryType, String batteryTechnology) {
        this.batteryId = batteryId;
        this.batteryCapacity = batteryCapacity;
        this.batteryType = batteryType;
        this.batteryTechnology = batteryTechnology;
    }

    /**
     *
     * @return
     */
    public int getBatteryId() {
        return batteryId;
    }

    /**
     *
     * @param batteryId
     */
    public void setBatteryId(int batteryId) {
        this.batteryId = batteryId;
    }

    /**
     *
     * @return
     */
    public int getBatteryCapacity() {
        return batteryCapacity;
    }

    /**
     *
     * @param batteryCapacity
     */
    public void setBatteryCapacity(int batteryCapacity) {
        this.batteryCapacity = batteryCapacity;
    }

    /**
     *
     * @return
     */
    public String getBatteryType() {
        return batteryType;
    }

    /**
     *
     * @param batteryType
     */
    public void setBatteryType(String batteryType) {
        this.batteryType = batteryType;
    }

    /**
     *
     * @return
     */
    public String getBatteryTechnology() {
        return batteryTechnology;
    }

    /**
     *
     * @param batteryTechnology
     */
    public void setBatteryTechnology(String batteryTechnology) {
        this.batteryTechnology = batteryTechnology;
    }

    @Override
    public String toString() {
        return "Battery{" + "batteryId=" + batteryId + ", batteryCapacity=" + batteryCapacity + ", batteryType=" + batteryType + ", batteryTechnology=" + batteryTechnology + '}';
    }
    
}
