package Repository.Article;

import java.sql.SQLException;

public class Test {

    public static void main(String[] args)
            throws SQLException, ClassNotFoundException {
        System.out.println(ArticleDAO.getArticlesUsernameLatestDate("starci"));
    }
}
