<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻评论量分析</title>
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
        <h2>新闻评论量分析</h2>
    </span>


    <div id="allTest" style="width:1000px;height:400px;">
</div>
    <h3>2017年10月23日新闻评论量分析Top10</h3>
    <br> <br>

    <div id="techTest" style="width:1000px;height:400px;">
    </div>
    <h3>2017年10月24日新闻评论量分析Top10</h3><br><br>

    <script>
        var data = [

            ["xfield", "会计", "我在乎你在乎的在乎", "栀颜丶", "如果当初下手早", "日式神吐槽", "狂丸♂", "羽烈王", "汽车洋葱圈", "牛奶月小芒", "玩数码频道"],
            ["时间访问量", 250989, 99149, 45049, 17503, 17031, 12665,9915,8762,5780,5446]
        ];
        var options = {
            type: "horizontal",
            proportion: true,
            yAxis: {
                field: [[ "会计", "我在乎你在乎的在乎", "栀颜丶", "如果当初下手早", "日式神吐槽", "狂丸♂", "羽烈王", "汽车洋葱圈", "牛奶月小芒", "玩数码频道"]]
            },
            xAxis: {
                field: ["xfield"]
            }
        }

        Chartx.bar("allTest", data, options);
    </script>

    <script>
        var data = [

            ["xfield", "会计", "梦斩千钧", "栀颜丶", "我在乎你在乎的在乎", "微在趣闻社", "videocase", "氪星情报局", "汽车洋葱圈", "一抹微笑如萝莉", "备胎说车"],
            ["时间访问量", 172300, 106813, 66166, 55942, 17491, 6180,5986,5934,5912,5774]
        ];
        var options = {
            type: "horizontal",
            proportion: true,
            yAxis: {
                field: [[ "会计", "梦斩千钧", "栀颜丶", "我在乎你在乎的在乎", "微在趣闻社", "videocase", "氪星情报局", "汽车洋葱圈", "一抹微笑如萝莉", "备胎说车"]]
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