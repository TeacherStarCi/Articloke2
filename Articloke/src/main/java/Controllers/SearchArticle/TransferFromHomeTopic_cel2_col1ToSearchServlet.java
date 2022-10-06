
package Controllers.SearchArticle;

import Respiratory.Article.ArticleDAO;
import Respiratory.Article.ArticleDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


public class TransferFromHomeTopic_cel2_col1ToSearchServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "Search.jsp";
        try {
            String topic = request.getParameter("topic");           
            String organization = request.getParameter("organization");
            if (topic.equals("")){
                throw new Exception();
            }
            HttpSession session = request.getSession();
            session.setAttribute("topic", topic);           
            List<ArticleDTO> articles = null;
            try {
                articles = ArticleDAO.getArticles_FromSearchArticle("", "", "", topic, organization, "All", "None");
            } catch (SQLException | ClassNotFoundException ex) {
            }

            request.setAttribute("articles", articles);
            request.setAttribute("minIndex", 0);
            request.setAttribute("maxIndex", 4);
            request.setAttribute("currentPage", 1);

            int maxPage;
            if (articles == null || articles.isEmpty()) {
                maxPage = 1;
            } else {
                int residual = articles.size() % 5;
                if (residual == 0) {
                    maxPage = articles.size() / 5;
                } else {
                    maxPage = articles.size() / 5 + 1;
                }

            }

            request.setAttribute("maxPage", maxPage);
            request.setAttribute("searchEmpty", true);

        } catch (Exception e){ }
        finally {
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