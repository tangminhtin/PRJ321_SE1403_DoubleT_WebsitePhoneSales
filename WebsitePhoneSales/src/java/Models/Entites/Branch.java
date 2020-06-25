/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

/**
 *
 * @author TangMinhTin - CE130438 - tintmce130438@fpt.edu.vn
 */
public class Branch {
    private int branchId;
    private String branchName;
    private String branchImage;

    public Branch() {
    }

    public Branch(int branchId, String branchName, String branchImage) {
        this.branchId = branchId;
        this.branchName = branchName;
        this.branchImage = branchImage;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getBranchImage() {
        return branchImage;
    }

    public void setBranchImage(String branchImage) {
        this.branchImage = branchImage;
    }

    @Override
    public String toString() {
        return "Branch{" + "branchId=" + branchId + ", branchName=" + branchName + ", branchImage=" + branchImage + '}';
    }
    
}
