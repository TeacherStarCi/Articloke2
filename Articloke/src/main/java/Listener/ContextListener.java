package Listener;

import Repository.Article.ArticleDAO;
import Repository.Article.ArticleDTO;
import Repository.Paper.PaperDAO;
import Repository.Paper.PaperDTO;
import Repository.Topic.TopicDAO;
import Repository.Topic.TopicDTO;
import Repository.Topic.TopicPlusArticleCount;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        List<ArticleDTO> articlesLatestPublishedDate = new ArrayList<>();
        List<TopicPlusArticleCount> topicsMostCount = new ArrayList<>();
        List<TopicDTO> topics = null;
        List<PaperDTO> pendingPapers = null;
        List<PaperDTO> approvedPapers = null;
        List<PaperDTO> agreedPapers = null;
        Map<String, String> topicsPicture = null;
        String realPath = context.getRealPath("");
        int index = realPath.lastIndexOf("target");
        String root = null;
        if (index > 0) {
            root = realPath.substring(0, index - 1);
        }
        context.setAttribute("root", root);
        try {
            for (int i = 0; i < 7; i++) {
                articlesLatestPublishedDate.add(ArticleDAO.getArticlesLastedPublishDate().get(i));
            }
        } catch (SQLException | ClassNotFoundException ex) {
        }
        try {
            topics = TopicDAO.getTopics();
        } catch (SQLException | ClassNotFoundException ex) {
        }
        try {
            topicsPicture = TopicDAO.getTopicsPicture();
        } catch (SQLException | ClassNotFoundException ex) {
        }
        try {
            for (int i = 0; i < 6; i++) {
                topicsMostCount = TopicDAO.getTopicsMostCount();
            }
        } catch (SQLException | ClassNotFoundException ex) {
        }

        try {
            pendingPapers = PaperDAO.getPapersPublishedStatus("Pending");
        } catch (SQLException | ClassNotFoundException ex) {
        }
        try {
            approvedPapers = PaperDAO.getPapersPublishedStatus("Approved");
        } catch (SQLException | ClassNotFoundException ex) {
        }

        context.setAttribute("articlesLatestPublishedDate", articlesLatestPublishedDate);
        context.setAttribute("topicsMostCount", topicsMostCount);
        context.setAttribute("topics", topics);
        context.setAttribute("topicsPicture", topicsPicture);
        context.setAttribute("pendingPapers", pendingPapers);
        context.setAttribute("approvedPapers", approvedPapers);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
