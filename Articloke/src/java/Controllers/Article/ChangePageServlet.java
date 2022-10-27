package Controllers.Article;

import Respiratory.Article.ArticleDAO;
import Respiratory.Article.ArticleDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ChangePageServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "Search.jsp";
        List<ArticleDTO> articles = null;
        int currentPage = 1;
        String action = null;
        try {
            String title = request.getParameter("titlePara");
            String author = request.getParameter("authorPara");
            String organization = request.getParameter("organizationPara");
            String topic = request.getParameter("topicPara");
            String sortedBy = request.getParameter("sortedByPara");
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
            action = request.getParameter("action");
            request.setAttribute("titlePara", title);
            request.setAttribute("authorPara", author);
            request.setAttribute("organizationPara", organization);
            request.setAttribute("topicPara", topic);
            request.setAttribute("sortedByPara", sortedBy);

            try {
                if (topic.equals("all")) {
                    topic = "";
                }
                if (organization.equals("all")) {
                    organization = "";
                }

                articles = ArticleDAO.getArticlesTitleAuthorTopicOrganization(title, author, topic, organization);
            } catch (SQLException ex) {
                System.out.println("SQLException - ArticleShowServlet");
            } catch (ClassNotFoundException ex) {
                System.out.println("ClassNotFondException - ArticleShowServlet");
            }
            if (action.equals("Previous")) {
                currentPage = currentPage - 1;

            } else {
                currentPage = currentPage + 1;
            }

        } finally {

            request.setAttribute("articles", articles);

            request.setAttribute("displaySearchNotFound", true);
            request.setAttribute("minEntry", -15 + currentPage*15);
            request.setAttribute("maxEntry", currentPage*15 - 1);
            request.setAttribute("currentPage", currentPage);
            int maxPage;
            if (articles == null || articles.isEmpty()) {
                maxPage = 1;
            } else if (articles.size() % 15 == 0) {
                maxPage = articles.size() / 15;
            } else {
                maxPage = (articles.size() / 15) + 1;
            }

            request.setAttribute("maxPage", maxPage);
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
