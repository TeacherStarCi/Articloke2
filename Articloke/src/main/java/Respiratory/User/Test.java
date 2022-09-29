
package Respiratory.User;

import java.sql.Date;
import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Date date=new Date(2000, 11, 1);
        UserDTO user = new UserDTO("javawebthatde", "cuongnvtse160875@fpt.edu.vn", "cuongdeptrai", "StarCi", "da Philosopher", "Image/StarCidaPhilosopher.png", "Reviewer", date, "", "FPT", null, true);
        //UserDAO.addUser(usernew);
        System.out.println(UserDAO.addUser(user));
        //System.out.println(UserDAO.updateUser("aaa", usernew));
        //System.out.println(UserDAO.removeUser("aaa"));     
    }
}
