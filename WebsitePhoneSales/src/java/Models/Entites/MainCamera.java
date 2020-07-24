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
public class MainCamera implements Serializable {
    private int mainCameraId;
    private String mainCameraResolution;
    private String mainCameraFeatures;
    private String mainCameraVideo;

    /**
     *
     */
    public MainCamera() {
    }

    /**
     *
     * @param mainCameraId
     * @param mainCameraResolution
     * @param mainCameraFeatures
     * @param mainCameraVideo
     */
    public MainCamera(int mainCameraId, String mainCameraResolution, String mainCameraFeatures, String mainCameraVideo) {
        this.mainCameraId = mainCameraId;
        this.mainCameraResolution = mainCameraResolution;
        this.mainCameraFeatures = mainCameraFeatures;
        this.mainCameraVideo = mainCameraVideo;
    }

    /**
     *
     * @return
     */
    public int getMainCameraId() {
        return mainCameraId;
    }

    /**
     *
     * @param mainCameraId
     */
    public void setMainCameraId(int mainCameraId) {
        this.mainCameraId = mainCameraId;
    }

    /**
     *
     * @return
     */
    public String getMainCameraResolution() {
        return mainCameraResolution;
    }

    /**
     *
     * @param mainCameraResolution
     */
    public void setMainCameraResolution(String mainCameraResolution) {
        this.mainCameraResolution = mainCameraResolution;
    }

    /**
     *
     * @return
     */
    public String getMainCameraFeatures() {
        return mainCameraFeatures;
    }

    /**
     *
     * @param mainCameraFeatures
     */
    public void setMainCameraFeatures(String mainCameraFeatures) {
        this.mainCameraFeatures = mainCameraFeatures;
    }

    /**
     *
     * @return
     */
    public String getMainCameraVideo() {
        return mainCameraVideo;
    }

    /**
     *
     * @param mainCameraVideo
     */
    public void setMainCameraVideo(String mainCameraVideo) {
        this.mainCameraVideo = mainCameraVideo;
    }

    @Override
    public String toString() {
        return "MainCamera{" + "mainCameraId=" + mainCameraId + ", mainCameraResolution=" + mainCameraResolution + ", mainCameraFeatures=" + mainCameraFeatures + ", mainCameraVideo=" + mainCameraVideo + '}';
    }
    
}
