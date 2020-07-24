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
public class PhoneDetail implements Serializable {
    private int phoneDetailId;
    private String phoneDetailImage;
    private String phoneDetailDescription;
    private String phoneDetailVideo;
    private String phoneDetailSpecialFeatures;
    private int displayId;
    private int bodyId;
    private int platformId;
    private int mainCameraId;
    private int selfieCameraId;
    private int storageId;
    private int batteryId;
    private int connectionId;
    private int commentId;

    /**
     *
     */
    public PhoneDetail() {
    }

    /**
     *
     * @param phoneDetailId
     * @param phoneDetailImage
     * @param phoneDetailDescription
     * @param phoneDetailVideo
     * @param phoneDetailSpecialFeatures
     * @param displayId
     * @param bodyId
     * @param platformId
     * @param mainCameraId
     * @param selfieCameraId
     * @param storageId
     * @param batteryId
     * @param connectionId
     * @param commentId
     */
    public PhoneDetail(int phoneDetailId, String phoneDetailImage, String phoneDetailDescription, String phoneDetailVideo, String phoneDetailSpecialFeatures, int displayId, int bodyId, int platformId, int mainCameraId, int selfieCameraId, int storageId, int batteryId, int connectionId, int commentId) {
        this.phoneDetailId = phoneDetailId;
        this.phoneDetailImage = phoneDetailImage;
        this.phoneDetailDescription = phoneDetailDescription;
        this.phoneDetailVideo = phoneDetailVideo;
        this.phoneDetailSpecialFeatures = phoneDetailSpecialFeatures;
        this.displayId = displayId;
        this.bodyId = bodyId;
        this.platformId = platformId;
        this.mainCameraId = mainCameraId;
        this.selfieCameraId = selfieCameraId;
        this.storageId = storageId;
        this.batteryId = batteryId;
        this.connectionId = connectionId;
        this.commentId = commentId;
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

    /**
     *
     * @return
     */
    public String getPhoneDetailImage() {
        return phoneDetailImage;
    }

    /**
     *
     * @param phoneDetailImage
     */
    public void setPhoneDetailImage(String phoneDetailImage) {
        this.phoneDetailImage = phoneDetailImage;
    }

    /**
     *
     * @return
     */
    public String getPhoneDetailDescription() {
        return phoneDetailDescription;
    }

    /**
     *
     * @param phoneDetailDescription
     */
    public void setPhoneDetailDescription(String phoneDetailDescription) {
        this.phoneDetailDescription = phoneDetailDescription;
    }

    /**
     *
     * @return
     */
    public String getPhoneDetailVideo() {
        return phoneDetailVideo;
    }

    /**
     *
     * @param phoneDetailVideo
     */
    public void setPhoneDetailVideo(String phoneDetailVideo) {
        this.phoneDetailVideo = phoneDetailVideo;
    }

    /**
     *
     * @return
     */
    public String getPhoneDetailSpecialFeatures() {
        return phoneDetailSpecialFeatures;
    }

    /**
     *
     * @param phoneDetailSpecialFeatures
     */
    public void setPhoneDetailSpecialFeatures(String phoneDetailSpecialFeatures) {
        this.phoneDetailSpecialFeatures = phoneDetailSpecialFeatures;
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
    public int getBodyId() {
        return bodyId;
    }

    /**
     *
     * @param bodyId
     */
    public void setBodyId(int bodyId) {
        this.bodyId = bodyId;
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
    public int getStorageId() {
        return storageId;
    }

    /**
     *
     * @param storageId
     */
    public void setStorageId(int storageId) {
        this.storageId = storageId;
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
    public int getConnectionId() {
        return connectionId;
    }

    /**
     *
     * @param connectionId
     */
    public void setConnectionId(int connectionId) {
        this.connectionId = connectionId;
    }

    /**
     *
     * @return
     */
    public int getCommentId() {
        return commentId;
    }

    /**
     *
     * @param commentId
     */
    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    @Override
    public String toString() {
        return "PhoneDetail{" + "phoneDetailId=" + phoneDetailId + ", phoneDetailImage=" + phoneDetailImage + ", phoneDetailDescription=" + phoneDetailDescription + ", phoneDetailVideo=" + phoneDetailVideo + ", phoneDetailSpecialFeatures=" + phoneDetailSpecialFeatures + ", displayId=" + displayId + ", bodyId=" + bodyId + ", platformId=" + platformId + ", mainCameraId=" + mainCameraId + ", selfieCameraId=" + selfieCameraId + ", storageId=" + storageId + ", batteryId=" + batteryId + ", connectionId=" + connectionId + ", commentId=" + commentId + '}';
    }
    
}
