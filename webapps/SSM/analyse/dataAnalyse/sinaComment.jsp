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

<div id="allTest" style="width:1200px;height:300px;"></div>
    <h3>陈琰 SN225新闻作者时间点击率分析</h3><br>

    <div id="secondTest" style="width:1200px;height:300px;"></div>
    <h3>初晓慧新闻作者时间点击率分析</h3><br>

    <div id="thridTest" style="width:1200px;height:300px;"></div>
    <h3>桂强新闻作者时间点击率分析</h3>
    <br>

    <div id="fourTest" style="width:1200px;height:300px;"></div>
    <h3>霍宇昂新闻作者时间点击率分析</h3><br>

    <div id="fifthTest" style="width:1200px;height:300px;"></div>
    <h3>李伟山新闻作者时间点击率分析</h3><br>

    <div id="sixTest" style="width:1200px;height:300px;"></div>
    <h3>刘光博新闻作者时间点击率分析</h3><br>

    <div id="sevenTest" style="width:1200px;height:300px;"></div>
    <h3>时鑫新闻作者时间点击率分析</h3><br>

    <div id="eightTest" style="width:1200px;height:300px;"></div>
    <h3>马骁潇新闻作者时间点击率分析</h3><br>

    <div id="nineTest" style="width:1200px;height:300px;"></div>
    <h3>张迪新闻作者时间点击率分析</h3><br>

    <div id="tenTest" style="width:1200px;height:300px;"></div>
    <h3>张岩新闻作者时间点击率分析</h3><br>

    <div id="aTest" style="width:1200px;height:300px;"></div>
    <h3>张义凌新闻作者时间点击率分析</h3><br>

    <div id="bTest" style="width:1200px;height:300px;"></div>
    <h3>张玉新闻作者时间点击率分析</h3><br><br>

    <script>
    //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
    //第一行是表头。
    var data = [

        ["xfield", "法制晚报", "新京报", "中国新闻网", "中国青年报", "华商报", "经济参考报"],
        ["10/10/2017", 1409, 0, 0, 0, 0,0],

        ["10/11/2017", 0, 5, 58, 351, 0, 0],

        ["10/12/2017", 0, 9, 27, 80, 710, 0],

        ["10/13/2017", 1404, 0, 0, 0, 0, 415],

        ["10/23/2017", 0, 0, 0, 0, 3, 0],

        ["10/24/2017",0, 0, 0, 0, 4, 0]
    ];

    //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
    var options = {
        yAxis: {
            field: ["法制晚报", "新京报", "中国新闻网", "中国青年报", "华商报", "经济参考报"],
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
//       ,"十九大新闻中心",
//        "新华视点","央广网","政府网站" ,"中国经济网","中国青年报","中国日报","中国天气网","中国政府网","中央纪委监察部网站"
        var data = [

            ["xfield", "中国新闻网", "环球时报", "央视新闻", "人民日报海外版-海外网", "环球网", "新华社", "澎湃新闻", "参考消息","国防部网站"],
            ["10/10/2017", 8, 36, 5, 0, 0,0,0,0,0],

            ["10/11/2017", 11, 51, 149, 47, 717, 323,1050,0,1],

            ["10/12/2017", 341, 241, 853, 911, 18, 109,0,47,0],

            ["10/13/2017", 2, 0, 55, 102, 59, 0,2981,15,0],

            ["10/24/2017",579, 0, 0, 0, 519, 0,0,7,0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: [ "中国新闻网", "环球时报", "央视新闻", "人民日报海外版-海外网", "环球网", "新华社", "澎湃新闻", "参考消息","国防部网站"],
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

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "法律与生活杂志", "新京报", "解放日报", "法制晚报", "中国经济网", "中青在线","澎湃新闻"],
            ["10/10/2017", 627, 0, 0, 0, 0,0,71],

            ["10/11/2017", 600, 2150, 79, 64, 29, 4915,3910],

            ["10/12/2017", 437, 1208, 40, 0, 1, 0,4968],

            ["10/13/2017", 0, 377, 2423, 0, 1, 5,563],

            ["10/23/2017", 0, 0, 0, 0, 0, 0,1],

            ["10/24/2017",0, 334, 0, 0, 0, 0,17]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: [ "法律与生活杂志", "新京报", "解放日报", "法制晚报", "中国经济网", "中青在线","澎湃新闻"],
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
        var chartx = Chartx.line("thridTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "中国政府网", "中国新闻网", "中国青年报", "澎湃新闻", "环球网", "中国经济网","人民日报海外版-海外网"],
            ["10/10/2017",0,0,0,0,0,1662,0],

            ["10/11/2017",1029,5,0,4008,0,1869,204],

            ["10/12/2017", 0,10,1,1702,44,0,30],

            ["10/13/2017",0,382,3,9,34,0,0],

//            ["10/23/2017",0,0,0,0,0,0,0],

            ["10/24/2017",1,0,0,3,0,0,0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["中国政府网", "中国新闻网", "中国青年报", "澎湃新闻", "环球网", "中国经济网","人民日报海外版-海外网"],
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
        var chartx = Chartx.line("fourTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "参考消息"],
            ["10/10/2017", 144],

            ["10/11/2017", 3560],

            ["10/12/2017", 637],

            ["10/13/2017",147 ]

        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: [ "参考消息"],
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
        var chartx = Chartx.line("fifthTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "法律与生活杂志", "环球网", "人民日报海外版-海外网", "中国地震局网站", "中国新闻网", "中国青年报"],
//            ["10/10/2017",0],

            ["10/11/2017",7,0,1549,1,1398,0],

            ["10/12/2017",2,0,272,54,6382,13],

            ["10/13/2017",0,46,116,0,6,0],

//            ["10/23/2017",0],

            ["10/24/2017",0,17,0,4,0,377]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["法律与生活杂志", "环球网", "人民日报海外版-海外网", "中国地震局网站", "中国新闻网", "中国青年报"],
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
        var chartx = Chartx.line("sixTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "参考消息", "澎湃新闻", "人民日报海外版-海外网", "新华视点", "央视新闻"],
            ["10/10/2017",0,933,0,0,0],

            ["10/11/2017",0,0,0,155,0],

//            ["10/12/2017",2,0,272,54,6382,13],

            ["10/13/2017",294,0,45,0,539],

//            ["10/23/2017",0],

            ["10/24/2017",4,0,0,0,0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["参考消息", "澎湃新闻", "人民日报海外版-海外网", "新华视点", "央视新闻"],
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
        var chartx = Chartx.line("sevenTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "澎湃新闻"],
            ["10/10/2017",0],

            ["10/11/2017",2],

            ["10/12/2017",12],

            ["10/13/2017",0],

//            ["10/23/2017",0],

//            ["10/24/2017",]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["澎湃新闻"],
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
        var chartx = Chartx.line("eightTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [


            ["xfield", "人民日报海外版-海外网", "央视新闻", "新华社", "中国新闻网", "外交部网站", "参考消息"],
//            ["10/10/2017",],

            ["10/11/2017",0,119,223,3070,0,5255],

            ["10/12/2017",400,203,0,43,0,0],

            ["10/13/2017",4546,0,65,79,8154,0],

//            ["10/23/2017",0],

            ["10/24/2017",0,1,0,0,0,0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["人民日报海外版-海外网", "央视新闻", "新华社", "中国新闻网", "外交部网站", "参考消息"],
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
        var chartx = Chartx.line("nineTest", data, options).then(function (chart) {
        });
    </script>

    <script>

        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [
                ["xfield", "环球网", "人民日报海外版-海外网", "新华社", "央视新闻", "中国新闻网", "央视财经", "澎湃新闻"],
            ["10/10/2017", 3,10,1,0,0,0,0],

            ["10/11/2017", 379,1499,0,383,3658,0],

            ["10/12/2017", 0,0,17,111,141,0,0],

            ["10/13/2017", 0,709,415,34,171,0,989]

//            ["10/23/2017", 0],
//
//            ["10/24/2017",0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["环球网", "人民日报海外版-海外网", "新华社", "央视新闻", "中国新闻网", "央视财经", "澎湃新闻"],
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
        var chartx = Chartx.line("tenTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "华龙网", "华商网", "中国新闻网", "成都商报", "大洋网"],
            ["10/10/2017", 0, 0, 0, 121, 0],

            ["10/11/2017", 0, 0, 0, 0, 172],

            ["10/12/2017", 12, 2, 1242, 0, 0],

            ["10/13/2017", 1404, 213, 122, 0, 0],

            ["10/23/2017", 0, 0, 1, 0, 0],

            ["10/24/2017",129, 5, 0, 0, 0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["华龙网", "华商网", "中国新闻网", "成都商报", "大洋网"],
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
        var chartx = Chartx.line("aTest", data, options).then(function (chart) {
        });
    </script>

    <script>
        //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
        //第一行是表头。
        var data = [

            ["xfield", "澎湃新闻", "新京报", "央广网", "重庆时报", "中国新闻网"],
            ["10/10/2017", 74, 0, 35, 0, 0],

            ["10/11/2017", 2383, 1, 0, 0, 0],

            ["10/12/2017", 17323, 0, 0, 18, 0],

            ["10/13/2017", 882, 1, 0, 204, 1405],

            ["10/23/2017", 87, 0, 0, 0, 0],

            ["10/24/2017",950, 0, 4685, 0, 0]
        ];

        //chart的配置信息，所有的图表都可以极简到只需要配置xAxis，yAxis的字段
        var options = {
            yAxis: {
                field: ["澎湃新闻", "新京报", "央广网", "重庆时报", "中国新闻网"],
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
        var chartx = Chartx.line("bTest", data, options).then(function (chart) {
        });
    </script>

</div>
</body>
</html>