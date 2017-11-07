<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>热门新闻来源分析</title>
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
        <h2>新闻来源访问量分析</h2>
        <h3>热门新闻来源访问Top30</h3>
    </span>
    <div id="techTest" style="width:1000px;height:900px;">
    </div>

<script>
    var data = [

            ["xfield", "percent"],
        ["大河网", 272477],
        ["北青网-北京青年报",241020],
        ["澎湃新闻网",237679],
        ["央广网",198707],
        ["中国江苏网", 187593],
        ["新华网", 153230],
        ["网易体育", 145157],
        ["中国新闻网",128974],
        ["重庆晨报", 125067],
        ["乐清日报", 124729],

        ["荆楚网", 113759],
        ["环球时报-环球网", 113400],
        ["钱江晚报", 98166],
        ["网易娱乐", 89346],
        ["21世纪经济报道", 64799],
        ["新京报", 64017],
        ["财经网", 41150],
        ["中国日报网", 35781],
        ["现代金报", 32899],
        ["中国台湾网", 31715],

        ["肆客足球APP", 29628],
        ["新京报即时新闻", 27316],
        ["法制晚报", 16482],
        ["东方网", 16291],
        ["重案组37号", 15846],
        ["现代快报", 15545],
        ["成都商报", 13059],
        ["华商报", 12716],
        ["观海解局", 12354],
        ["荆楚网-楚天都市报", 12024]

    ];
    var options = {
        type: "horizontal",
        yAxis: {
            field: ["percent"],
            label: "访问量"
        },
        xAxis: {
            field: ["xfield"],
            label: "热门新闻来源"
        }
    }

    Chartx.bar("techTest", data, options);
</script>


</div>
</body>
</html>