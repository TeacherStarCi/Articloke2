/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Respiratory.Paper;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author tucuo
 */
public class PaperDTO implements Serializable{
    private String ID;
    private String title;
    private String topic;
    private String description;
    private String content;
    private Date createdDate;
    private Date modifiedDate;
    private String username;
    private boolean status;

    @Override
    public String toString() {
        return "PaperDTO{" + "ID=" + ID + ", title=" + title + ", topic=" + topic + ", description=" + description + ", content=" + content + ", createdDate=" + createdDate + ", modifiedDate=" + modifiedDate + ", username=" + username + ", status=" + status + '}';
    }

    public PaperDTO() {
    }

    public PaperDTO(String ID, String title, String topic, String description, String content, Date createdDate, Date modifiedDate, String username, boolean status) {
        this.ID = ID;
        this.title = title;
        this.topic = topic;
        this.description = description;
        this.content = content;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
        this.username = username;
        this.status = status;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
    
}
