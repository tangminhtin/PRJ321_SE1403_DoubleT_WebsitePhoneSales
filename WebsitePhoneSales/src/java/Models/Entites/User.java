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
public class User implements Serializable {
    private int userId;
    private String userName;
    private String userPassword;
    private String userRole;
    private int userStatus;

    /**
     *
     */
    public User() {
    }

    /**
     *
     * @param userId
     * @param userName
     * @param userPassword
     * @param userRole
     */
    public User(int userId, String userName, String userPassword, String userRole, int userStatus) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userRole = userRole;
        this.userStatus = userStatus;
    }

    /**
     *
     * @return
     */
    public int getUserId() {
        return userId;
    }

    /**
     *
     * @param userId
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     *
     * @return
     */
    public String getUserName() {
        return userName;
    }

    /**
     *
     * @param userName
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     *
     * @return
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     *
     * @param userPassword
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     *
     * @return
     */
    public String getUserRole() {
        return userRole;
    }

    /**
     *
     * @param userRole
     */
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public int getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(int userStatus) {
        this.userStatus = userStatus;
    }
    

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", userRole=" + userRole + '}';
    }
    
}
