
package Respiratory.Article;

import Respiratiory.Interaction.InteractionDAO;
import java.sql.SQLException;

public class Test {
    public static void main(String[] args) 
            throws SQLException, ClassNotFoundException{
    
        
            for(ArticleDTO acc: ArticleDAO.getArticlesSearch("star", "", "", "All", "", "All", "None")){
                System.out.print(acc.getTotalReaction());
            }
        
    }
    
}
    
