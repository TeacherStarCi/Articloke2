
package Respiratory.Article;

import Respiratiory.Interaction.InteractionDAO;
import java.sql.SQLException;

public class Test {
    public static void main(String[] args) 
            throws SQLException, ClassNotFoundException{
    
        
            System.out.println(InteractionDAO.getTotalReaction("oclozz"));
        
    }
    
}
    
