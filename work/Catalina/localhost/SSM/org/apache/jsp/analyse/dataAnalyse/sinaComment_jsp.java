/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-11-07 09:05:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.analyse.dataAnalyse;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sinaComment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div id=\"allTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>陈琰 SN225新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"secondTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>初晓慧新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"thridTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>桂强新闻作者时间点击率分析</h3>\r\n");
      out.write("    <br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"fourTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>霍宇昂新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"fifthTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>李伟山新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"sixTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>刘光博新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"sevenTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>时鑫新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"eightTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>马骁潇新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"nineTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>张迪新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"tenTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>张岩新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"aTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>张义凌新闻作者时间点击率分析</h3><br>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"bTest\" style=\"width:1200px;height:300px;\"></div>\r\n");
      out.write("    <h3>张玉新闻作者时间点击率分析</h3><br><br>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("    //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("    //第一行是表头。\r\n");
      out.write("    var data = [\r\n");
      out.write("\r\n");
      out.write("        [\"xfield\", \"法制晚报\", \"新京报\", \"中国新闻网\", \"中国青年报\", \"华商报\", \"经济参考报\"],\r\n");
      out.write("        [\"10/10/2017\", 1409, 0, 0, 0, 0,0],\r\n");
      out.write("\r\n");
      out.write("        [\"10/11/2017\", 0, 5, 58, 351, 0, 0],\r\n");
      out.write("\r\n");
      out.write("        [\"10/12/2017\", 0, 9, 27, 80, 710, 0],\r\n");
      out.write("\r\n");
      out.write("        [\"10/13/2017\", 1404, 0, 0, 0, 0, 415],\r\n");
      out.write("\r\n");
      out.write("        [\"10/23/2017\", 0, 0, 0, 0, 3, 0],\r\n");
      out.write("\r\n");
      out.write("        [\"10/24/2017\",0, 0, 0, 0, 4, 0]\r\n");
      out.write("    ];\r\n");
      out.write("\r\n");
      out.write("    //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("    var options = {\r\n");
      out.write("        yAxis: {\r\n");
      out.write("            field: [\"法制晚报\", \"新京报\", \"中国新闻网\", \"中国青年报\", \"华商报\", \"经济参考报\"],\r\n");
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
      out.write("//       ,\"十九大新闻中心\",\r\n");
      out.write("//        \"新华视点\",\"央广网\",\"政府网站\" ,\"中国经济网\",\"中国青年报\",\"中国日报\",\"中国天气网\",\"中国政府网\",\"中央纪委监察部网站\"\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"中国新闻网\", \"环球时报\", \"央视新闻\", \"人民日报海外版-海外网\", \"环球网\", \"新华社\", \"澎湃新闻\", \"参考消息\",\"国防部网站\"],\r\n");
      out.write("            [\"10/10/2017\", 8, 36, 5, 0, 0,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 11, 51, 149, 47, 717, 323,1050,0,1],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 341, 241, 853, 911, 18, 109,0,47,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\", 2, 0, 55, 102, 59, 0,2981,15,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",579, 0, 0, 0, 519, 0,0,7,0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [ \"中国新闻网\", \"环球时报\", \"央视新闻\", \"人民日报海外版-海外网\", \"环球网\", \"新华社\", \"澎湃新闻\", \"参考消息\",\"国防部网站\"],\r\n");
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
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"法律与生活杂志\", \"新京报\", \"解放日报\", \"法制晚报\", \"中国经济网\", \"中青在线\",\"澎湃新闻\"],\r\n");
      out.write("            [\"10/10/2017\", 627, 0, 0, 0, 0,0,71],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 600, 2150, 79, 64, 29, 4915,3910],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 437, 1208, 40, 0, 1, 0,4968],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\", 0, 377, 2423, 0, 1, 5,563],\r\n");
      out.write("\r\n");
      out.write("            [\"10/23/2017\", 0, 0, 0, 0, 0, 0,1],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",0, 334, 0, 0, 0, 0,17]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [ \"法律与生活杂志\", \"新京报\", \"解放日报\", \"法制晚报\", \"中国经济网\", \"中青在线\",\"澎湃新闻\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"thridTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"中国政府网\", \"中国新闻网\", \"中国青年报\", \"澎湃新闻\", \"环球网\", \"中国经济网\",\"人民日报海外版-海外网\"],\r\n");
      out.write("            [\"10/10/2017\",0,0,0,0,0,1662,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",1029,5,0,4008,0,1869,204],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 0,10,1,1702,44,0,30],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",0,382,3,9,34,0,0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\",0,0,0,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",1,0,0,3,0,0,0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"中国政府网\", \"中国新闻网\", \"中国青年报\", \"澎湃新闻\", \"环球网\", \"中国经济网\",\"人民日报海外版-海外网\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"fourTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"参考消息\"],\r\n");
      out.write("            [\"10/10/2017\", 144],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 3560],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 637],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",147 ]\r\n");
      out.write("\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [ \"参考消息\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"fifthTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"法律与生活杂志\", \"环球网\", \"人民日报海外版-海外网\", \"中国地震局网站\", \"中国新闻网\", \"中国青年报\"],\r\n");
      out.write("//            [\"10/10/2017\",0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",7,0,1549,1,1398,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\",2,0,272,54,6382,13],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",0,46,116,0,6,0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\",0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",0,17,0,4,0,377]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"法律与生活杂志\", \"环球网\", \"人民日报海外版-海外网\", \"中国地震局网站\", \"中国新闻网\", \"中国青年报\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"sixTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"参考消息\", \"澎湃新闻\", \"人民日报海外版-海外网\", \"新华视点\", \"央视新闻\"],\r\n");
      out.write("            [\"10/10/2017\",0,933,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",0,0,0,155,0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/12/2017\",2,0,272,54,6382,13],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",294,0,45,0,539],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\",0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",4,0,0,0,0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"参考消息\", \"澎湃新闻\", \"人民日报海外版-海外网\", \"新华视点\", \"央视新闻\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"sevenTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"澎湃新闻\"],\r\n");
      out.write("            [\"10/10/2017\",0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",2],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\",12],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\",0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/24/2017\",]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"澎湃新闻\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"eightTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"人民日报海外版-海外网\", \"央视新闻\", \"新华社\", \"中国新闻网\", \"外交部网站\", \"参考消息\"],\r\n");
      out.write("//            [\"10/10/2017\",],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\",0,119,223,3070,0,5255],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\",400,203,0,43,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\",4546,0,65,79,8154,0],\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\",0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",0,1,0,0,0,0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"人民日报海外版-海外网\", \"央视新闻\", \"新华社\", \"中国新闻网\", \"外交部网站\", \"参考消息\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"nineTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("                [\"xfield\", \"环球网\", \"人民日报海外版-海外网\", \"新华社\", \"央视新闻\", \"中国新闻网\", \"央视财经\", \"澎湃新闻\"],\r\n");
      out.write("            [\"10/10/2017\", 3,10,1,0,0,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 379,1499,0,383,3658,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 0,0,17,111,141,0,0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\", 0,709,415,34,171,0,989]\r\n");
      out.write("\r\n");
      out.write("//            [\"10/23/2017\", 0],\r\n");
      out.write("//\r\n");
      out.write("//            [\"10/24/2017\",0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"环球网\", \"人民日报海外版-海外网\", \"新华社\", \"央视新闻\", \"中国新闻网\", \"央视财经\", \"澎湃新闻\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"tenTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"华龙网\", \"华商网\", \"中国新闻网\", \"成都商报\", \"大洋网\"],\r\n");
      out.write("            [\"10/10/2017\", 0, 0, 0, 121, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 0, 0, 0, 0, 172],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 12, 2, 1242, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\", 1404, 213, 122, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/23/2017\", 0, 0, 1, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",129, 5, 0, 0, 0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"华龙网\", \"华商网\", \"中国新闻网\", \"成都商报\", \"大洋网\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"aTest\", data, options).then(function (chart) {\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，\r\n");
      out.write("        //第一行是表头。\r\n");
      out.write("        var data = [\r\n");
      out.write("\r\n");
      out.write("            [\"xfield\", \"澎湃新闻\", \"新京报\", \"央广网\", \"重庆时报\", \"中国新闻网\"],\r\n");
      out.write("            [\"10/10/2017\", 74, 0, 35, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/11/2017\", 2383, 1, 0, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/12/2017\", 17323, 0, 0, 18, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/13/2017\", 882, 1, 0, 204, 1405],\r\n");
      out.write("\r\n");
      out.write("            [\"10/23/2017\", 87, 0, 0, 0, 0],\r\n");
      out.write("\r\n");
      out.write("            [\"10/24/2017\",950, 0, 4685, 0, 0]\r\n");
      out.write("        ];\r\n");
      out.write("\r\n");
      out.write("        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段\r\n");
      out.write("        var options = {\r\n");
      out.write("            yAxis: {\r\n");
      out.write("                field: [\"澎湃新闻\", \"新京报\", \"央广网\", \"重庆时报\", \"中国新闻网\"],\r\n");
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
      out.write("        var chartx = Chartx.line(\"bTest\", data, options).then(function (chart) {\r\n");
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
