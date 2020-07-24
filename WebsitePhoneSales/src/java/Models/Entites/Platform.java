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
public class Platform implements Serializable {
    private int platformId;
    private String platformOS;
    private String platformChipset;
    private String platformCPU;
    private String platformGPU;

    /**
     *
     */
    public Platform() {
    }

    /**
     *
     * @param platformId
     * @param platformOS
     * @param platformChipset
     * @param platformCPU
     * @param platformGPU
     */
    public Platform(int platformId, String platformOS, String platformChipset, String platformCPU, String platformGPU) {
        this.platformId = platformId;
        this.platformOS = platformOS;
        this.platformChipset = platformChipset;
        this.platformCPU = platformCPU;
        this.platformGPU = platformGPU;
    }

    /**
     *
     * @return
     */
    public int getPlatformId() {
        return platformId;
    }

    /**
     *
     * @param platformId
     */
    public void setPlatformId(int platformId) {
        this.platformId = platformId;
    }

    /**
     *
     * @return
     */
    public String getPlatformOS() {
        return platformOS;
    }

    /**
     *
     * @param platformOS
     */
    public void setPlatformOS(String platformOS) {
        this.platformOS = platformOS;
    }

    /**
     *
     * @return
     */
    public String getPlatformChipset() {
        return platformChipset;
    }

    /**
     *
     * @param platformChipset
     */
    public void setPlatformChipset(String platformChipset) {
        this.platformChipset = platformChipset;
    }

    /**
     *
     * @return
     */
    public String getPlatformCPU() {
        return platformCPU;
    }

    /**
     *
     * @param platformCPU
     */
    public void setPlatformCPU(String platformCPU) {
        this.platformCPU = platformCPU;
    }

    /**
     *
     * @return
     */
    public String getPlatformGPU() {
        return platformGPU;
    }

    /**
     *
     * @param platformGPU
     */
    public void setPlatformGPU(String platformGPU) {
        this.platformGPU = platformGPU;
    }

    @Override
    public String toString() {
        return "Platform{" + "platformId=" + platformId + ", platformOS=" + platformOS + ", platformChipset=" + platformChipset + ", platformCPU=" + platformCPU + ", platformGPU=" + platformGPU + '}';
    }
    
}
