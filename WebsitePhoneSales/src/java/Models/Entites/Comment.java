/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author TangMinhTin - CE130438 - tintmce130438@fpt.edu.vn
 */
public class Comment implements Serializable {
    private int commentId;
    private String commentContent;
    private Date commentDate;
    private int customerId;

    /**
     *
     */
    public Comment() {
    }

    /**
     *
     * @param commentId
     * @param commentContent
     * @param commentDate
     * @param customerId
     */
    public Comment(int commentId, String commentContent, Date commentDate, int customerId) {
        this.commentId = commentId;
        this.commentContent = commentContent;
        this.commentDate = commentDate;
        this.customerId = customerId;
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

    /**
     *
     * @return
     */
    public String getCommentContent() {
        return commentContent;
    }

    /**
     *
     * @param commentContent
     */
    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    /**
     *
     * @return
     */
    public Date getCommentDate() {
        return commentDate;
    }

    /**
     *
     * @param commentDate
     */
    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    /**
     *
     * @return
     */
    public int getCustomerId() {
        return customerId;
    }

    /**
     *
     * @param customerId
     */
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentId=" + commentId + ", commentContent=" + commentContent + ", commentDate=" + commentDate + ", customerId=" + customerId + '}';
    }
    
}
