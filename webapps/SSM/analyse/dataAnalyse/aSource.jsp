<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻时间访问分析</title>
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
        <h2>新闻时间访问分析</h2>
    </span>
    <br>

    <div id="allTest" style="width:1000px;height:400px;">
</div>
    <h4>2017年10月23日新闻访问量分析Top10</h4>
    <br> <br>

    <div id="techTest" style="width:1000px;height:400px;">
    </div>
    <h4>2017年10月24日新闻访问量分析Top10</h4><br>

    <script>
        var data = [
            ["xfield", "percent"],
            ["会计", 1301],
            ["栀颜丶",236],
            ["我在乎你在乎的在乎",221],
            ["如果当初下手早",75],
            ["牛奶月小芒", 66],
            ["玩数码频道", 48],
            ["日式神吐槽", 47],
            ["羽烈王",41],
            ["专注路过1000年", 38],
            ["狂丸♂", 34]

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

    <script>
    var data = [
    ["xfield", "percent"],
    ["会计", 902],
    ["梦斩千钧",625],
    ["栀颜丶",370],
    ["我在乎你在乎的在乎",161],
    ["微在趣闻社", 95],
    ["备胎说车", 44],
    ["看懂Studio", 30],
    ["玩家堂网",30],
    ["汽车洋葱圈", 27],
    ["哈恩摩恩", 25]

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
</div>
</body>
</html>