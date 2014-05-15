package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frmfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-2.0.3.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cambios.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <section id=\"formulario\">\n");
      out.write("        <form method=x\"post\" action=\"#\" id=\"frmuser\" class=\"frm\" name=\"frmuser\">\n");
      out.write("            <label for=\"rol\">rol de la persona</label>\n");
      out.write("            <select id=\"rol\" name=\"rol\">\n");
      out.write("                <option value=\"docente\" selected>docente</option>\n");
      out.write("                <option value=\"administrador\">administrador</option> \n");
      out.write("                \n");
      out.write("            </select>\n");
      out.write("            \n");
      out.write("            <label for=\"nombre\">Nombre de la persona</label> \n");
      out.write("            <input type=\"text\" name=\"nombre\" id=\"nombre\" placeholder=\"Nombre completo\" />\n");
      out.write("            <label for=\"usuario\">Nombre de usuario</label>\n");
      out.write("            <input type=\"text\" name=\"usuario\" id=\"usuario\" placeholder=\"usuario\" />\n");
      out.write("            <label for=\"contrasenia\">Contraseña</label>\n");
      out.write("            <input type=\"text\" name=\"contrasenia\" id=\"contrasenia\" placeholder=\"contraseña\" />\n");
      out.write("            \n");
      out.write("            <section id=\"doconly\" name=\"doconly\">\n");
      out.write("                \n");
      out.write("            <label for=\"\">facultad</label>\n");
      out.write("            ");
 try{ 
            if(request.getAttribute("respuesta")=="ok")
               {
      out.write("\n");
      out.write("            <input type=\"text\" name=\"facultad\" id=\"facultad\" placeholder=\"facultad\" />\n");
      out.write("            \n");
      out.write("            <label for=\"\">escuela</label>\n");
      out.write("            <input type=\"text\" name=\"escuela\" id=\"escuela\" placeholder=\"escuela\" />\n");
      out.write("            ");
 } } catch(Exception e)
                                                { 
                                                    
             
      out.write("\n");
      out.write("             \n");
      out.write("             ");
      out.print( "Sigue dando error" );
      out.write("\n");
      out.write("             ");
       
                               }
            
      out.write("\n");
      out.write("            \n");
      out.write("            </section>\n");
      out.write("        </form>\n");
      out.write("        </section>\n");
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
