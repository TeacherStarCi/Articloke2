package Respiratory.Paper;

import Respiratory.User.UserDTO;
import Support.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaperDAO implements Serializable {

    public static List<PaperDTO> getPapersUsername(String username_) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Paper WHERE username = ?";
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        List<PaperDTO> papers = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, username_);
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    String title = res.getString("title");
                    String topic = res.getString("topic");
                    String description = res.getString("description");
                    String content = res.getString("content");
                    Date createdDate = res.getDate("createdDate");
                    Date modifiedDate = res.getDate("modifiedDate");
                    String username = res.getString("username");
                    boolean status = res.getBoolean("status");
                    PaperDTO paper = new PaperDTO(ID, title, topic, description, content, createdDate, modifiedDate, username, status);
                    if (papers == null){
                        papers = new ArrayList<>();
                    }    
                    papers.add(paper);
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
        return papers;

    }
}
