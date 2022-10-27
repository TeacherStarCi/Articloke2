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

    public static List<ArticleDTO>
            getArticlesTitleAuthorTopicOrganization(String title_, String author_, String topic_, String organization_) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Article "
                + " WHERE Title LIKE ? AND Author LIKE ? AND Topic LIKE ? AND Organization LIKE ?";
        List<ArticleDTO> articles = null;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, "%" + title_ + "%");
                pre.setString(2, "%" + author_ + "%");
                pre.setString(3, "%" + topic_ + "%");
                pre.setString(4, "%" + organization_ + "%");
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    String title = res.getString("Title");
                    String author = res.getString("Author");
                    String topic = res.getString("Topic");
                    String image = res.getString("Image");
                    String linkDownloadPDF = res.getString("LinkDownloadPDF");
                    String linkDownloadPDFDemo = res.getString("LinkDownloadPDFDemo");
                    String description = res.getString("Description");
                    Date releaseDate = res.getDate("ReleaseDate");
                    String permission = res.getString("Permission");
                    String organization = res.getString("Organization");
                    int price = res.getInt("Price");
                
                    ArticleDTO article = new ArticleDTO(ID, title, author, topic, image, linkDownloadPDF, linkDownloadPDFDemo, description, releaseDate, permission, organization, price);
                    if (articles == null){
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
