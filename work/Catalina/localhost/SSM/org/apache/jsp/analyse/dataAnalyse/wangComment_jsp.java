/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-11-07 09:05:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.analyse.dataAnalyse;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class wangComment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>新闻作者时间点击率分析</title>\r\n");
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
      out.write("<h3>新闻作者时间点击率分析</h3>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"allTest\" style=\"width:1200px;height:400px;\"></div>\r\n");
      out.write("    <h3>热门新闻作者2016年点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"secondTest\" style=\"width:1200px;height:400px;\"></div>\r\n");
      out.write("    <h3>热门新闻作者2017年点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("    //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("    //第一行是表头。\r\n");
      out.write("    var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"杨易颖\", \"李旭朝\", \"马路遥\", \"张洋洋\", \"谷莹\", \"仝贺\", \"赵亮亮\", \"张腾\", \"乔敬\"],\r\n");
      out.write("        [\"5/14/2016\",0,0,0,0,204,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/15/2016\",0,0,34524,259,0,0,11870,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/16/2016\",0,0,0,0,0,10164,0,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/17/2016\",0,0,0,0,0,0,496,0,1824],\r\n");
      out.write("\r\n");
      out.write("        [\"5/18/2016\",0,354,0,77146,0,14566,0,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/19/2016\",46062,0,0,0,96561,0,0,10,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/20/2016\",39902,0,0,0,0,0,0,16534,21575],\r\n");
      out.write("\r\n");
      out.write("        [\"5/21/2016\",18094,145553,842,0,0,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/22/2016\",0,0,6408,49545,0,0,2355,0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"5/23/2016\",0,329981,0,285534,44541,44541,0,11440,0],\r\n");
      out.write("\r\n");
      out.write("        [\" 5/24/2016\", 87482,255111,0,0,0,0,0,0,0]\r\n");
      out.write("\r\n");
      out.write("    ];\r\n");
      out.write("\r\n");
      out.write("    //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("    var options = {\r\n");
      out.write("        yAxis: {\r\n");
      out.write("            field: [\"杨易颖\", \"李旭朝\", \"马路遥\", \"张洋洋\", \"谷莹\", \"仝贺\", \"赵亮亮\", \"张腾\", \"乔敬\"],\r\n");
      out.write("            label: \"热门访问量\"\r\n");
      out.write("        },\r\n");
      out.write("        xAxis: {\r\n");
      out.write("            field: \"xfield\",\r\n");
      out.write("            label: \"时间\"\r\n");
      out.write("        },\r\n");
      out.write("        legend: {\r\n");
      out.write("            tips: {\r\n");
      out.write("                enabled: true,\r\n");
      out.write("                content: function (e) {\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    };\r\n");
      out.write("    //Chartx.line开始初始化chart实例\r\n");
      out.write("    var chartx = Chartx.line(\"allTest\", data, options).then(function (chart) {\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"黄哲程\", \"王征\", \"郑鸿豪\", \"朱楷正\", \"姚成浩\", \"陈恺\"],\r\n");
      out.write("            [\"10/7/2017\",0,0,2427,6177,12277,3326],\r\n");
      out.write("\r\n");
      out.write("            [\"10/8/2017\",12354,0,15201,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/9/2017\",16162,0,533,0,16378,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/10/2017\",0,8715,65616,29212,0,19829],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",0,0,0,17010,0,455],\r\n");
      out.write("\r\n");
      out.write("            [\"10/15/2017\",0,4247,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",4411,0,0,0,0,0]\r\n");
      out.write("\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"黄哲程\", \"王征\", \"郑鸿豪\", \"朱楷正\", \"姚成浩\", \"陈恺\"],\r\n");
      out.write("                label: \"热门访问量\"\r\n");
      out.write("            },\r\n");
      out.write("            xAxis: {\r\n");
      out.write("                field: \"xfield\",\r\n");
      out.write("                label: \"时间\"\r\n");
      out.write("            },\r\n");
      out.write("            legend: {\r\n");
      out.write("                tips: {\r\n");
      out.write("                    enabled: true,\r\n");
      out.write("                    content: function (e) {\r\n");
      out.write("\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        };\r\n");
      out.write("        //Chartx.line开始初始化chart实例\r\n");
      out.write("        var chartx = Chartx.line(\"secondTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
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
