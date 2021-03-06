<%--
  Created by IntelliJ IDEA.
  User: 杨胜
  Date: 2017/11/6
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 杨胜
  Date: 2017/10/26
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>新闻信息分析系统</title>
</head>
<body>

<style>
    /* reset */
    html,
    body {
        margin: 0;
        padding: 0;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        background-color: #0d1522;
    }

    h2,
    h3,
    p {
        margin: 0;
    }

    a {
        text-decoration: none;
        color: #fff;
    }

    body,
    button, /* 1 */
    input, /* 1 */
    select, /* 1 */
    textarea /* 1 */
    {
        font-family: 'helvetica neue', tahoma, 'hiragino sans gb', stheiti, 'wenquanyi micro hei', \5FAE\8F6F\96C5\9ED1, \5B8B\4F53, sans-serif;
        -ms-text-autospace: ideograph-alpha; /* 5 */
        text-autospace: ideograph-alpha; /* 5 */
    }

    .page {
    }

    .container {
        width: 1000px;
        margin: 0 auto;
        overflow: hidden;
        position: relative;
        height: 100%;
    }

    .clearfix:before,
    .clearfix:after {
        content: " ";
        display: table;
    }

    .clearfix:after {
        clear: both;
    }

    .clearfix {
        *zoom: 1;
    }

    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .no-transform {
        transform: translate(0, 0) !important;
    }

    body {
        margin-top: 46px;
    }

    .no-visual {
        visibility: hidden;
    }

    /**
     * iconfont项目: chartx pid=35482;
     **/
    @font-face {
        font-family: 'chartfont';
        src: url('//at.alicdn.com/t/font_1441012171_1411412.eot'); /* IE9*/
        src: url('//at.alicdn.com/t/font_1441012171_1411412.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/font_1441012171_1411412.woff') format('woff'), /* chrome、firefox */ url('//at.alicdn.com/t/font_1441012171_1411412.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/font_1441012171_1411412.svg#iconfont') format('svg'); /* iOS 4.1- */
    }

    .chartfont {
        font-family: "chartfont";
        font-size: 16px;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
        display: inline-block;
        speak: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    header {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        background-color: #0d1522;
        z-index: 9999;
    }

    header nav {
        width: 1000px;
        margin: 0 auto;
    }

    header .detail-link {
        float: right;
    }

    header nav a {
        display: inline-block;
        height: 44px;
        line-height: 44px;
        color: rgba(255, 255, 255, 0.4);
        font-size: 16px;
    }

    header nav a:hover {
        color: #fff;
    }

    header .home {
        width: 140px;
        height: 44px;
        background: url("//gtms04.alicdn.com/tps/i4/TB1EsuWJpXXXXaeXFXXgfRT9VXX-100-33.png") no-repeat 0px 7px;
    }

    header .detail-link a {
        margin: 0 0 0 35px;
    }

    .show {

        background: #201317 url("http://gtms03.alicdn.com/tps/i3/TB1Y4TQJpXXXXXEXVXXU7PDLVXX-1920-800.png") no-repeat;
        background-size: 100% 100%;
        position: relative;
        height: 749px;
        max-width: 1920px;
        margin: 0 auto;
        overflow: hidden;
    }

    .show .chart {
        height: 100%;
    }

    .show .show-content {
        width: 1000px;
        height: 100%;
        margin: 0 auto;
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
    }

    .show .guide-container {
        position: absolute;
        width: 1000px;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        height: 740px;
        margin: auto;
    }

    .show .guide-nav {
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        margin: auto 0 auto 0;
        width: 400px;
        height: 400px;
        padding: 0 0 0 0;
        color: #fff;
        overflow: hidden;
    }

    .show .guide-nav h3 {
        font-size: 50px;
        font-weight: normal;
        position: absolute;
        right: 191px;
        top: 69px;
        opacity: 1;
        transition: top 0.5s ease-out, opacity 0.5s ease-out;
    }

    .show .guide-nav span {
        color: #9eafc8;
        position: relative;
        left: -10px;
    }

    .show .guide-nav p {
        font-size: 24px;
        position: absolute;
        right: 88px;
        top: 134px;
        width: 270px;
        opacity: 1;
        color: #9eafc8;
        transition: top 0.5s ease-out, opacity 0.5s ease-out;
    }

    .show .guide-nav a {
        display: block;
        border: 2px solid #09f;
        height: 56px;
        line-height: 56px;
        width: 200px;
        font-size: 18px;
        text-align: center;
        border-radius: 30px;
        position: absolute;
        right: 156px;
        top: 217px;
        opacity: 1;
        transition: top 0.5s ease-out, opacity 0.5s ease-out;
    }

    .show .guide-nav a:hover {
        background-color: #09f;
        color: #111c2c;
    }

    .show .guide-nav .hide {
        top: -50px;
        opacity: 0;
    }

    .detail {
        background-color: #111c2c;
        font-size: 14px;
        height: 1800px;
        color: #fff;
    }

    .detail .intro {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 4px;
        width: 326px;
        height: 238px;
        margin: auto 0 auto 0;
        padding: 0 0 0 0;
        overflow: hidden;
    }

    .detail .intro h3 {
        width: 200px;
        padding: 0 0 6px 0;
        margin: 0 0 60px 0;
        font-size: 38px;
        font-weight: 400;
        transform: translate(0, -115px);
        position: relative;
        border-bottom: 2px solid #09f;

    }

    .detail .intro p {
        line-height: 23px;
        color: #9eafc8;
        transform: translate(0, -263px);
    }

    .detail .intro .text-info {
        transition: transform 0.5s ease-out;
    }

    .no-transform {
        transform: translate(0, 0) !important;
    }

    .detail .feature {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 400px;
        margin: auto 0 auto 0;
        padding: 0 0 0 0;
        width: 603px;
        height: 399px;
        font-size: 18px;
        transition: transform 0.5s ease-out;
        transform: translate(0, -630px);
    }

    .detail .feature li {
        box-sizing: border-box;
        float: left;
        width: 201px;
        height: 200px;
        background-color: #12233c;
        text-align: center;
        padding: 114px 0 0 3px;
        position: relative;
        overflow: hidden;
    }

    .detail .feature li:nth-child(odd) {
        background-color: #0b1523;
    }

    .detail .feature li::before {
        font-family: "chartfont";
        font-size: 45px;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
        display: inline-block;
        speak: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        position: absolute;
        left: 80px;
        top: 58px;
        color: #0383da;
    }

    .detail .feature .html5::before {
        content: "\e601";
    }

    .detail .feature .canvas::before {
        content: "\e605";
    }

    .detail .feature .performance::before {
        content: "\e604";
    }

    .detail .feature .cross-platform::before {
        content: "\e603";
    }

    .detail .feature .cross-device::before {
        content: "\e602";
    }

    .detail .feature .open-source::before {
        content: "\e600";
    }

    .detail .feature .desc {
        position: absolute;
        width: 200px;
        height: 200px;
        left: -200px;
        top: 0;
        padding: 82px 33px 0 36px;
        line-height: 18px;
        background-color: #09f;
        font-size: 14px;
        color: #111c2c;
        box-sizing: border-box;
        transition: left 0.2s ease-out;
    }

    .detail .canvas .desc {
        padding: 90px 0 0 0;
    }

    .detail .performance .desc {
        padding: 83px 33px 0 36px;

    }

    .detail .cross-platform .desc {
        padding: 73px 33px 0 36px;

    }

    .detail .cross-device .desc {
        padding: 82px 33px 0 36px;

    }

    .detail .open-source .desc {
        padding: 82px 33px 0 36px;

    }

    .detail .feature li:hover .desc {
        left: 0px;
    }

    .quick-link {
        height: 800px;
        background-color: #0b1523;
        font-size: 14px;
        color: #fff;
    }

    .quick-link .panel {
        width: 470px;
        height: 600px;
        border: 2px solid #111c2c;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 20px;
        margin: auto 0 auto 0;
        box-sizing: border-box;
        padding: 32px 24px 0 32px;
        transition: transform 0.5s ease-out;
        transform: translate(0, -720px);
    }

    .quick-link .panel h3 {
        font-size: 36px;
        margin: 0 0 18px 0px;
        text-align: center;
        font-weight: normal;
    }

    .quick-link .panel p {
        line-height: 24px;
        color: #9eafc8;
    }

    .quick-link .demo {
        height: 250px;
        background-color: #fff;
        margin: 32px 0 0 0;
    }

    .quick-link .panel a {
        display: block;
        width: 198px;
        height: 58px;
        line-height: 58px;
        color: #fff;
        border: 2px solid #09f;
        border-radius: 30px;
        text-align: center;
        margin: 26px 0 0 100px;
        font-size: 18px;
        position: relative;
        overflow: hidden;
    }

    .quick-link .panel a:hover {
        background-color: #09f;
        color: #111c2c;
    }

    .quick-link .canvax {
        left: 510px;
    }

    .quick-link .canvax h3 {
        margin: 5px 0 23px 0px;
    }

    .page4 {
        color: #9eafc8;
        text-align: center;
        font-size: 18px;
        background: #211418 url("http://gtms03.alicdn.com/tps/i3/TB1Wg4vJFXXXXXBXpXXU7PDLVXX-1920-800.png") no-repeat;
        background-size: 100% 100%;
    }

    .page4 .content {
        position: absolute;
        height: 570px;
        top: 0;
        bottom: 0;
        margin: auto 0 auto 0;
        width: 100%;
    }

    .page4 .title {
        font-size: 36px;
        border-bottom: 2px solid #09f;
        color: #fff;
        font-weight: normal;
        width: 325px;
        padding: 0 0 12px 0;
        margin: 0 auto;
    }

    .page4 .daily {
        padding: 49px 0 0 0;
    }

    .page4 .daily .label {
        padding: 0 0 7px 0;
    }

    .page4 .cdn {
        margin: 23px 0 0 0;
    }

    .page4 .cdn .url {
        padding: 5px 0 0 0;
    }

    .page4 .version {
        padding: 33px 0 0 0;
        color: #09f;
    }

    .page4 .contact {
        padding: 99px 0 0 0;
    }

    .page4 .contact-title {
        color: #fff;
        font-size: 38px;
        border-bottom: 2px solid #09f;
        width: 120px;
        padding: 0 0 9px 0;
        margin: 0 auto;
        font-weight: normal;
    }

    .page4 .contact-detail {
        padding: 55px 0 0 0;
    }

    .page4 .wangwang {
        display: inline-block;
        width: 26px;
        height: 26px;
        position: relative;
        top: 6px;
        background: url("http://gtms02.alicdn.com/tps/i2/TB1zvhcJFXXXXauXVXXqsJyFVXX-26-26.png") no-repeat 0 0;
    }

    footer {
        background-color: #ebebed;
    }

    footer .out-link {
        float: left;
        width: 700px;
        font-size: 12px;
        color: #4e4e61;
    }

    footer .out-link h3 {
        font-weight: normal;
        font-size: 14px;
        margin: 28px 0 27px 0;
    }

    footer .out-link a {
        color: #4e4e61;
    }

    footer .out-link li {
        float: left;
        width: 230px;
        height: 18px;
        margin: 0 0 11px 0;
    }

    .page-nav {
        list-style: none;
        margin: 0;
        padding: 0;
        position: fixed;
        top: 330px;
        right: 60px;
    }

    .page-nav a {
        display: block;
        width: 12px;
        height: 12px;
        border-radius: 50%;
        background-color: #414956;
        margin: 0 0 22px 0;
    }

    .page-nav .active a {
        background-color: #09f;
    }

</style>


<header>
    <nav class="container">
        <%--<a href="/analyse/pages/Search.jsp" class="home"></a>--%>

        <div class="detail-link">
            <a href="javascript:page.go(1);">新闻数据分析介绍</a>
            <a href="javascript:page.go(2);">新闻介绍</a>
            <a href="javascript:page.go(3);">新闻地址</a>
            <a href="http://git.oschina.net/" target="_blank">gitosc</a>
        </div>
    </nav>
</header>

<div class="show page">

    <div class="chart">
        <!-- 图标放在这个div内, 宽高都是满屏的 -->
        <canvas id="spiders"></canvas>
    </div>


    <div class="show-content">


        <div class="guide-container clearfix">
            <div class="guide-nav">
                <h3 class="hide nav-item">Interne<span>t</span></h3>

                <p class="hide nav-item" >>新闻数据分析</p>
                <%--target="_blank"--%>
                <a class="hide nav-item" href="/SSM/index.jsp" >快速预览</a>
            </div>
        </div>
    </div>

</div>

<div class="detail page" id="source">
    <div class="container">
        <div class="intro">
            <h3 class="text-info ">系统介绍</h3>

            <p class="text-info ">
                本系统通过对爬虫从新闻网上抓取
                的新闻内容信息数据的分析结果进行
                可视化的展示，
                以便使用者对于新闻网站有
                一个直观且清晰的认识，从而更好的制定自己的规划。

            </p>
        </div>

        <ul class="feature">
            <li class="html5">
                Python
                <span class="desc">开源的Python垂直爬虫框架</span>
            </li>
            <li class="canvas">
                Spring
                <span class="desc">分层的Java SE/EE应用一站式的轻量级的开源框架</span>
            </li>
            <li class="performance">
                EChartx
                <span class="desc">专业的数据可视化解决方案</span>
            </li>
            <li class="cross-platform">
                HttpClient
                <span class="desc">Apache Jakarta Common下的子项目</span>
            </li>
            <li class="cross-device">
                Jsoup
                <span class="desc">一款可用于商业项目的Java的HTML解析器</span>
            </li>
            <li class="open-source">
                Mysql
                <span class="desc">最流行的关系型数据库管理系统</span>
            </li>
        </ul>
    </div>
</div>

<div class="quick-link page">
    <div class="container clearfix">
        <div class="panel start">
            <h3>数据来源</h3>

            <p>时间：2017.09.28-2017.11.08</p>
            <p>网站数：3</p>

            <div class="demo"><img src="http://gtms02.alicdn.com/tps/i2/TB15_14JpXXXXbaXpXXWYnISXXX-410-250.png" alt="">
            </div>
            <%--<a href="./started.html" target="_blank">点击进入</a>--%>
        </div>
        <div class="panel canvax">
            <h3>新浪新闻数据分析</h3>
            <h3>网易新闻数据分析</h3>
            <h3>Acfun新闻数据分析</h3>
            <%--<p>新闻作者分析</p>--%>
            <%--<p>新闻来源分析</p>--%>
            <%--<p>新闻时间分析</p>--%>
            <%--<p>新闻访问量分析</p>--%>
            <div class="demo">
                <img src="http://gtms03.alicdn.com/tps/i3/TB1ia9WJpXXXXaYXFXXWYnISXXX-410-250.png" alt="">
            </div>
        </div>

    </div>
</div>


<div class="page page4">
    <div class="container">
        <div class="content">
            <h2 class="title">系统地址——托管在开源中国gitosc上面</h2>

            <div class="daily">
                <p class="label">爬虫系统地址</p>

                <p class="url">
                    http://www.sina.com.cn/
                </p>
                <p class="url">
                    http://www.163.com/
                </p>
            </div>

            <div class="contact">
                <h3 class="contact-title">联系我</h3>

                <p class="contact-detail">
                    <span class="phone"></span>
                    手机号:15222685071
                </p>
            </div>
        </div>
    </div>
</div>


<ul class="page-nav">
    <li data-index="0" class="active"><a href="javascript:;"></a></li>
    <li data-index="1"><a href="javascript:;"></a></li>
    <li data-index="2"><a href="javascript:;"></a></li>
    <li data-index="3"><a href="javascript:;"></a></li>

</ul>


<script src="//g.tbcdn.cn/mm/activity-assets/20150813.183131.653/underscore.min.js"></script>
<script src="//g.tbcdn.cn/mm/activity-assets/0.2.3/common/jquery-2.1.3.min.js"></script>
<script src="//g.tbcdn.cn/mm/activity-assets/20150901.105649.704/EventEmitter.min.js"></script>
<script src="//g.tbcdn.cn/mm/activity-assets/20150906.094858.101/TweenLite.min.js"></script>
<script src="//g.tbcdn.cn/mm/activity-assets/20150906.094858.101/ScrollToPlugin.min.js"></script>
<script>
    (function () {
        window.pageCtrl = new EventEmitter();


        // 第一屏动画控制
        var page0 = {};
        page0.show = function () {
            $('.show .guide-nav .nav-item').removeClass('hide');
        };
        page0.reset = function () {
            $('.show .guide-nav .nav-item').addClass('hide');
        };

        // 第二屏动画控制
        var page1 = {};
        page1.show = function () {
            $('.detail .intro .text-info')
                .addClass('no-transform')
                .removeClass('no-visual');
            setTimeout(function () {
                $('.detail .feature')
                    .addClass('no-transform')
                    .removeClass('no-visual');
            }, 500);
        };
        page1.reset = function () {
            $('.detail .intro .text-info')
                .removeClass('no-transform')
                .addClass('no-visual');
            $('.detail .feature')
                .removeClass('no-transform')
                .addClass('no-visual');
        };

        // 第三屏控制
        var page2 = {};
        page2.show = function () {
            $('.quick-link .start')
                .addClass('no-transform')
                .removeClass('no-visual');
            $('.quick-link .canvax')
                .addClass('no-transform')
                .removeClass('no-visual');
        };
        page2.reset = function () {
            $('.quick-link .start')
                .removeClass('no-transform')
                .addClass('no-visual');
            $('.quick-link .canvax')
                .removeClass('no-transform')
                .addClass('no-visual');
        };

        window.page = {
            current: 0,
            steps: [0, 800, 1600],
            pages: $('.page'),
            duration: 0.5,
            nav: $('.page-nav'),
            reset: [page0.reset, page1.reset, page2.reset, $.noop, $.noop],
            show: [page0.show, page1.show, page2.show, $.noop, $.noop]
        };

        page.init = function () {
            page.addListeners();


            pageCtrl.on('up', function () {
                page.up();
            });
            pageCtrl.on('down', function () {
                page.down();
            });
            pageCtrl.on('go', function (data) {
                page.go(data.index, data.prev);
            });

            page.adjustPageHeight();
            pageCtrl.emit('go', {
                index: 0
            });
        };

        page.addListeners = function () {
            // 监听右侧导航
            page.nav.on('click', 'li', function (e) {
                var item = $(this);
                var pageIndex = parseInt(item.data('index'), 10);
                pageCtrl.emit('go', {index: pageIndex, prev: page.current});
            });

            // 监听键盘按键
            var win = $(window);
            win.on('keydown.chartx', function (e) {
                switch (e.which) {
                    case 38:
                        pageCtrl.emit('up');
                        e.preventDefault();
                        break;
                    case 40:
                        pageCtrl.emit('down');
                        e.preventDefault();
                        break;
                }
            });

            // 监听鼠标滚动
            document.addEventListener('wheel', function (e) {
                e.preventDefault();
            }, false);
            document.addEventListener('wheel', _.throttle(function (e) {
                if (e.deltaY < 0) {
                    pageCtrl.emit('up');
                } else if (e.deltaY > 0) {
                    pageCtrl.emit('down');
                }
            }, 1200, {trailing: false}), false);

            // 监听浏览器窗口大小改变
            win.on('resize', _.debounce(page.adjustPageHeight, 400));

        };
        page.adjustPageHeight = function () {
            var height = $(window).height();
            page.pages.height(height);
            page.steps.length = 0;
            for (var i = 0; i < page.pages.length; ++i) {
                page.steps.push(i * height);
            }
            window.scrollTo(0, page.steps[page.current]);
        };
        page.up = function () {
            this.go(this.current - 1, this.current);
        };
        page.down = function () {
            this.go(this.current + 1, this.current);
        };
        page.go = function (index, prev) {
            var me = this;
            if (index < 0) {
                index = 0;
                prev = null;
            } else if (index >= me.steps.length) {
                index = me.steps.length - 1;
                prev = null;
            }
            me.current = index;
            me.nav.find('li')
                .removeClass('active')
                .filter(':nth-child(' + (index + 1) + ')')
                .addClass('active');
            TweenLite.to(window, me.duration, {
                scrollTo: {y: me.steps[index]},
                onComplete: function () {
                    me.show[index]();
                    if (prev != null) {
                        me.reset[prev]();
                    }
                }
            });
        };


        page.init();


    }());
</script>


<script>
    $(function () {

        var width, height, canvas, ctx, points, target, animateHeader = true;


        // Main
        initHeader();
        initAnimation();
        addListeners();

        function initHeader() {
            width = window.innerWidth;
            height = window.innerHeight;
            target = {
                x: width / 3,
                y: 350//height / 2
            };

            canvas = document.getElementById('spiders');
            canvas.width = width;
            canvas.height = height;
            ctx = canvas.getContext('2d');

            // create points
            points = [];
            for (var x = 0; x < width; x = x + width / 20) {
                for (var y = 0; y < height; y = y + height / 20) {
                    var px = x + Math.random() * width / 20;
                    var py = y + Math.random() * height / 20;
                    var p = {
                        x: px,
                        originX: px,
                        y: py,
                        originY: py
                    };
                    points.push(p);
                }
            }

            // for each point find the 5 closest points
            for (var i = 0; i < points.length; i++) {
                var closest = [];
                var p1 = points[i];
                for (var j = 0; j < points.length; j++) {
                    var p2 = points[j]
                    if (!( p1 == p2 )) {
                        var placed = false;
                        for (var k = 0; k < 5; k++) {
                            if (!placed) {
                                if (closest[k] == undefined) {
                                    closest[k] = p2;
                                    placed = true;
                                }
                            }
                        }

                        for (var k = 0; k < 5; k++) {
                            if (!placed) {
                                if (getDistance(p1, p2) < getDistance(p1, closest[k])) {
                                    closest[k] = p2;
                                    placed = true;
                                }
                            }
                        }
                    }
                }
                p1.closest = closest;
            }

            // assign a circle to each point
            for (var i in points) {
                var c = new Circle(points[i], 2 + Math.random() * 2, 'rgba(255,255,255,0.3)');
                points[i].circle = c;
            }
        }

        // Event handling
        function addListeners() {
            if (!( 'ontouchstart' in window )) {
                window.addEventListener('mousemove', mouseMove);
            }
            window.addEventListener('scroll', scrollCheck);
            window.addEventListener('resize', resize);
        }

        function mouseMove(e) {
            var posx = posy = 0;
            if (e.pageX || e.pageY) {
                posx = e.pageX;
                posy = e.pageY;
            } else if (e.clientX || e.clientY) {
                posx = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
                posy = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
            }
            target.x = posx;
            target.y = posy;
        }

        function scrollCheck() {
            if (document.body.scrollTop > height) animateHeader = false;
            else animateHeader = true;
        }

        function resize() {
            width = window.innerWidth;
            height = window.innerHeight;
            canvas.width = width;
            canvas.height = height;
        }

        // animation
        function initAnimation() {
            animate();
            for (var i in points) {
                shiftPoint(points[i]);
            }
        }

        function animate() {
            if (animateHeader) {
                ctx.clearRect(0, 0, width, height);
                for (var i in points) {
                    // detect points in range
                    if (Math.abs(getDistance(target, points[i])) < 4000) {
                        points[i].active = 0.3;
                        points[i].circle.active = 0.6;
                    } else if (Math.abs(getDistance(target, points[i])) < 20000) {
                        points[i].active = 0.1;
                        points[i].circle.active = 0.3;
                    } else if (Math.abs(getDistance(target, points[i])) < 40000) {
                        points[i].active = 0.02;
                        points[i].circle.active = 0.1;
                    } else {
                        points[i].active = 0;
                        points[i].circle.active = 0;
                    }

                    drawLines(points[i]);
                    points[i].circle.draw();
                }
            }
            requestAnimationFrame(animate);
        }

        function shiftPoint(p) {
            TweenLite.to(p, 1 + 1 * Math.random(), {
                x: p.originX - 50 + Math.random() * 100,
                y: p.originY - 50 + Math.random() * 100,
                onComplete: function () {
                    shiftPoint(p);
                }
            });
        }

        function getLineColor(a) {
            //var _colors = ["#1c304a" , "#6a452c"];
            var _colors = [
                "rgba(28,48,74," + a + ")",
                "rgba(106,69,44," + a + ")"
            ]
            var i = Math.floor(Math.random() * 1);
            return _colors[i];
        }

        function getCircleColor(a) {
            //var _colors = ["#ff4400" , "#3390cd" , "#c58249" , "#ffffff" ];
            var _colors = [
                //"rgba(255,68,0,"+a+")",
                //"rgba(51,144,205,"+a+")",
                //"rgba(197,130,73,"+a+")",
                //"rgba(255,255,255,"+a+")"
                "rgba(255,68,0," + a + ")",
                "rgba(0,153,255," + a + ")"
            ];

            var i = Math.floor(Math.random() * 2);
            return _colors[i];
        }

        // Canvas manipulation
        function drawLines(p) {
            if (!p.active) return;
            for (var i in p.closest) {
                ctx.beginPath();
                ctx.moveTo(p.x, p.y);
                ctx.lineTo(p.closest[i].x, p.closest[i].y);
                ctx.strokeStyle = 'rgba(0,153,255,' + p.active + ')';//getLineColor(p.active);
                ctx.stroke();
            }
        }

        function Circle(pos, rad, color) {
            var _this = this;

            // constructor
            (function () {
                _this.pos = pos || null;
                _this.radius = rad || null;
                _this.color = color || null;
            })();

            this.draw = function () {
                if (!_this.active) return;
                ctx.beginPath();

                ctx.arc(_this.pos.x, _this.pos.y, _this.radius, 0, 2 * Math.PI, false);
                //console.log(_this.active)
                ctx.fillStyle = getCircleColor(_this.active); //'rgba(255,255,255,' + _this.active + ')';
                ctx.fill();
            };
        }

        // Util
        function getDistance(p1, p2) {
            return Math.pow(p1.x - p2.x, 2) + Math.pow(p1.y - p2.y, 2);
        }

    });

</script>
</body>
</html>