package Respiratory.Article;

import java.io.Serializable;
import java.sql.Date;

public class ArticleDTO implements Serializable {

    private String ID;
    private String picture;
    private String title;
    private String username;
    private String topic;
    private String description;
    
    private String link;
    private String linkDemo;
    private Date publishedDate;
    private String permission;
    private String organzation;
    private float price;
    
    private boolean status;
    public ArticleDTO() {
    }

    public ArticleDTO(String ID, String picture, String title, String username, String topic, String description, String link, String linkDemo, Date publishedDate, String permission, String organzation, float price, boolean status) {
        this.ID = ID;
        this.picture = picture;
        this.title = title;
        this.username = username;
        this.topic = topic;
        this.description = description;
        this.link = link;
        this.linkDemo = linkDemo;
        this.publishedDate = publishedDate;
        this.permission = permission;
        this.organzation = organzation;
        this.price = price;
        this.status = status;
    }

    @Override
    public String toString() {
        return "ArticleDTO{" + "ID=" + ID + ", picture=" + picture + ", title=" + title + ", username=" + username + ", topic=" + topic + ", description=" + description + ", link=" + link + ", linkDemo=" + linkDemo + ", publishedDate=" + publishedDate + ", permission=" + permission + ", organzation=" + organzation + ", price=" + price + ", status=" + status + '}';
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getLinkDemo() {
        return linkDemo;
    }

    public void setLinkDemo(String linkDemo) {
        this.linkDemo = linkDemo;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public String getOrganzation() {
        return organzation;
    }

    public void setOrganzation(String organzation) {
        this.organzation = organzation;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    
    
}
