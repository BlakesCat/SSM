<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻时间点击率分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body>
<div align="center">
<jsp:include page="/analyse/common/navbar.jsp"/>
    <h3>新闻时间点击率分析</h3>

<div id="allTest" style="width:1200px;height:600px;"></div>
    <h3>2017年10月10日热门新闻来源访问率</h3>

    <div id="techTest" style="width:1200px;height:650px;"></div>
    <h3>2017年10月11日热门新闻来源访问率</h3>

    <div id="dataTest" style="width:1200px;height:600px;"></div>
    <h3>2017年10月12日热门新闻来源访问率</h3>

    <div id="bigTest" style="width:1200px;height:600px;"></div>
    <h3>2017年10月13日热门新闻来源访问率</h3>

    <div id="dateTest" style="width:1200px;height:300px;"></div>
    <h3>2017年10月23日热门新闻来源访问率</h3>

    <div id="finaTest" style="width:1200px;height:600px;"></div>
    <h3>2017年10月24日热门新闻来源访问率</h3>
    <br><br>
    <script>
    var data = [

        ["xfield", "percent"],
        ["中国经济网", 1662],
        ["法制晚报", 1431],
        ["澎湃新闻", 1078],
        ["法律与生活杂志", 627],
        ["新浪综合", 233],
        ["参考消息", 144],
        ["成都商报", 121],
        ["环球时报", 36],
        ["央广网", 35],
        ["军报记者", 20],
        ["人民日报海外版-海外网",10],
        ["中国新闻网", 8],
        ["央视新闻", 5],
        ["中央纪委监察部网站", 3],
        ["环球网", 3],
        ["新华社",1]
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

            ["xfield", "percent"], ["央视财经", 14869], ["澎湃新闻", 12240], ["参考消息", 8815], ["中青在线", 4981], ["中国新闻网", 4925],
            ["长安剑", 4635], ["人民日报海外版-海外网", 3520], ["北京时间", 2246], ["新京报", 2156], ["中国经济网", 1898],
            ["环球网",1096], ["中国政府网", 1029], ["法律与生活杂志", 607], ["新华社", 548], ["经济参考报", 535],
            ["中国青年报",370], ["中国之声", 369], ["央视新闻",275], ["司法部网站", 224],
            ["新华视点",192]
//            ["大洋网", 172],
//            ["云南网",93],["解放日报", 79],
//            ["法制晚报",64],["21世纪经济报道", 62],
//            ["环球时报",51],["昆明日报", 27],
//            ["人民日报中央厨房",19],["重庆时报网", 13],
//            ["每日经济新闻",9],["中央纪委监察部网站", 8],
//            ["央广网",3],["政府网站", 3], ["中国天气网",3],["十九大新闻中心", 2],
//            ["国防部网站",1], ["科技日报",1], ["四川省人民政府网站",1],  ["中工网",1]

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

    <script>
        var data = [

            ["xfield", "percent"],
            ["澎湃新闻", 24005], ["工人日报", 10166], ["中国新闻网", 8178],
            ["人民日报海外版-海外网", 1613], ["央视新闻", 1397], ["新京报", 1272],
            ["华商报", 710], ["参考消息", 664], ["现代快报", 304],
            ["环球时报", 241], ["华龙网",206], ["新华社", 126],
            ["中国青年报", 96], ["大洋网-广州日报", 89], ["中国日报", 66],
            ["环球网",62], ["中国地震局网站", 54], ["解放日报",40],
            ["经济日报", 26], ["重庆时报",18]
//            ["政府网站", 13],
//            ["央广网",10],["新华网", 9], ["中国政府网",6],
//            ["法律与生活杂志", 2], ["华商网",2],["新浪综合", 2],
//            ["银川日报",2],["中国经济网", 2], ["南方日报",1]

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

        Chartx.bar("dataTest", data, options);
    </script>

    <script>
        var data = [

            ["xfield", "percent"],
            ["外交部网站", 8154], ["人民日报海外版-海外网", 5518], ["澎湃新闻", 5424],
            ["法制晚报", 2985], ["解放日报", 2423], ["中国新闻网", 2167],
            ["央广网", 1874], ["经济参考报", 1451], ["国防部网站", 1360],
            ["央视新闻", 628], ["新华社",480], ["参考消息", 456],

            ["法律与生活杂志", 437], ["中国证券报-中证网", 415],
            ["新京报",379], ["中央纪委监察部网站", 367], ["华商网",213],
            ["重庆时报", 204], ["环球网",139],["湖北日报网", 95]

//            ["重庆日报",66],["中国日报", 53], ["长安剑",31],
//            ["贵阳网", 7], ["商务部网站",7],["大洋网-广州日报", 6],
//            ["中青在线",5],["科技日报", 4], ["中国青年报",3],
//            ["法制晚报网",2],["证券日报", 2], ["重庆商报",2],
//            ["21世纪经济报道",1],["食药监总局", 1], ["中国地震局网站",1],
//            ["中国经济网",1],["重庆晨报", 1]
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

        Chartx.bar("bigTest", data, options);
    </script>

    <script>
        var data = [

            ["xfield", "percent"],
            ["北京时间", 224], ["看看新闻KNEWS", 214], ["澎湃新闻", 88],
            ["华商报", 3], ["华声在线-湖南日报", 1], ["中国新闻网", 1]

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

        Chartx.bar("dateTest", data, options);
    </script>

    <script>
        var data = [

                ["xfield", "percent"],
            ["参考消息", 11705], ["央广网", 4708], ["澎湃新闻", 970],
            ["中国新闻网", 579], ["中国青年报", 377], ["环球网", 336],
            ["新京报", 334], ["华龙网", 129], ["华商晨报", 29],
            ["华商网", 5], ["华商报", 4], ["政府网站", 4],
            ["中国地震局网站", 4], ["陕西省人民政府网站", 1], ["央视新闻", 1],
            ["中国经济周刊", 1], ["中国政府网", 1]
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

        Chartx.bar("finaTest", data, options);
    </script>


</div>
</body>
</html>