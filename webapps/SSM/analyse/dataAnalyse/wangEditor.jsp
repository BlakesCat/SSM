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
    <title>热门新闻作者访问分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body >

<div align="center" >
<jsp:include page="/analyse/common/navbar.jsp"/>
<!-- 为Chartx准备一个具备大小（宽高）的Dom -->
    <h2 >热门新闻作者访问分析</h2>
    <br>
    <h3>热门新闻作者访问量Top20</h3>
    <br>
<div id="allTest" style="width:1100px;height:800px;">
</div>
    <br><br>

    <script>
    var data = [
    ["xfield", "percent"],
    ["李旭朝", 730999],
    ["俞诗瑜",481549],
    ["谷莹",382299],
    ["马婧雯",314028],
    ["杨易颖", 191540],
    ["张洋洋", 126950],
    ["郑鸿豪", 83777],
    ["仝贺",69271],
    ["朱楷正", 52399],
    ["陈恺", 42477],

    ["马路遥", 41774],
    ["彭惠智", 40617],
    ["黄哲程", 32927],
    ["姚成浩", 28655],
    ["张腾", 27984],
    ["乔敬", 23399],
    ["李彤", 14883],
    ["赵亮亮", 14721],
    ["杨雯婕", 13950],
    ["王征", 12962]

    ];
    var options = {
    type: "horizontal",
    yAxis: {
    field: ["percent"],
        label: "访问量"
    },
    xAxis: {
    field: ["xfield"],
    label: "热门新闻作者"
    }
    }

    Chartx.bar("allTest", data, options);
    </script>

</div>
</body>

</html>
