package Respiratory.Article;

import Support.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArticleDAO implements Serializable {

    public static List<ArticleDTO> getArticles_FromSearchArticle(String keyword, String title, String author, String topic, String organization, String permission, String sortedBy)
            throws SQLException, ClassNotFoundException {

        List<ArticleDTO> list = SearchArticleUtils.keywordFilter(keyword);
        List<ArticleDTO> list2 = SearchArticleUtils.titleAuthorFiler(title, author, list);
        List<ArticleDTO> list3 = SearchArticleUtils.topicFilter(topic, list2);
        List<ArticleDTO> list4 = SearchArticleUtils.permissionFilter(organization, permission, list3);
        List<ArticleDTO> list5 = SearchArticleUtils.sortedByFilter(sortedBy, list4);
        return list5;

    }

    public static List<ArticleDTO> getArticlesPublishedDate_FromLatestToOldest() throws SQLException, ClassNotFoundException {
        String SQL = "SELECT ar.ID, picture, title, username, topic, description, link, linkDemo, publishedDate, permission, organization, price, ar.status\n"
                + "FROM Paper pp inner join Article ar ON pp.ID = ar.ID\n"
                + "WHERE permission = 'public'\n"
                + "ORDER BY publishedDate DESC";
        List<ArticleDTO> articles = null;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    String picture = res.getString("picture");
                    String title = res.getString("title");
                    String username = res.getString("username");
                    String topic = res.getString("topic");
                    String description = res.getString("description");

                    String link = res.getString("link");
                    String linkDemo = res.getString("linkDemo");
                    Date publishedDate = res.getDate("publishedDate");
                    String permission = res.getString("permission");
                    String organzation = res.getString("organization");
                    float price = res.getFloat("price");
                    boolean status = res.getBoolean("status");

                    ArticleDTO article = new ArticleDTO(ID, picture, title, username, topic, description, link, linkDemo, publishedDate, permission, organzation, price, status);
                    if (articles == null) {
                        articles = new ArrayList<>();
                    }
                    articles.add(article);
                }
            }
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return articles;
    }

 

}
