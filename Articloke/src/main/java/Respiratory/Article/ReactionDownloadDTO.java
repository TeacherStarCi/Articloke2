package Respiratory.Article;

import java.io.Serializable;

public class ReactionDownloadDTO implements Serializable {

    private int reactionTotal;
    private int downloadTotal;

    public ReactionDownloadDTO(int reactionTotal, int downloadTotal) {
        this.reactionTotal = reactionTotal;
        this.downloadTotal = downloadTotal;
    }

    public int getReactionTotal() {
        return reactionTotal;
    }

    public void setReactionTotal(int reactionTotal) {
        this.reactionTotal = reactionTotal;
    }

    public int getDownloadTotal() {
        return downloadTotal;
    }

    public void setDownloadTotal(int downloadTotal) {
        this.downloadTotal = downloadTotal;
    }

    public ReactionDownloadDTO() {
    }

}
