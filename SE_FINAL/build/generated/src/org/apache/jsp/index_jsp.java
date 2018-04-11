package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<link href=\"resources/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<link href=\"resources/spry/textfieldvalidation/SpryValidationTextField.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"resources/spry/textfieldvalidation/SpryValidationTextField.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("<link href=\"resources/spry/passwordvalidation/SpryValidationPassword.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"resources/spry/passwordvalidation/SpryValidationPassword.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<title>School Grade System</title>\r\n");
      out.write("<style>\r\n");
      out.write("span {font-size:11px !important;font-family:verdana !important;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<body style=\"background-color:#ECECEC;margin-top:50px;\">\r\n");
      out.write("<table width=\"900\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" class=\"graybox\">\r\n");
      out.write(" <tr style=\"background-color:#FFFFFF\"> \r\n");
      out.write("  <td><img src=\"images/school-grade-header.png\" /></td>\r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr> \r\n");
      out.write("  <td valign=\"top\"> \r\n");
      out.write("  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"20\">\r\n");
      out.write("    <tr> \r\n");
      out.write("     <td class=\"contentArea\">\r\n");
      out.write("       <p>&nbsp;</p>\r\n");
      out.write("       <table width=\"350\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" bgcolor=\"#336699\" class=\"entryTable\">\r\n");
      out.write("        <tr id=\"entryTableHeader\"> \r\n");
      out.write("         <td>:: Login ::</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr> \r\n");
      out.write("         <td class=\"contentArea\"> \r\n");
      out.write("         ");

			Boolean success = (Boolean)request.getAttribute("success");
			if(null != success){
				if(!success){
			
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"errorMessage\" style=\"width:95%\">");
      out.print((String)request.getAttribute("message"));
      out.write("</div>\r\n");
      out.write("\t\t\t");

				}
			}
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t <form action=\"login.do?action=login\" method=\"post\">\r\n");
      out.write("\t\t  <table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"1\" class=\"text\">\r\n");
      out.write("           <tr align=\"center\"> \r\n");
      out.write("            <td colspan=\"3\">&nbsp;</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr class=\"text\"> \r\n");
      out.write("            <td width=\"100\" align=\"right\">User Name</td>\r\n");
      out.write("            <td width=\"10\">:</td>\r\n");
      out.write("            <td align=\"left\">\r\n");
      out.write("            <span id=\"sprytextfield1\" style=\"text-align:left;\">\r\n");
      out.write("            \t<input name=\"name\" type=\"text\" class=\"box\" id=\"name\" size=\"30\" maxlength=\"20\">\r\n");
      out.write("             \t<br/>\r\n");
      out.write("\t            <span class=\"textfieldRequiredMsg\">Username is required.</span>\r\n");
      out.write("\t            <span class=\"textfieldMinCharsMsg\">Username must have at least 4 characters.</span>\r\n");
      out.write("\t\t\t  \t<span class=\"textfieldMaxCharsMsg\">Username must have at max 10 characters.</span>\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("            </td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr> \r\n");
      out.write("            <td width=\"100\" align=\"right\">Password</td>\r\n");
      out.write("            <td width=\"10\">:</td>\r\n");
      out.write("            <td align=\"left\">\r\n");
      out.write("            <span id=\"sprypassword1\" style=\"text-align:left;\">\r\n");
      out.write("            \t<input name=\"pwd\" type=\"password\" class=\"box\" id=\"password\" size=\"30\">\r\n");
      out.write("            \t<br/>\r\n");
      out.write("             \t<span class=\"passwordRequiredMsg\">Password is required.</span>\r\n");
      out.write("\t\t\t  \t<span class=\"passwordMinCharsMsg\">Password must have at least 6 characters.</span>\r\n");
      out.write("\t\t\t  \t<span class=\"passwordMaxCharsMsg\">Password must have at max 10 characters.</span>\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("            </td>\r\n");
      out.write("           </tr>\r\n");
      out.write("\t\t   \r\n");
      out.write("           <tr> \r\n");
      out.write("            <td colspan=\"2\">&nbsp;</td>\r\n");
      out.write("            <td align=\"left\"><input name=\"btnLogin\" type=\"submit\" id=\"btnLogin\" value=\"Login Now ! \"></td>\r\n");
      out.write("           </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("          \r\n");
      out.write("          </form>\r\n");
      out.write("          </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("       </table>\r\n");
      out.write("       <p>&nbsp;</p>\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("   </table></td>\r\n");
      out.write(" </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("<!--\r\n");
      out.write("var sprytextfield1 = new Spry.Widget.ValidationTextField(\"sprytextfield1\", \"none\", {minChars:4, maxChars: 10, validateOn:[\"blur\", \"change\"]});\r\n");
      out.write("var sprypassword1 = new Spry.Widget.ValidationPassword(\"sprypassword1\", {minChars:6, maxChars: 10, validateOn:[\"blur\", \"change\"]});\r\n");
      out.write("//-->\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
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
