package Respiratory.Article;

import java.io.Serializable;
import java.sql.Date;

public class ArticleDTO implements Serializable {

    private String ID;
    private String title;
    private String author;
    private String topic;
    private String image;
    private String linkDownloadPDF;
    private String linkDownloadPDFDemo;
    private String description;
    private Date releaseDate;
    private String permission;
    private String organzation;
    private float price;
    
    public ArticleDTO() {
    }

    public ArticleDTO(String ID, String title, String author, String topic, String image, String linkDownloadPDF, String linkDownloadPDFDemo, String description, Date releaseDate, String permission, String organzation, float price) {
        this.ID = ID;
        this.title = title;
        this.author = author;
        this.topic = topic;
        this.image = image;
        this.linkDownloadPDF = linkDownloadPDF;
        this.linkDownloadPDFDemo = linkDownloadPDFDemo;
        this.description = description;
        this.releaseDate = releaseDate;
        this.permission = permission;
        this.organzation = organzation;
        this.price = price;
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLinkDownloadPDF() {
        return linkDownloadPDF;
    }

    public void setLinkDownloadPDF(String linkDownloadPDF) {
        this.linkDownloadPDF = linkDownloadPDF;
    }

    public String getLinkDownloadPDFDemo() {
        return linkDownloadPDFDemo;
    }

    public void setLinkDownloadPDFDemo(String linkDownloadPDFDemo) {
        this.linkDownloadPDFDemo = linkDownloadPDFDemo;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
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

    
}
