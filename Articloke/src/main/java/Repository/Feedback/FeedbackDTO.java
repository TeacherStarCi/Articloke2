
package Repository.Feedback;

import java.io.Serializable;

import java.sql.Timestamp;

public class FeedbackDTO implements Serializable{
    private String ID;
    private String username;
    private String feedback;
    private Timestamp feedbackDate;

    public FeedbackDTO() {
    }

    public FeedbackDTO(String ID, String username, String feedback, Timestamp feedbackDate) {
        this.ID = ID;
        this.username = username;
        this.feedback = feedback;
        this.feedbackDate = feedbackDate;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Timestamp getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(Timestamp feedbackDate) {
        this.feedbackDate = feedbackDate;
    }
    
}
