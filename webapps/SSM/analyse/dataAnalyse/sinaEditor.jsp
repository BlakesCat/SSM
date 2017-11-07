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
    <title>新闻作者分析</title>
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
    <h3 >新闻作者访问分析</h3>
<div id="allTest" style="width:600px;height:600px;">
</div>

<!-- 为Chartx准备一个具备大小（宽高）的Dom -->
<div id="techTest" style="width:500px;height:300px;">
</div>

<!-- 为Chartx准备一个具备大小（宽高）的Dom -->
<div id="marketTest" style="width:500px;height:300px;">
</div>

<script>
    //chart的数据格式，xChart中所有的图表数据格式都是这样的二维数组，
    var data = [
        ["node", "value"],
        ["陈琰 SN225", 5275],
        ["初晓慧", 36487],
        ["桂强", 28601],
        ["霍宇昂", 6315],
        ["李伟山", 1170],
        ["刘光博", 7065],
        ["马骁潇", 304],
        ["时鑫", 96],
        ["张迪", 20000],
        ["张岩", 9889],
        ["张义凌", 11460],
        ["张玉", 47131]

    ];
    var options = {
        xAxis: {
            field: "node"
        },
        yAxis: {
            field: "value"
        },
        tips: {
            //enabled  : false,
            content: function (info) {
                return info.name + "：" + info.percentage + "%"
            }
        },
        //周边tip
        dataLabel: {
            //enabled: false,
            //是否绘制连接线(注意：此配置仅限于扇形块比较分散，若扇形比较紧密时，无连线会导致识别混淆)
            //allowLine:false,
            //format: '{point.name} : {point.y}' //和下面等价
            format: function (data) {
                return "<div><span>" + data.name + "</span>：<span>" + data.y + "（" + data.percentage + "%）</span></div>"
            }

        },
        //饼图的起始角度[有效值范围0-360度，默认值0度
        //饼图的绘制是从起始角度开始，顺时针绘制，参考饼图的绘制动画.
        startAngle: -180,
        //数据排序，默认按用户给定顺序[desc/asc]
        sort: 'desc',
        //是否允许扇形hover时slice,若设置为false,则单击扇形触发slice
        allowPointSelect: true,

        //是否允许动画
        animation: true,
        //内圆半径
        innerRadius: 120,
        radius: [ '100%'],

        //颜色序列,若不设置，会有默认的颜色序列
        //colors:['red', 'yellow', 'blue']

        checked: {
            enabled: true
        }
    };
    Chartx.pie("allTest", data, options).then(function (pie) {
        window.pie = pie;
        //pie.slice(3);
        pie.on('focus', function (e) {
            console.log(e.type);
        });
        pie.on('unfocus', function (e) {
            console.log(e.type);
        });
        pie.on('click', function (e) {
            console.log(e.type);
        });
        pie.on('mousedown', function (e) {
            console.log(e.type);
        });
        pie.on('mouseup', function (e) {
            console.log(e.type);
        });
        pie.on('mousemove', function (e) {
            console.log(e.type);
        });
        pie.on('dblclick', function (e) {
            console.log(e.type);
        });

         _.each( pie.getLabelList() , function( pos ){
         $("#canvasTest").append("<div style='position:absolute;width:"+pos.width+"px;height:"+pos.height+"px;left:"+pos.x+"px;top:"+pos.y+"px;border:1px solid #ffd296;'></div>");
         } );

    });
</script>


<%--<script>--%>
    <%--var data = [--%>
        <%--["xfield", "开发", "测试", "数据", "运维", "算法", "产品经理"],--%>
        <%--["技术类", 1889, 73, 125, 30, 69, 27]--%>
    <%--];--%>
    <%--var options = {--%>
        <%--type: "horizontal",--%>
        <%--proportion: true,--%>
        <%--yAxis: {--%>
            <%--field: [["开发", "测试", "数据", "运维", "算法", "产品经理"]]--%>
        <%--},--%>
        <%--xAxis: {--%>
            <%--field: ["xfield"]--%>
        <%--}--%>
    <%--}--%>

    <%--Chartx.bar("techTest", data, options);--%>
<%--</script>--%>


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

    <%--Chartx.bar("marketTest", data, options);--%>
<%--</script>--%>




</div>
</body>

</html>
