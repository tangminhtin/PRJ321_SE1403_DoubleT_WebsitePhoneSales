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
public class SelfieCamera implements Serializable {
    private int selfieCameraId;
    private String selfieCameraResolution;
    private String selfieCameraFeatures;
    private String selfieCameraVideo;

    /**
     *
     */
    public SelfieCamera() {
    }

    /**
     *
     * @param selfieCameraId
     * @param selfieCameraResolution
     * @param selfieCameraFeatures
     * @param selfieCameraVideo
     */
    public SelfieCamera(int selfieCameraId, String selfieCameraResolution, String selfieCameraFeatures, String selfieCameraVideo) {
        this.selfieCameraId = selfieCameraId;
        this.selfieCameraResolution = selfieCameraResolution;
        this.selfieCameraFeatures = selfieCameraFeatures;
        this.selfieCameraVideo = selfieCameraVideo;
    }

    /**
     *
     * @return
     */
    public int getSelfieCameraId() {
        return selfieCameraId;
    }

    /**
     *
     * @param selfieCameraId
     */
    public void setSelfieCameraId(int selfieCameraId) {
        this.selfieCameraId = selfieCameraId;
    }

    /**
     *
     * @return
     */
    public String getSelfieCameraResolution() {
        return selfieCameraResolution;
    }

    /**
     *
     * @param selfieCameraResolution
     */
    public void setSelfieCameraResolution(String selfieCameraResolution) {
        this.selfieCameraResolution = selfieCameraResolution;
    }

    /**
     *
     * @return
     */
    public String getSelfieCameraFeatures() {
        return selfieCameraFeatures;
    }

    /**
     *
     * @param selfieCameraFeatures
     */
    public void setSelfieCameraFeatures(String selfieCameraFeatures) {
        this.selfieCameraFeatures = selfieCameraFeatures;
    }

    /**
     *
     * @return
     */
    public String getSelfieCameraVideo() {
        return selfieCameraVideo;
    }

    /**
     *
     * @param selfieCameraVideo
     */
    public void setSelfieCameraVideo(String selfieCameraVideo) {
        this.selfieCameraVideo = selfieCameraVideo;
    }

    @Override
    public String toString() {
        return "SelfieCamera{" + "selfieCameraId=" + selfieCameraId + ", selfieCameraResolution=" + selfieCameraResolution + ", selfieCameraFeatures=" + selfieCameraFeatures + ", selfieCameraVideo=" + selfieCameraVideo + '}';
    }
    
}
