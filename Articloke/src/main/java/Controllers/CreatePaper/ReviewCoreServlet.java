/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.CreatePaper;

import Repository.Feedback.FeedbackDAO;
import Repository.Feedback.FeedbackDTO;
import Repository.Paper.PaperDAO;
import Repository.Paper.PaperDTO;
import Repository.User.UserDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class ReviewCoreServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "ReviewPaper.jsp";
        PaperDTO paper = null;
        try {
            String action = request.getParameter("action");
            String ID = request.getParameter("ID");
            if (action.equals("approve")) {
                String title = request.getParameter("title");
                String topic = request.getParameter("topic");
                String description = request.getParameter("description");
                String content = request.getParameter("content");
                try {
                    paper = PaperDAO.getPaperID(ID);
                } catch (SQLException | ClassNotFoundException ex) {
                }
                    paper.setTitle(title);
                    paper.setContent(content);
                    paper.setDescription(description);
                    paper.setTopic(topic);
                    paper.setPublishedStatus("Approved");
                    try {
                        PaperDAO.updatePaper(paper);
                    } catch (SQLException | ClassNotFoundException ex) {
                    }
                    List<PaperDTO> pendingPapers = null;
                    List<PaperDTO> approvedPapers = null;
                    try {
                        pendingPapers = PaperDAO.getPapersPublishedStatus("Pending");
                    } catch (SQLException | ClassNotFoundException ex) {
                    }
                    try {
                        approvedPapers = PaperDAO.getPapersPublishedStatus("Approved");
                    } catch (SQLException | ClassNotFoundException ex) {
                    }
                    ServletContext context = request.getServletContext();
                    context.setAttribute("pendingPapers", pendingPapers);
                    context.setAttribute("approvedPapers", approvedPapers);
                    URL = "EditorWorkspaceReviewer.jsp";
                
            } else {
                String feedback = request.getParameter("feedback");
                String username = null;
                HttpSession session = request.getSession(false);
                if (session != null) {
                    UserDTO user = (UserDTO) session.getAttribute("user");
                    if (user != null) {
                        username = user.getUsername();
                    }
                }
                Timestamp feedbackDate = new Timestamp(System.currentTimeMillis());
                FeedbackDTO feedbackObject = new FeedbackDTO(ID, username, feedback, feedbackDate);
                try {
                    FeedbackDAO.addFeedback(feedbackObject);
                } catch (SQLException | ClassNotFoundException ex) {
                }
                URL = "EditorWorkspaceReviewer.jsp";
            }
            request.setAttribute("paper", paper);
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
