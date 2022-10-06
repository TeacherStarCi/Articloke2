package Respiratory.Topic;

import Support.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TopicDAO implements Serializable {

    public static List<TopicDTO> getTopics() throws SQLException, ClassNotFoundException {
        String SQL = "SELECT * FROM Topic";
        List<TopicDTO> list = null;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                res = pre.executeQuery();
                while (res.next()) {
                    String topic = res.getString("topic");
                    String picture = res.getString("picture");

                    TopicDTO topicObject = new TopicDTO(topic, picture);
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(topicObject);
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
        return list;
    }

    public static List<TopicPlusArticleCount> getTopicsCount_FromHighToLow()
            throws SQLException, ClassNotFoundException {
        String SQL = "SELECT t.topic, picture, count FROM\n"
                + "(SELECT t.topic, COUNT(a.ID) as count FROM Topic t left join Paper a ON t.topic = a.topic\n"
                + "GROUP BY t.topic) c inner join Topic t ON c.topic = t.topic \n"
                + "ORDER BY count DESC";
        List<TopicPlusArticleCount> list = null;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                res = pre.executeQuery();
                while (res.next()) {
                    String topic = res.getString("topic");
                    String picture = res.getString("picture");
                    int count = res.getInt("count");

                    TopicDTO topicObject = new TopicDTO(topic, picture);
                    TopicPlusArticleCount element = new TopicPlusArticleCount(topicObject, count);

                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(element);
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
        return list;
    }
}
