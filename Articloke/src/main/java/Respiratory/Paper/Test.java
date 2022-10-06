
package Respiratory.Paper;

import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Test {
    public static void main(String[] args) {
          try {
            List<PaperDTO> list = PaperDAO.getPapersUsernameSortedByModifiedDate_FromLastedToOldest("starci");
            for (PaperDTO p:list){
                System.out.println(p);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
