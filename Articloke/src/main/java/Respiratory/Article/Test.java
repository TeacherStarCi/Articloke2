
package Respiratory.Article;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) 
            throws SQLException, ClassNotFoundException{
    
        List<ArticleDTO> star = SearchArticleUtils.keywordFilter("");
        List<ArticleDTO> filt1 = ArticleDAO.getArticles_FromSearchArticle("", "", "", "All", "", "All", "Published Date");
      for (ArticleDTO acc : filt1){
          System.out.println(acc);
    }
}
}
    
