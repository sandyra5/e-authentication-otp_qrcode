package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class student_005fverify_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <!-- Title Tag -->\n");
      out.write("        <title>E Authentication Using QR-Code</title>\n");
      out.write("        <!-- <<Mobile Viewport Code>> -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("\n");
      out.write("        <!-- <<Attched Stylesheets>> -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/theme.css\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/media.css\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\" type=\"text/css\" />\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,600italic,400italic,800,700' rel='stylesheet' type='text/css'>    \n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <script>\n");
      out.write("        var loadFile = function (event) {\n");
      out.write("            var reader = new FileReader();\n");
      out.write("            reader.onload = function () {\n");
      out.write("                var output = document.getElementById('output');\n");
      out.write("                output.src = reader.result;\n");
      out.write("            };\n");
      out.write("            reader.readAsDataURL(event.target.files[0]);\n");
      out.write("        };\n");
      out.write("    </script>\n");
      out.write("    <body>\n");
      out.write("        <!-- \\\\ Begin Holder \\\\ -->\n");
      out.write("        <div class=\"DesignHolder\">\n");
      out.write("            <!-- \\\\ Begin Frame \\\\ -->\n");
      out.write("            <div class=\"LayoutFrame\">\n");
      out.write("                <!-- \\\\ Begin Header \\\\ -->\n");
      out.write("                <header>\n");
      out.write("                    <div class=\"Center\">\n");
      out.write("                        <div class=\"site-logo\">\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"mobile_sec\">\n");
      out.write("                            <div class=\"mobile\"><i class=\"fa fa-bars\"></i><i class=\"fa fa-times\"></i></div>\n");
      out.write("                            <div class=\"menumobile\">\n");
      out.write("                                <!-- \\\\ Begin Navigation \\\\ -->\n");
      out.write("                                <nav class=\"Navigation\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li>                                \n");
      out.write("                                            <a href=\"index.jsp\">Home</a>\n");
      out.write("                                            <span class=\"menu-item-bg\"></span>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"active\">\n");
      out.write("                                            <a href=\"Student_login.jsp\">Student</a>\n");
      out.write("                                            <span class=\"menu-item-bg\"></span>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"student_signup.jsp\">Register</a>\n");
      out.write("                                            <span class=\"menu-item-bg\"></span>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"Staff_login.jsp\">Staff</a>\n");
      out.write("                                            <span class=\"menu-item-bg\"></span>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </nav>\n");
      out.write("                                <!-- // End Navigation // -->\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </header>\n");
      out.write("                <!-- // End Header // -->\n");
      out.write("                <!-- \\\\ Begin Banner Section \\\\ -->\n");
      out.write("                <div class=\"Banner_sec\" id=\"home\">\n");
      out.write("                    <!--  \\\\ Begin banner Side -->\n");
      out.write("                    <div class=\"bannerside\">\n");
      out.write("                        <div class=\"ce\">\n");
      out.write("                            <br>\n");
      out.write("                            <center><h1 style=\"color: white;\">E-Authentication System with QR Code & OTP</h1></center>\n");
      out.write("                        </div>                        \t\t\t\t\t\t\t\t\n");
      out.write("                        <!--  // End Left Side // -->\n");
      out.write("                        <!--  // End Right Side // -->\n");
      out.write("                    </div>\n");
      out.write("                    <!--  // End banner Side // -->\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("                <!-- // End Banner Section // -->\n");
      out.write("                <!-- \\\\ Begin Container \\\\ -->\n");
      out.write("                <div id=\"Container\">\n");
      out.write("                    <!-- \\\\ Begin About Section \\\\ -->\n");
      out.write("                    <div class=\"Contact_sec\" id=\"contact\">\n");
      out.write("                        <div class=\"Get_sec\">\n");
      out.write("                            <div class=\"Mid\">\t\t\n");
      out.write("                                <center><h2>QR-Code Verification</h2></center><br><br><br>\n");
      out.write("                                <!-- \\\\ Begin Left Side \\\\ -->\n");
      out.write("                                <div class=\"Leftside\">\n");
      out.write("                                    ");

                                        String id = (String) session.getAttribute("uid");
                                        String name = (String) session.getAttribute("uname");
                                        String email = (String) session.getAttribute("umail");

                                    
      out.write("\n");
      out.write("                                    <br>\n");
      out.write("                                    <form action=\"student_verify1.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                        <fieldset>\n");
      out.write("                                            <input type=\"hidden\" value=\"");
      out.print(id);
      out.write("\" name=\"id\">\n");
      out.write("                                            <p><b>OTP :</b></p>\n");
      out.write("                                            <p><input type=\"text\" placeholder=\"Enter Your OTP\" name=\"otp\" style=\"color: black;\" required=\"\" class=\"field\"></p>\n");
      out.write("                                            <p><b>QR code :</b></p>\n");
      out.write("                                            <p><input type=\"file\" name=\"file\" style=\"color: black;\" accept=\"image/x-png,image/gif,image/jpeg\" onchange=\"loadFile(event)\" required=\"\"></p><br>\n");
      out.write("                                            <p><button type=\"submit\" style=\"width: 120px;\" class=\"button btn-success\">Verify</button>\n");
      out.write("                                        </fieldset>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- // End Left Side // -->\n");
      out.write("                                <!-- \\\\ Begin Right Side \\\\ -->\n");
      out.write("                                <div class=\"Rightside\">\n");
      out.write("                                    <img id=\"output\" src=\"#\" alt=\"Preview Image\" width=\"500\" height=\"450\" />\n");
      out.write("                                </div>\n");
      out.write("                                <!-- // End Right Side // -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- // End Footer // -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- // End Get Section // -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"Contact_sec\" id=\"contact\">\n");
      out.write("                        <footer>\n");
      out.write("                            <div class=\"Cntr\">                \n");
      out.write("                                <p> © 2021</p>\n");
      out.write("                            </div>\n");
      out.write("                        </footer>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- // End Contact Section // -->\n");
      out.write("                </div>\n");
      out.write("                <!-- // End Container // -->\n");
      out.write("            </div>\n");
      out.write("            <!-- // End Layout Frame // -->\n");
      out.write("        </div>\n");
      out.write("        <!-- // End Design Holder // -->\n");
      out.write("        <div id=\"loader-wrapper\">\n");
      out.write("            <div id=\"loader\"></div>\n");
      out.write("\n");
      out.write("            <div class=\"loader-section section-left\"></div>\n");
      out.write("            <div class=\"loader-section section-right\"></div>\n");
      out.write("        </div>\n");
      out.write("        <!-- <<Attched Javascripts>> -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.11.0.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.sudoSlider.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/global.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/modernizr.js\"></script>\n");
      out.write("\n");
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
