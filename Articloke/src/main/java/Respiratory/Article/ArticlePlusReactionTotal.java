package Respiratory.Article;

import java.io.Serializable;

public class ArticlePlusReactionTotal implements Serializable {
    private ArticleDTO article;
    private int reationTotal;

    public ArticlePlusReactionTotal() {
    }

    public ArticlePlusReactionTotal(ArticleDTO article, int reationTotal) {
        this.article = article;
        this.reationTotal = reationTotal;
    }

    public ArticleDTO getArticle() {
        return article;
    }

    public void setArticle(ArticleDTO article) {
        this.article = article;
    }

    public int getReationTotal() {
        return reationTotal;
    }

    public void setReationTotal(int reationTotal) {
        this.reationTotal = reationTotal;
    }
    
}
