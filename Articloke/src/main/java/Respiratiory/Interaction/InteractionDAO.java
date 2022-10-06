package Respiratiory.Interaction;

import Support.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InteractionDAO implements Serializable {

    public static int getTotalReaction(String username) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT COUNT(reaction) as totalCount from Interaction it inner join Article ar \n"
                + "ON it.ID = ar.ID inner join Paper pp on ar.ID = pp.ID \n"
                + "WHERE pp.username = ? \n"
                + "GROUP BY reaction;";
        Connection con = null;
        PreparedStatement pre = null;
      ResultSet res = null;
      int result = 0;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, username);
                res = pre.executeQuery();
                while (res.next()) {
                    result = res.getInt("totalCount");

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
        return result;
    }

}
