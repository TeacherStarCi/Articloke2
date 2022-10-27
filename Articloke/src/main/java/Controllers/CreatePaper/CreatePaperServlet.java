package Controllers.CreatePaper;

import Repository.Paper.PaperDAO;
import Repository.Paper.PaperDTO;
import Repository.User.UserDTO;
import Utils.Utils;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class CreatePaperServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "CreatePaper.jsp";
        try {
            Part part = request.getPart("picture");
            String fileName = Utils.extractFileName(part);
            String title = request.getParameter("title");
            String topic = request.getParameter("topic");
            String description = request.getParameter("description");
            String content = request.getParameter("content");
            request.setAttribute("title", title );
            request.setAttribute("topic", topic );
            request.setAttribute("description", description );
            request.setAttribute("content", content );
            if (PaperErrorCatcher.checkContentLength(content) != null
                    || PaperErrorCatcher.checkDescriptionLength(content) != null
                    || PaperErrorCatcher.checkFileName(fileName)!= null
                    || PaperErrorCatcher.checkTitleLength(title) != null) {
                request.setAttribute("titleError", PaperErrorCatcher.checkTitleLength(title));
                request.setAttribute("fileNameError", PaperErrorCatcher.checkFileName(fileName));
                request.setAttribute("descriptionError", PaperErrorCatcher.checkDescriptionLength(description));
                request.setAttribute("contentError", PaperErrorCatcher.checkContentLength(content));
            } else {
                String ID = null;
                try {
                    ID = PaperDAO.getNextID();
                } catch (SQLException | ClassNotFoundException ex) {
                }
                // refines the fileName in case it is an absolute path
                fileName = new File(fileName).getName();
                part.write(Utils.getFolderUpload("Paper", request.getServletContext()).getAbsolutePath() + File.separator + fileName);
            
            String picture = "Asset/Image/Paper/" + fileName;
            Timestamp createdDate = new Timestamp(System.currentTimeMillis());
            Timestamp modifiedDate = null;
            HttpSession session = request.getSession(false);
            String username = null;

            if (session != null) {
                UserDTO user = (UserDTO) session.getAttribute("user");
                if (user != null) {
                    username = user.getUsername();
                }
            }

            String publishedStatus = "Pending";
            boolean status = true;
            PaperDTO paper = new PaperDTO(ID, title, picture, topic, description, content, createdDate, modifiedDate, username, publishedStatus, status);

            try {
              PaperDAO.addPaper(paper);
            } catch (SQLException | ClassNotFoundException ex) {
            }
            URL = "MyRepository.jsp";
        }
    }

    
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
