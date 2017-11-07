<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻作者时间点击率分析</title>
    <jsp:include page="/analyse/common/header.jsp"/>
    <!-- 这里用requirejs来做模块加载器 -->
    <script src="http://requirejs.org/docs/release/2.1.20/minified/require.js"></script>
    <!-- Chartx图表库文件引入，这里已1.9.21的cdn版本为例 -->
    <script src="http://g.tbcdn.cn/thx/charts/1.9.51/chartx/index-min.js"></script>
</head>
<body>
<div align="center">
<jsp:include page="/analyse/common/navbar.jsp"/>
<h3>新闻作者时间点击率分析</h3>

    <div id="allTest" style="width:1200px;height:400px;"></div>
    <h3>热门新闻作者2016年点击率分析</h3><br>

    <div id="secondTest" style="width:1200px;height:400px;"></div>
    <h3>热门新闻作者2017年点击率分析</h3><br>


    <script>
    //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
    //第一行是表头。
    var data = [

            ["xfield", "杨易颖", "李旭朝", "马路遥", "张洋洋", "谷莹", "仝贺", "赵亮亮", "张腾", "乔敬"],
        ["5/14/2016",0,0,0,0,204,0,0,0,0],

        ["5/15/2016",0,0,34524,259,0,0,11870,0,0],

        ["5/16/2016",0,0,0,0,0,10164,0,0,0],

        ["5/17/2016",0,0,0,0,0,0,496,0,1824],

        ["5/18/2016",0,354,0,77146,0,14566,0,0,0],

        ["5/19/2016",46062,0,0,0,96561,0,0,10,0],

        ["5/20/2016",39902,0,0,0,0,0,0,16534,21575],

        ["5/21/2016",18094,145553,842,0,0,0,0,0,0],

        ["5/22/2016",0,0,6408,49545,0,0,2355,0,0],

        ["5/23/2016",0,329981,0,285534,44541,44541,0,11440,0],

        [" 5/24/2016", 87482,255111,0,0,0,0,0,0,0]

    ];

    //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
    var options = {
        yAxis: {
            field: ["杨易颖", "李旭朝", "马路遥", "张洋洋", "谷莹", "仝贺", "赵亮亮", "张腾", "乔敬"],
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

            ["xfield", "黄哲程", "王征", "郑鸿豪", "朱楷正", "姚成浩", "陈恺"],
            ["10/7/2017",0,0,2427,6177,12277,3326],

            ["10/8/2017",12354,0,15201,0,0,0],

            ["10/9/2017",16162,0,533,0,16378,0],

            ["10/10/2017",0,8715,65616,29212,0,19829],

            ["10/11/2017",0,0,0,17010,0,455],

            ["10/15/2017",0,4247,0,0,0,0],

            ["10/24/2017",4411,0,0,0,0,0]

        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["黄哲程", "王征", "郑鸿豪", "朱楷正", "姚成浩", "陈恺"],
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
        var chartx = Chartx.line("secondTest", data, options).then(function (chart) {
        });
    </script>

</div>
</body>
</html>