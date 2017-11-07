/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-11-07 09:06:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.analyse.dataAnalyse;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class aoSource_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("javax.servlet.http");
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>新闻评论量分析</title>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/analyse/common/header.jsp", out, false);
      out.write("\r\n");
      out.write("    <!-- 这里用requirejs来做模块加载器 -->\r\n");
      out.write("    <script src=\"http://requirejs.org/docs/release/2.1.20/minified/require.js\"></script>\r\n");
      out.write("    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->\r\n");
      out.write("    <script src=\"http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\">\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/analyse/common/navbar.jsp", out, false);
      out.write("\r\n");
      out.write("    <span>\r\n");
      out.write("        <h2>新闻评论量分析</h2>\r\n");
      out.write("    </span>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"allTest\" style=\"width:1000px;height:400px;\">\r\n");
      out.write("</div>\r\n");
      out.write("    <h3>2017年10月23日新闻评论量分析Top10</h3>\r\n");
      out.write("    <br> <br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"techTest\" style=\"width:1000px;height:400px;\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <h3>2017年10月24日新闻评论量分析Top10</h3><br><br>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"会计\", \"我在乎你在乎的在乎\", \"栀颜丶\", \"如果当初下手早\", \"日式神吐槽\", \"狂丸♂\", \"羽烈王\", \"汽车洋葱圈\", \"牛奶月小芒\", \"玩数码频道\"],\r\n");
      out.write("            [\"时间访问量\", 250989, 99149, 45049, 17503, 17031, 12665,9915,8762,5780,5446]\r\n");
      out.write("        ];\r\n");
      out.write("        var options = {\r\n");
      out.write("            type: \"horizontal\",\r\n");
      out.write("            proportion: true,\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [[ \"会计\", \"我在乎你在乎的在乎\", \"栀颜丶\", \"如果当初下手早\", \"日式神吐槽\", \"狂丸♂\", \"羽烈王\", \"汽车洋葱圈\", \"牛奶月小芒\", \"玩数码频道\"]]\r\n");
      out.write("            },\r\n");
      out.write("            xAxis: {\r\n");
      out.write("                field: [\"xfield\"]\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        Chartx.bar(\"allTest\", data, options);\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"会计\", \"梦斩千钧\", \"栀颜丶\", \"我在乎你在乎的在乎\", \"微在趣闻社\", \"videocase\", \"氪星情报局\", \"汽车洋葱圈\", \"一抹微笑如萝莉\", \"备胎说车\"],\r\n");
      out.write("            [\"时间访问量\", 172300, 106813, 66166, 55942, 17491, 6180,5986,5934,5912,5774]\r\n");
      out.write("        ];\r\n");
      out.write("        var options = {\r\n");
      out.write("            type: \"horizontal\",\r\n");
      out.write("            proportion: true,\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [[ \"会计\", \"梦斩千钧\", \"栀颜丶\", \"我在乎你在乎的在乎\", \"微在趣闻社\", \"videocase\", \"氪星情报局\", \"汽车洋葱圈\", \"一抹微笑如萝莉\", \"备胎说车\"]]\r\n");
      out.write("            },\r\n");
      out.write("            xAxis: {\r\n");
      out.write("                field: [\"xfield\"]\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        Chartx.bar(\"techTest\", data, options);\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
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
