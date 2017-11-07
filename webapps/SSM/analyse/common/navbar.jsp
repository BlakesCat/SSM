<%--
  Created by IntelliJ IDEA.
  User: 杨胜
  Date: 2017/11/6
  Time: 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sui-navbar navbar-inverse">
    <div class="navbar-inner"  >
        <div class="sui-container" align="center">
            <br>
            <a href="#" class="sui-brand" >天津市大学软件学院</a>
            <ul class="sui-nav">
                <li class="active"><a href="/SSM/analyse/page/index.jsp">首页</a>
                </li>
                <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">新浪新闻信息分析
                    <br>
                    <i class="caret"></i></a>
                    <ul role="menu" class="sui-dropdown-menu">

                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/sinaEditor.jsp">新浪新闻作者分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/sinaComment.jsp">新浪新闻作者时间点击率分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/sinaSource.jsp">新浪新闻来源分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/sinaTime.jsp">新浪新闻来源时间点击率分析</a></li>

                    </ul>
                </li>


                <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">网易新闻信息分析
                    <br>
                    <i class="caret"></i></a>
                    <ul role="menu" class="sui-dropdown-menu">

                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/wangEditor.jsp">热门新闻作者分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/wangSource.jsp">热门新闻来源分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/wangComment.jsp">热门新闻作者访问时间分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/wangTime.jsp">热门新闻来源访问时间分析</a></li>

                    </ul>
                </li>

                <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">AcFun网新闻信息分析
                    <br>
                    <i class="caret"></i></a>
                    <ul role="menu" class="sui-dropdown-menu">

                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/aEditor.jsp">新闻作者访问分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/aoEditor.jsp">新闻来源评论分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/aSource.jsp">新闻访问量时间分析</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/SSM/analyse/dataAnalyse/aoSource.jsp">新闻评论量时间分析</a></li>

                    </ul>
                </li>

            </ul>
            <%--<div align="right">--%>
                <%--<li>--%>
                    <%--<a href="/SSM/analyse/page/SinaSearch.jsp">新浪新闻信息查询--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</div>--%>
            <%--<br>--%>
            <%--<form class="sui-form sui-form pull-right">--%>

            <%--</form>--%>
        </div>

    </div>
</div>
