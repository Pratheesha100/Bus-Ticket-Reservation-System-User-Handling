/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.87
 * Generated at: 2024-05-03 09:16:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class DeleteUserAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Delete Account</title>\r\n");
      out.write("<style>\r\n");
      out.write("	body{\r\n");
      out.write("	         display:flex;\r\n");
      out.write("	         justify-content:center;\r\n");
      out.write("	         min-height:100vh;\r\n");
      out.write("	        /* background-color:#1F9583;*/\r\n");
      out.write("			 background-image: url('image/bg5.jpg');\r\n");
      out.write("	}\r\n");
      out.write("	.wrapper{\r\n");
      out.write("	        zoom: 0.9;\r\n");
      out.write("	        font-family: Poppins,sans-serif;\r\n");
      out.write("	        margin-top:140px;\r\n");
      out.write("		    width:420px;\r\n");
      out.write("			height:550px;\r\n");
      out.write("		    background:rgba(255, 255, 255, 0.45);\r\n");
      out.write("		    color:black;\r\n");
      out.write("			border:none; \r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            box-shadow:rgba(0, 0, 0, 0.19) 0px 4px 12px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("	} \r\n");
      out.write("	.form-container {\r\n");
      out.write("	       padding: 20px;\r\n");
      out.write("    }\r\n");
      out.write("	\r\n");
      out.write("    input[type=\"text\"], input[type=\"password\"], button {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            margin-bottom: 10px;\r\n");
      out.write("            box-sizing: border-box;\r\n");
      out.write("            border: 1.5px solid #ccc;\r\n");
      out.write("			font-size: 17px;\r\n");
      out.write("            border-radius: 25px;\r\n");
      out.write("            outline: none;\r\n");
      out.write("			background: transparent;\r\n");
      out.write("        }\r\n");
      out.write("	input::placeholder{\r\n");
      out.write("	       color:black;\r\n");
      out.write("	}\r\n");
      out.write("    .button {\r\n");
      out.write("	       font-weight:1;\r\n");
      out.write("	       margin-top: 8px;\r\n");
      out.write("           background-color: rgba(255, 255, 255, 0.7);\r\n");
      out.write("            color: black;\r\n");
      out.write("            border: 1.6px solid #ccc;\r\n");
      out.write("            border-radius: 25px;\r\n");
      out.write("            padding: 12px 20px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            transition: background-color 0.3s ease, border-color 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("    .button:hover {\r\n");
      out.write("            background-color:#ABD4ED;\r\n");
      out.write("        }\r\n");
      out.write("	</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  ");
  
   // get the parameter values of the current details from the UpdateUserAccount and assign it to variables
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");  
    String lname = request.getParameter("lname");  
    String email = request.getParameter("email");  
    String address = request.getParameter("address");  
    String phone = request.getParameter("phone");  
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   <div class=\"wrapper\">\r\n");
      out.write("      <div class=\"form-container\">\r\n");
      out.write("      <!--  Show the current details of the Passenger -->\r\n");
      out.write("        <form action=\"delete\" method=\"post\">\r\n");
      out.write("        <table>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td>Customer ID</td>\r\n");
      out.write("			<td><input type=\"text\" name=\"id\" value=\"");
      out.print( id );
      out.write("\" readonly></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		 <tr>\r\n");
      out.write("			<td>First Name</td>\r\n");
      out.write("			<td><input type=\"text\" name=\"fname\" value=\"");
      out.print( fname );
      out.write("\" readonly></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		 <tr>\r\n");
      out.write("			<td>Last Name</td>\r\n");
      out.write("			<td><input type=\"text\" name=\"lname\" value=\"");
      out.print( lname );
      out.write("\" readonly></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("		    <td>Email</td>\r\n");
      out.write("		    <td><input type=\"text\" name=\"email\" value=\"");
      out.print( email );
      out.write("\" readonly></td>\r\n");
      out.write("	    </tr>\r\n");
      out.write("	    <tr>\r\n");
      out.write("		    <td>Address</td>\r\n");
      out.write("		    <td><input type=\"text\" name=\"address\" value=\"");
      out.print( address );
      out.write("\" readonly></td>\r\n");
      out.write("	    </tr>\r\n");
      out.write("	    <tr>\r\n");
      out.write("		    <td>Phone number</td>\r\n");
      out.write("		    <td><input type=\"text\" name=\"phone\" value=\"");
      out.print( phone );
      out.write("\" readonly></td>\r\n");
      out.write("	    </tr>\r\n");
      out.write("	    <tr>\r\n");
      out.write("		    <td>User name</td>\r\n");
      out.write("		    <td><input type=\"text\" name=\"username\" value=\"");
      out.print( username );
      out.write("\" readonly></td>\r\n");
      out.write("	    </tr>\r\n");
      out.write("	    <tr>\r\n");
      out.write("		   <td>Password</td>\r\n");
      out.write("		   <td><input type=\"password\" name=\"password\" value=\"");
      out.print( password );
      out.write("\" readonly></td>\r\n");
      out.write("	    </tr>		\r\n");
      out.write("	    </table>\r\n");
      out.write("	    <input class=\"button\" type=\"submit\" name=\"submit\" value=\"Delete Details\">\r\n");
      out.write("        \r\n");
      out.write("        </form>\r\n");
      out.write("     </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
