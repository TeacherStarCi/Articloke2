
package Respiratory.Article;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(ArticleDAO.getArticlesTitleAuthorTopicOrganization("1", "", "", "").get(0).getDescription());
    }
}
