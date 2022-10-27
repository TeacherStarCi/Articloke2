
package Repository.Feedback;

import Utils.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FeedbackDAO implements Serializable{
    public static boolean addFeedback(FeedbackDTO feedback) throws SQLException, ClassNotFoundException{
         String SQL = "INSERT INTO Feedback(ID, username, feedback, feedbackDate)"
                + " VALUES(?,?,?,?)";
        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, feedback.getID());
                pre.setString(2, feedback.getUsername());
                pre.setString(3, feedback.getFeedback());
                pre.setTimestamp(4, feedback.getFeedbackDate());
             
                int affectedRow = pre.executeUpdate();
                if (affectedRow > 0) {
                    flag = true;
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
        return flag;
    }
}
