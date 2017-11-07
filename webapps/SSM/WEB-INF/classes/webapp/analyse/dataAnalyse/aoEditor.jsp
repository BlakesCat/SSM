<%--
  Created by IntelliJ IDEA.
  User: 杨胜
  Date: 2017/10/26
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻来源评论分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body >

<div align="center">
<jsp:include page="/analyse/common/navbar.jsp"/>
<!-- 为Chartx准备一个具备大小（宽高）的Dom -->
    <h3 >新闻作者评论分析</h3><br><br>
    <h3>新闻来源评论量Top20</h3><br>
<div id="allTest" style="width:1000px;height:800px;">
</div>


<%--<!-- 为Chartx准备一个具备大小（宽高）的Dom -->--%>
<%--<div id="techTest" style="width:1000px;height:1000px;">--%>
<%--</div>--%>
    <%--<h4>作者新闻评论量</h4><br>--%>

<!-- 为Chartx准备一个具备大小（宽高）的Dom -->
<%--<div id="marketTest" style="width:500px;height:300px;">--%>
</div>


    <script>
        var data = [
            ["xfield", "percent"],

            ["会计", 314078],
            ["栀颜丶", 193871],
            ["梦斩千钧", 109694],
            ["漫域宽频", 42558],
            ["物种日历", 29544],
            ["氪星情报局",27966],
            ["玩数码频道", 27709],
            ["闲看花落", 24743],
            ["建筑", 21436],
            ["总经理屠老总", 18037],
            ["AcFun游戏中心", 17491],
            ["牛奶月小芒", 17031],
            ["备胎说车", 13414],
            ["我在乎你在乎的在乎", 10910],
            ["寄昙说", 10896],
            ["看懂Studio", 9712],
            ["专注路过1000年", 9101],
            ["玩家堂网", 8952],
            ["胡大春卷",8762],
            ["潘吉诃德", 7976],
            ["汽车洋葱圈", 6053]

        ];
        var options = {
            type: "horizontal",
            yAxis: {
                field: ["percent"]
            },
            xAxis: {
                field: ["xfield"]
            }
        }

        Chartx.bar("allTest", data, options);
    </script>



</div>
</body>

</html>
