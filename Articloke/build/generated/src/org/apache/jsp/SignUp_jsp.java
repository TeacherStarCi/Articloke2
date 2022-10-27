package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SIGN UP</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class = \"Auth\">\n");
      out.write("        <div class =\"SignUp\">\n");
      out.write("\n");
      out.write("                <div class=\"large\" style = \"top:40px; left: 50%; transform: translate(-50%,0%); position: absolute \">\n");
      out.write("                    SIGN UP\n");
      out.write("                </div>\n");
      out.write("                <div class =\"SignUp-Code\">\n");
      out.write("                    <form action = \"SignUpServlet\" method = \"POST\">\n");
      out.write("                        <div style = \"text-align: center;\"> USERNAME* </div> \n");
      out.write("                        <input type = \"TEXT\" name =\"usernamePara\" size = \"38\" value =\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.usernamePara}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder= \"Username\" >\n");
      out.write("                        <div class = \"error\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.usernameError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </div>\n");
      out.write("                        <div style = \"text-align: center;\">  PASSWORD* </div>\n");
      out.write("\n");
      out.write("                        <input type = \"TEXT\" name =\"passwordPara\" value =\"\" size = \"38\" placeholder= \"Password\" >\n");
      out.write("                        <div class = \"error\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.passwordError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                        <div style = \"text-align: center;\"> CONFIRM PASSWORD* </div>\n");
      out.write("                        <input type = \"TEXT\" name =\"confirmPara\" size = \"38\" value =\"\" placeholder= \"Confirm Password\">\n");
      out.write("                        <div class = \"error\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.confirmError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                        <div style = \"text-align: center;\"> NAME* </div>\n");
      out.write("\n");
      out.write("                        <div class = \"flex\">\n");
      out.write("                            <input style = \"margin-right: 4px\" type = \"TEXT\" name =\"firstNamePara\" size = \"16\" value =\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.firstNamePara}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder= \"First Name\">\n");
      out.write("                            <input  type=\"TEXT\" name =\"lastNamePara\" size = \"16\" value =\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.lastNamePara}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder= \"Last Name\"> \n");
      out.write("                        </div>\n");
      out.write("                        <div class= \"error\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.firstNameError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                        <div class = \"error\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.lastNameError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                        <div style = \"display:flex\">\n");
      out.write("                            <input style = \"margin:10px\" type = \"CHECKBOX\" name = \"termPara\" value = \"CHECKED\">\n");
      out.write("                            <div style=\"text-align:justify\"> \n");
      out.write("                                I have read and understood the Registered User Agreement and agree to be bound by all of its terms.\n");
      out.write("                            </div> \n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("                        <div class = \"error\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.termError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </div>\n");
      out.write("                        <input type = \"SUBMIT\" style =\"left: 50%; transform: translate(-50%,0%); bottom: 60px; position: absolute\" class = \"big\" name =\"submitForm\" value =\"SIGN UP\" >\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write(" <div class = \"Footer\">\n");
      out.write("                <div class = \"Footer-Left\">\n");
      out.write("                    <div class = \"Footer-Left-Logo\">\n");
      out.write("                        <img style = \"width: 60px; height: 60px; top:20px; left: 20px; position: absolute\" src=\"Asset/img/NavigationFooter/Logo.png\">\n");
      out.write("                        <div style =\"font-size: 20px; top: 90px; left: 5px; position: absolute\"> 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class = \"Footer-Left-Copyright\">\n");
      out.write("                        <div style = \"max-width: 180px; left: 20px; top: 20px; position: absolute;\">   Copyright © 2022 StarCi da Philospher\n");
      out.write("                            <br>\n");
      out.write("                            Cookies are used by this site.\n");
      out.write("                        </div> \n");
      out.write("                    </div>\n");
      out.write("                    <div class = \"Footer-Left-Contact\">\n");
      out.write("                        <div style = \"top:20px; left:10px; max-width:280px; position: absolute;\">\n");
      out.write("                            PHONE NUMBER: 0828.678.897 \n");
      out.write("                            <br>\n");
      out.write("                            EMAIL: cuongnvtse160875@fpt.edu.vn\n");
      out.write("                            <br>\n");
      out.write("                            ADDRESS: 53 Tan Lap 1, Hiep Phu, 9 District, Ho Chi Minh\n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class = \"Footer-Right\">\n");
      out.write("                    <div class = \"Footer-Right-Social\">\n");
      out.write("                        <div class =\"large\" style = \"top: 20px; left: 50px; position: absolute\" >\n");
      out.write("                            Our Social Media\n");
      out.write("                        </div>\n");
      out.write("                        <img style = \"left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute\" src = \"Asset/img/NavigationFooter/facebook@2x.png\">\n");
      out.write("                        <img style = \"left: calc(25% - 20px);  top:60px; height: 40px; width: 40px; position: absolute\" src = \"Asset/img/NavigationFooter/instagram@2x.png\">\n");
      out.write("                        <img style = \"left: calc(75% - 20px); top:62px; height: 36px; width: 40px; position: absolute\" src = \"Asset/img/NavigationFooter/tweeter@2x.png\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class = \"Footer-Right-Sponsor\">\n");
      out.write("                    <div class =\"large\" style = \"top: 20px; position: absolute\" >\n");
      out.write("                        Sponsor\n");
      out.write("                    </div>\n");
      out.write("                    <img style = \"left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute\" src = \"Asset/img/NavigationFooter/sponsorlogo@2x.png\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class = \"Navigation\">\n");
      out.write("                <div class = \"Navigation-Left\">\n");
      out.write("                    <div class = \"Navigation-Left-Logo\">\n");
      out.write("                        <img class =\"center\" style = \"height:50px;width:50px\"\n");
      out.write("                             src = \"Asset/img/NavigationFooter/Logo.png\">\n");
      out.write("\n");
      out.write("                    </div> \n");
      out.write("                    <div class = \" Navigation-Left-Title\">\n");
      out.write("                        <div style =\"font-size:32px\" class = \"center\"  > 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖 </div>\n");
      out.write("                    </div> \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class = \"Navigation-Right\" style = \"display:flex\">\n");
      out.write("                    <a href = \"Home.jsp\">\n");
      out.write("                        <div class = \"Navigation-Right-Home hover\">\n");
      out.write("                            <div class =\"center large\"> Home\n");
      out.write("                            </div> \n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                    <a href = \"\">\n");
      out.write("                        <div class = \"Navigation-Right-Contact hover\">\n");
      out.write("\n");
      out.write("                            <div class =\"center large\"> Contact\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                    </a>\n");
      out.write("                    <a href = \"\">\n");
      out.write("                        <div class = \"Navigation-Right-Article hover\">\n");
      out.write("\n");
      out.write("                            <div class =\"center large\"> Article\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                    </a>\n");
      out.write("                    <a href = \"Search.jsp\">\n");
      out.write("                        <div class = \"Navigation-Right-Search hover\">\n");
      out.write("                            <div class =\"center\"> \n");
      out.write("                                <img style =\"height: 40px; width: 40px;\" src = \"Asset/img/NavigationFooter/Search.png\">\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                    </a>\n");
      out.write("                    <c:if test = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty sessionScope.user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        <a href = \"Auth.jsp\" >\n");
      out.write("                            <div class = \"Navigation-Right-Profile hover\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class =\"center\"> \n");
      out.write("                                    <img style =\"height: 40px; width: 40px;\" src = \"Asset/img/NavigationFooter/User.png\">\n");
      out.write("                                </div>\n");
      out.write("                            </div> \n");
      out.write("                        </a>\n");
      out.write("                    </c:if>\n");
      out.write("                    <c:if test = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty sessionScope.user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        <a href = \"Profile.jsp\" >\n");
      out.write("                            <div class = \"Navigation-Right-Profile hover\">\n");
      out.write("                                <div class =\"center\"> \n");
      out.write("                                    <img style =\"height: 40px; width: 40px;\" src = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user.picture}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div> \n");
      out.write("                        </a>\n");
      out.write("                    </c:if>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
