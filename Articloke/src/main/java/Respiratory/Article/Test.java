
package Respiratory.Article;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) 
            throws SQLException, ClassNotFoundException{
    
        for (ArticleDTO ar : ArticleDAO.getArticlesPublishedDate_FromLatestToOldest()){
            System.out.println(ar);
        }
    }
    
}
    
