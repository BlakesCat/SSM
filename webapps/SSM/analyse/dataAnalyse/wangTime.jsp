<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻来源访问点击率分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body>
<div align="center">
<jsp:include page="/analyse/common/navbar.jsp"/>
    <h3>新闻来源访问时间点击率分析</h3>

<div id="allTest" style="width:1600px;height:400px;"></div>
    <br><br><br>

    <div id="techTest" style="width:1600px;height:400px;"></div>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "中国新闻网", "环球时报-环球网", "网易娱乐", "新华网"],
            [" 4/10/2016",7,0,0,0],

            ["5/14/2016",0,0,0,204],

            ["5/15/2016",259,0,0,0],

            ["5/16/2016",0,10164,0,0],

            ["5/18/2016",0,354,0,354],

            ["5/19/2016",843,2,0,0],

            ["5/20/2016",7326,21412,0,0],

            ["5/21/2016",6248,16358,0,116795],

            ["5/22/2016",107871,0,22721,32490],

            ["5/23/2016",3886,5,25878,5],

            [" 5/24/2016", 0,0,47,0],

            [" 10/6/2017", 0,0,332,0],

            [" 10/7/2017", 0,0,4226,0],

            [" 10/8/2017", 0,0,0,1],

            [" 10/9/2017", 316,0,14953,981],

            [" 10/10/2017",1528,6142,20734,0],

            [" 10/11/2017", 0,0,455,0],

            [" 10/23/2017", 530,0,0,0],

            [" 10/24/2017",160,524,0,2400]

        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["中国新闻网", "环球时报-环球网", "网易娱乐", "新华网"],
                label: "热门访问量"
            },
            xAxis: {
                field: "xfield",
                label: "时间"
            },
            legend: {
                tips: {
                    enabled: true,
                    content: function (e) {

                    }
                }
            }
        };
        //Chartx.line开始初始化chart实例
        var chartx = Chartx.line("allTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "荆楚网", "央广网", "新京报即时新闻", "澎湃新闻网"],
            ["5/18/2016",0,0,0,34524],

            ["5/18/2016",0,0,0,77146],

            ["5/19/2016",0,46014,0,14651],

            ["5/20/2016",29,0,18266,4817],

            ["5/21/2016",2032,0,1461,5067],

            ["5/22/2016",111174,147779,0,2097],

            ["5/23/2016",524,4914,0,11956],

            [" 5/24/2016", 0,0,7589,87421]

        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["荆楚网", "央广网", "新京报即时新闻", "澎湃新闻网"],
                label: "热门访问量"
            },
            xAxis: {
                field: "xfield",
                label: "时间"
            },
            legend: {
                tips: {
                    enabled: true,
                    content: function (e) {

                    }
                }
            }
        };
        //Chartx.line开始初始化chart实例
        var chartx = Chartx.line("techTest", data, options).then(function (chart) {
        });
    </script>


</div>
</body>
</html>