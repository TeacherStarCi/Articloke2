/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Respiratory.Topic;

import Respiratory.Article.ArticleDAO;
import java.sql.SQLException;

/**
 *
 * @author tucuo
 */
public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        for (TopicPlusArticleCount top: TopicDAO.getTopicsCount_FromHighToLow()){
            System.out.println(top);
        }
    }
}
