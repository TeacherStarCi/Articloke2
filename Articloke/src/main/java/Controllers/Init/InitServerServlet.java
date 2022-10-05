package Controllers.Init;

import Resipiratory.Topic.TopicDAO;
import Resipiratory.Topic.TopicDTO;
import Resipiratory.Topic.TopicPlusArticleCount;
import Respiratory.Article.ArticleDAO;
import Respiratory.Article.ArticleDTO;
import Respiratory.Article.ArticlePlusReactionTotal;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InitServerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "Home.jsp";

        try {

            List<ArticleDTO> articles_byDate = new ArrayList<>();
            List<ArticlePlusReactionTotal> articles_byReaction = new ArrayList<>();
            List<TopicPlusArticleCount> topics_byCount = new ArrayList<>();
            List<TopicDTO> topics = null;

            try {
                for (int i = 0; i < 7; i++) {
                    articles_byDate.add(ArticleDAO.getArticlesPublishedDate_FromLatestToOldest().get(i));
                }

            } catch (SQLException | ClassNotFoundException ex) {
            }

            try {
                for (int i = 0; i < 3; i++) {
                    articles_byReaction.add(ArticleDAO.getArticlesReaction_FromHighToLow().get(i));
                }
            } catch (SQLException | ClassNotFoundException ex) {
            }

            try {
                for (int i = 0; i < 6; i++) {
                    topics_byCount.add(TopicDAO.getTopicsCount_FromHighToLow().get(i));
                }
            } catch (SQLException | ClassNotFoundException ex) {
            }
            
              try {
               topics = TopicDAO.getTopics();
            } catch (SQLException | ClassNotFoundException ex) { }  

            HttpSession session = request.getSession();
            session.setAttribute("articles_byDate", articles_byDate);
            session.setAttribute("articles_byReaction", articles_byReaction);
            session.setAttribute("topics_byCount", topics_byCount);
            session.setAttribute("topics", topics);
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(URL);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
