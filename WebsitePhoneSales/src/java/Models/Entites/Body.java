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
public class Body implements Serializable {
    private int bodyId;
    private String bodyDimensions;
    private String bodyWeight;
    private String bodyBuild;

    /**
     *
     */
    public Body() {
    }

    /**
     *
     * @param bodyId
     * @param bodyDimensions
     * @param bodyWeight
     * @param bodyBuild
     */
    public Body(int bodyId, String bodyDimensions, String bodyWeight, String bodyBuild) {
        this.bodyId = bodyId;
        this.bodyDimensions = bodyDimensions;
        this.bodyWeight = bodyWeight;
        this.bodyBuild = bodyBuild;
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
    public String getBodyDimensions() {
        return bodyDimensions;
    }

    /**
     *
     * @param bodyDimensions
     */
    public void setBodyDimensions(String bodyDimensions) {
        this.bodyDimensions = bodyDimensions;
    }

    /**
     *
     * @return
     */
    public String getBodyWeight() {
        return bodyWeight;
    }

    /**
     *
     * @param bodyWeight
     */
    public void setBodyWeight(String bodyWeight) {
        this.bodyWeight = bodyWeight;
    }

    /**
     *
     * @return
     */
    public String getBodyBuild() {
        return bodyBuild;
    }

    /**
     *
     * @param bodyBuild
     */
    public void setBodyBuild(String bodyBuild) {
        this.bodyBuild = bodyBuild;
    }

    @Override
    public String toString() {
        return "Body{" + "bodyId=" + bodyId + ", bodyDimensions=" + bodyDimensions + ", bodyWeight=" + bodyWeight + ", bodyBuild=" + bodyBuild + '}';
    }
    
}
