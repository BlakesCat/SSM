<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻来源分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body>
<div align="center">
<jsp:include page="/analyse/common/navbar.jsp"/>
    <span>
        <h3>新闻来源访问量分析</h3>
         <h3>热门新闻来源访问量Top30</h3>
    </span>
    <div id="techTest" style="width:1100px;height:950px;">
    </div>
    <%--<div id="allTest" style="width:600px;height:300px;">--%>
<%--</div>--%>

<script>
    var data = [
        ["xfield", "percent"],
//        ["重庆时报网", 1],
//        ["重庆时报",1],
//        ["重庆商报",1],
//        ["重庆日报",1],
//        ["重庆晨报", 1],
//        ["中央纪委监察部网站", 1],
//        ["中青在线", 1],
//        ["中国政府网",1],
//        ["中国证券报-中证网", 2],
//        ["中国新闻网", 2],
//
//        ["中国天气网", 2],
//        ["中国日报", 2],
//        ["中国青年报", 2],
//        ["中国经济周刊", 3],
//        ["中国经济网", 5],
//        ["中国地震局网站", 7],
//        ["中工网", 7],
//        ["政府网站", 9],
//        ["证券日报", 9],
//        ["长安剑", 13],
//
//        ["云南网", 19],
//        ["银川日报", 20],
//        ["央视财经", 20],
//        ["央广网", 26],
//        ["新浪综合", 27],
//        ["新京报", 29],
//        ["新华网", 60],
//        ["新华视点", 63],
//        ["新华社", 66],
//        ["现代快报", 93],
//
//        ["外交部网站", 95],
//        ["四川省人民政府网站", 95],
//        ["司法部网站", 109],
//        ["食药监总局",121],
//        ["十九大新闻中心", 172],
//        ["商务部网站", 192],
//        ["陕西省人民政府网站", 214],
//        ["人民日报中央厨房", 220],
//        ["人民日报海外版-海外网", 222],
//        ["澎湃新闻", 224],

        ["南方日报", 235],
        ["每日经济新闻", 304],
        ["昆明日报", 328],
        ["科技日报", 335],
        ["看看新闻KNEWS", 378],
        ["军报记者", 415],
        ["经济日报", 717],
        ["经济参考报", 846],
        ["解放日报", 1036],
        ["环球网", 1155],

        ["环球时报", 1361],
        ["华声在线-湖南日报", 1579],
        ["华商网", 1636],
        ["华商晨报", 1986],
        ["华商报", 2470],
        ["华龙网", 2542],
        ["湖北日报网", 3563],
        ["国防部网站", 4143],
        ["贵阳网", 4480],
        ["工人日报", 4666],

        ["法制晚报网", 4986],
        ["法制晚报", 6630],
        ["法律与生活杂志", 8154],
        ["大洋网-广州日报", 10166],
        ["大洋网", 10661],
        ["成都商报", 15866],
        ["参考消息", 17102],
        ["北京时间", 21804],
        ["21世纪经济报道", 43805]

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

    Chartx.bar("techTest", data, options);
</script>

<%--<script>--%>
    <%--var data = [--%>
        <%--["xfield", "销售", "营销", "策划"],--%>
        <%--["市场与销售类", 501, 23, 7]--%>
    <%--];--%>
    <%--var options = {--%>
        <%--type: "horizontal",--%>
        <%--proportion: true,--%>
        <%--yAxis: {--%>
            <%--field: [[ "销售", "营销", "策划"]]--%>
        <%--},--%>
        <%--xAxis: {--%>
            <%--field: ["xfield"]--%>
        <%--}--%>
    <%--}--%>

    <%--Chartx.bar("allTest", data, options);--%>
<%--</script>--%>

</div>
</body>
</html>