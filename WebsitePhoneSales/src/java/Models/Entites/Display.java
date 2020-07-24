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
public class Display implements Serializable {
    private int displayId;
    private String displayType;
    private String displaySize;
    private String displayResolution;
    private String displayProtection;

    /**
     *
     */
    public Display() {
    }

    /**
     *
     * @param displayId
     * @param displayType
     * @param displaySize
     * @param displayResolution
     * @param displayProtection
     */
    public Display(int displayId, String displayType, String displaySize, String displayResolution, String displayProtection) {
        this.displayId = displayId;
        this.displayType = displayType;
        this.displaySize = displaySize;
        this.displayResolution = displayResolution;
        this.displayProtection = displayProtection;
    }

    /**
     *
     * @return
     */
    public int getDisplayId() {
        return displayId;
    }

    /**
     *
     * @param displayId
     */
    public void setDisplayId(int displayId) {
        this.displayId = displayId;
    }

    /**
     *
     * @return
     */
    public String getDisplayType() {
        return displayType;
    }

    /**
     *
     * @param displayType
     */
    public void setDisplayType(String displayType) {
        this.displayType = displayType;
    }

    /**
     *
     * @return
     */
    public String getDisplaySize() {
        return displaySize;
    }

    /**
     *
     * @param displaySize
     */
    public void setDisplaySize(String displaySize) {
        this.displaySize = displaySize;
    }

    /**
     *
     * @return
     */
    public String getDisplayResolution() {
        return displayResolution;
    }

    /**
     *
     * @param displayResolution
     */
    public void setDisplayResolution(String displayResolution) {
        this.displayResolution = displayResolution;
    }

    /**
     *
     * @return
     */
    public String getDisplayProtection() {
        return displayProtection;
    }

    /**
     *
     * @param displayProtection
     */
    public void setDisplayProtection(String displayProtection) {
        this.displayProtection = displayProtection;
    }

    @Override
    public String toString() {
        return "Display{" + "displayId=" + displayId + ", displayType=" + displayType + ", displaySize=" + displaySize + ", displayResolution=" + displayResolution + ", displayProtection=" + displayProtection + '}';
    }
    
}
