/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-10-12 03:10:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.shxt.DBUtils.*;

public final class employee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("com.shxt.DBUtils");
    _jspx_imports_packages.add("java.util");
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>员工列表</title>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("  $(\".click\").click(function(){\r\n");
      out.write("  $(\".tip\").fadeIn(200);\r\n");
      out.write("  });\r\n");
      out.write("  \r\n");
      out.write("  $(\".tiptop a\").click(function(){\r\n");
      out.write("  $(\".tip\").fadeOut(200);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("  $(\".sure\").click(function(){\r\n");
      out.write("  $(\".tip\").fadeOut(100);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("  $(\".cancel\").click(function(){\r\n");
      out.write("  $(\".tip\").fadeOut(100);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"place\">\r\n");
      out.write("    <span>位置：</span>\r\n");
      out.write("    <ul class=\"placeul\">\r\n");
      out.write("    <li><a href=\"main.jsp\">首页</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"rightinfo\">\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"tools\">\r\n");
      out.write("    \r\n");
      out.write("    \t<ul class=\"toolbar\">\r\n");
      out.write("        <li class=\"click\"><a href=\"employeeAdd.jsp\"><span><img src=\"images/t01.png\" /></span>添加</a></li>\r\n");
      out.write("        <li class=\"click\"><span><img src=\"images/t02.png\" /></span>修改</li>\r\n");
      out.write("        <li><span><img src=\"images/t03.png\" /></span>删除</li>\r\n");
      out.write("        <li><span><img src=\"images/t04.png\" /></span>统计</li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <ul class=\"toolbar1\">\r\n");
      out.write("        <li><span><img src=\"images/t05.png\" /></span>设置</li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"tools\">\r\n");
      out.write("            <form action=\"employeeCheck.jsp\" method=\"post\">\r\n");
      out.write("    \t    <ul class=\"seachform\">\t\t    \r\n");
      out.write("\t\t    <li><label></label><input name=\"em_number\" type=\"text\" class=\"scinput\" placeholder=\"输入员工序号\" /></li>\r\n");
      out.write("\t\t    <li><label></label><input name=\"em_name\" type=\"text\" class=\"scinput\" placeholder=\"输入员工姓名\" /></li>\r\n");
      out.write("\t\t    <li><label></label><input name=\"em_sex\" type=\"text\" class=\"scinput\" placeholder=\"输入员工性别 \" /></li>\r\n");
      out.write("\t\t    <li><label></label><input name=\"em_position\" type=\"text\" class=\"scinput\" placeholder=\"输入员工职位\" /></li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    \t\t   \t    \r\n");
      out.write("\t\t    <li><label>&nbsp;</label><input name=\"\" type=\"submit\" class=\"scbtn\" value=\"查询\"/></li>\t\t    \r\n");
      out.write("\t\t    </ul></form>\r\n");
      out.write("                \r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <table class=\"tablelist\">\r\n");
      out.write("    \t<thead>\r\n");
      out.write("    \t<tr>\r\n");
      out.write("        <th><input name=\"\" type=\"checkbox\" value=\"\" checked=\"checked\"/></th>\r\n");
      out.write("        <th>序号<i class=\"sort\"><img src=\"images/px.gif\" /></i></th>\r\n");
      out.write("        <th>员工姓名</th>\r\n");
      out.write("        <th>性别</th>\r\n");
      out.write("        <th>电话</th>\r\n");
      out.write("        <th>住址</th>\r\n");
      out.write("        <th>职位</th>\r\n");
      out.write("        <th>操作</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </thead>\r\n");
      out.write("        <tbody>\r\n");
      out.write("        ");

        int nowPage=1;
        int pageSize=9;
        int sumPage=0;
        int dataCount=0;
        if(request.getParameter("nowPage")!=null){
        	nowPage=Integer.parseInt(request.getParameter("nowPage"));
        }
        DBUtils db= new DBUtils();
        String sql="select * from tbl_employee ";
        sql=sql+"limit "+((nowPage-1)*pageSize)+","+pageSize;
        System.out.print(sql);
        String sql1="select count(*) as num from tbl_employee";
        List<HashMap<String,String>> list=db.queryByList(sql,new String[]{});
        List<HashMap<String,String>> countResult=db.queryByList(sql1,new String[]{});
        dataCount=Integer.parseInt(countResult.get(0).get("num"));
        sumPage=dataCount%10==0?dataCount/10:(dataCount/10+1);
        for(int i=0;i<list.size();i++){
        
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("        <td><input name=\"\" type=\"checkbox\" value=\"\" /></td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_number"));
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_name"));
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_sex"));
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_phone"));
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_address"));
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(list.get(i).get("em_position"));
      out.write("</td>\r\n");
      out.write("        <td><a href=\"employeeUpdate.jsp?em_number=");
      out.print(list.get(i).get("em_number") );
      out.write("\" class=\"tablelink\">更改</a>     <a href=\"employeeDelete.jsp?em_number=");
      out.print(list.get(i).get("em_number") );
      out.write("\"class=\"tablelink\"> 删除</a></td>\r\n");
      out.write("        </tr> \r\n");
      out.write("        ");
} 
      out.write("  \r\n");
      out.write("        </tbody>\r\n");
      out.write("    </table>\r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("     <div class=\"pagin\">\r\n");
      out.write("    \t<div class=\"message\">共<i class=\"blue\">");
      out.print(dataCount );
      out.write("</i>条记录，当前显示第&nbsp;<i class=\"blue\">");
      out.print(nowPage );
      out.write("&nbsp;</i>页</div>\r\n");
      out.write("        <ul class=\"paginList\">\r\n");
      out.write("        <li class=\"paginItem\"><a href=\"movies.jsp?nowPage=1\">首页</a></li>\r\n");
      out.write("        <li class=\"paginItem\"><a href=\"movies.jsp?nowPage=");
      out.print(nowPage==1?1:nowPage-1 );
      out.write("\">上一页</a></li>\r\n");
      out.write("        <li class=\"paginItem\"><a href=\"movies.jsp?nowPage=");
      out.print(nowPage==sumPage?sumPage:nowPage+1 );
      out.write("\">下一页</a></li>\r\n");
      out.write("        <li class=\"paginItem\"><a href=\"movies.jsp?nowPage=");
      out.print(sumPage );
      out.write("\">末页</a></li>\r\n");
      out.write("        <li class=\"paginItem\"><a href=\"javascript:;\"><span class=\"pagenxt\"></span></a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
