package Repository.Paper;

import Utils.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PaperDAO implements Serializable {

    private static List<String> getIDs() throws SQLException, ClassNotFoundException {
        String SQL = "SELECT ID FROM Paper";

        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        List<String> IDs = new ArrayList<>();
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    IDs.add(ID);
                    IDs.add(ID);
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
        return IDs;
    }

    public static String getNextID() throws SQLException, ClassNotFoundException {
        String nextID;
        List<String> IDs = getIDs();
        if (IDs.isEmpty()) {
            return "AR001";
        }
        List<Integer> numbers = new ArrayList<>();
        for (String ID : IDs) {
            int number = Integer.parseInt(ID.substring(2));
            numbers.add(number);
        }
        int count = 1;
        boolean allowContinue;
        do {
            allowContinue = false;
            for (int number : numbers) {
                if (count == number) {
                    count++;
                    allowContinue = true;
                }
            }

        } while (allowContinue);
        nextID = "AR" + count;
        return nextID;

    }

    public static List<PaperDTO> getPapersUsernameLastedModifiedDate(String username_) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Paper WHERE username = ? ORDER BY modifiedDate DESC";

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
                    String picture = res.getString("picture");
                    String topic = res.getString("topic");
                    String description = res.getString("description");
                    String content = res.getString("content");
                    Timestamp createdDate = res.getTimestamp("createdDate");
                    Timestamp modifiedDate = res.getTimestamp("modifiedDate");
                    String username = res.getString("username");
                    String publishedStatus = res.getString("publishedStatus");

                    boolean status = res.getBoolean("status");

                    PaperDTO paper = new PaperDTO(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status);
                    if (papers == null) {
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

    public static List<PaperDTO> getPapersPublishedStatus(String publishedStatus) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Paper WHERE publishedStatus = ?";
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        List<PaperDTO> papers = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, publishedStatus);
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    String title = res.getString("title");
                    String picture = res.getString("picture");
                    String topic = res.getString("topic");
                    String description = res.getString("description");
                    String content = res.getString("content");
                    Timestamp createdDate = res.getTimestamp("createdDate");
                    Timestamp modifiedDate = res.getTimestamp("modifiedDate");
                    String username = res.getString("username");

                    boolean status = res.getBoolean("status");

                    PaperDTO paper = new PaperDTO(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status);
                    if (papers == null) {
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

    public static PaperDTO getPaperID(String ID) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Paper WHERE ID = ?";
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        PaperDTO paper = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, ID);
                res = pre.executeQuery();
                while (res.next()) {
                    String title = res.getString("title");
                    String picture = res.getString("picture");
                    String topic = res.getString("topic");
                    String description = res.getString("description");
                    String content = res.getString("content");
                    Timestamp createdDate = res.getTimestamp("createdDate");
                    Timestamp modifiedDate = res.getTimestamp("modifiedDate");
                    String username = res.getString("username");
                    String publishedStatus = res.getString("publishedStatus");
                    boolean status = res.getBoolean("status");

                    paper = new PaperDTO(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status);

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
        return paper;

    }

    public static List<PaperDTO> getPapersKeywordTopic(String username_, String keyword, String topic_) throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Paper\n"
                + "WHERE username = ? AND topic = ? AND\n"
                + "(ID like ? OR Description like ?\n"
                + "OR title like ?) ";

        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        List<PaperDTO> papers = null;
        try {

            con = DatabaseConnector.makeConnection();
            if (con != null) {

                if (!topic_.equals("All")) {

                    pre = con.prepareStatement(SQL);
                    pre.setString(1, username_);
                    pre.setString(2, topic_);
                    pre.setString(3, "%" + keyword + "%");
                    pre.setString(4, "%" + keyword + "%");
                    pre.setString(5, "%" + keyword + "%");

                } else {
                    SQL = "SELECT * FROM Paper\n"
                            + "WHERE username = ? AND\n"
                            + "(ID like ? OR Description like ?\n"
                            + "OR title like ?) ";
                    pre = con.prepareStatement(SQL);
                    pre.setString(1, username_);
                    pre.setString(2, "%" + keyword + "%");
                    pre.setString(3, "%" + keyword + "%");
                    pre.setString(4, "%" + keyword + "%");
                }
                res = pre.executeQuery();
                while (res.next()) {
                    String ID = res.getString("ID");
                    String title = res.getString("title");
                    String picture = res.getString("picture");
                    String topic = res.getString("topic");
                    String description = res.getString("description");
                    String content = res.getString("content");
                    Timestamp createdDate = res.getTimestamp("createdDate");
                    Timestamp modifiedDate = res.getTimestamp("modifiedDate");
                    String username = res.getString("username");
                    String publishedStatus = res.getString("publishedStatus");

                    boolean status = res.getBoolean("status");

                    PaperDTO paper = new PaperDTO(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status);
                    if (papers == null) {
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

    public static boolean addPaper(PaperDTO paper)
            throws SQLException, ClassNotFoundException {
        String SQL = "INSERT INTO Paper(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status)"
                + " VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, paper.getID());
                pre.setString(2, paper.getTitle());
                pre.setString(3, paper.getPicture());
                pre.setString(4, paper.getTopic());
                pre.setString(5, paper.getDescription());
                pre.setString(6, paper.getContent());
                pre.setTimestamp(7, paper.getCreatedDate());
                pre.setTimestamp(8, paper.getModifiedDate());
                pre.setString(9, paper.getUsername());
                pre.setString(10, paper.getPublishedStatus());
                pre.setBoolean(11, paper.isStatus());
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

    public static boolean updatePaper(PaperDTO paper)
            throws SQLException, ClassNotFoundException {

        String SQL = "UPDATE Paper SET title = ?, picture = ?, topic = ?, description = ?,"
                + " content = ?, createdDate = ?, modifiedDate = ?, username = ?, publishedStatus = ?, status = ? "
                + " WHERE ID = ?";
        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);

                pre.setString(1, paper.getTitle());
                pre.setString(2, paper.getPicture());
                pre.setString(3, paper.getTopic());
                pre.setString(4, paper.getDescription());
                pre.setString(5, paper.getContent());
                pre.setTimestamp(6, paper.getCreatedDate());
                pre.setTimestamp(7, paper.getModifiedDate());
                pre.setString(8, paper.getUsername());
                pre.setString(9, paper.getPublishedStatus());
                pre.setBoolean(10, paper.isStatus());
                pre.setString(11, paper.getID());
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
