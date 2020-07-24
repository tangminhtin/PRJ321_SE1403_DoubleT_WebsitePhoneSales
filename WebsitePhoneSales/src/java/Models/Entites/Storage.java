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
public class Storage implements Serializable {
    private int storageId;
    private int storageRAM;
    private int storageInternal;
    private int storageExternal;

    /**
     *
     */
    public Storage() {
    }

    /**
     *
     * @param storageId
     * @param storageRAM
     * @param storageInternal
     * @param storageExternal
     */
    public Storage(int storageId, int storageRAM, int storageInternal, int storageExternal) {
        this.storageId = storageId;
        this.storageRAM = storageRAM;
        this.storageInternal = storageInternal;
        this.storageExternal = storageExternal;
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
    public int getStorageRAM() {
        return storageRAM;
    }

    /**
     *
     * @param storageRAM
     */
    public void setStorageRAM(int storageRAM) {
        this.storageRAM = storageRAM;
    }

    /**
     *
     * @return
     */
    public int getStorageInternal() {
        return storageInternal;
    }

    /**
     *
     * @param storageInternal
     */
    public void setStorageInternal(int storageInternal) {
        this.storageInternal = storageInternal;
    }

    /**
     *
     * @return
     */
    public int getStorageExternal() {
        return storageExternal;
    }

    /**
     *
     * @param storageExternal
     */
    public void setStorageExternal(int storageExternal) {
        this.storageExternal = storageExternal;
    }

    @Override
    public String toString() {
        return "Storage{" + "storageId=" + storageId + ", storageRAM=" + storageRAM + ", storageInternal=" + storageInternal + ", storageExternal=" + storageExternal + '}';
    }
    
}
