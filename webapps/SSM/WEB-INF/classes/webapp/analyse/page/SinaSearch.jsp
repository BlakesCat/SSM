<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新闻信息查询</title>
    <%--<jsp:include page="/analyse/common/header.jsp"/>--%>
    <%--<jsp:include page="/analyse/common/sina.jsp"/>--%>

    <link href="<%=request.getContextPath()%>/analyse/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/analyse/js/jquery-2.1.4.min.js"></script>
    <script src="<%=request.getContextPath()%>/analyse/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/analyse/js/bootstrap-paginator.min.js"></script>

    <style type="text/css">
        #queryDiv {
            margin-right: auto;
            margin-left: auto;
            width: 600px;
        }

        #textInput {
            margin-top: 10px;
        }

        #tableResult {
            margin-right: auto;
            margin-left: auto;
            width: 600px;
        }

        td {
            width: 150px
        }
    </style>
</head>

<body>
<%--<jsp:include page="/analyse/common/navbar.jsp"/>--%>

<div id="queryDiv" align="center">
    <input id="textInput" type="text" placeholder="请输入关键字">
    <p>
        <button id="queryButton" class="btn btn-primary" type="button">查询</button>
    </p>

</div>
<form id="form1">
    <table class="table table-bordered" id='tableResult'>
        <thead>
        <tr>
            <th>新闻标题</th>
            <th>新闻内容</th>
            <th>新闻作者</th>
            <th>新闻来源</th>
            <th>新闻时间</th>
            <th>新闻访问量</th>
        </tr>
        </thead>
        <tbody id="tableBody">
        </tbody>
    </table>
    <!-- 底部分页按钮 -->
    <div id="bottomTab"></div>
</form>
<script type='text/javascript'>
    var PAGESIZE = 10;
    var options = {
        currentPage: 1,  //当前页数
        totalPages: 10,  //总页数，这里只是暂时的，后头会根据查出来的条件进行更改
        size: "normal",
        alignment: "center",
        itemTexts: function (type, page, current) {
            switch (type) {
                case "first":
                    return "第一页";
                case "prev":
                    return "前一页";
                case "next":
                    return "后一页";
                case "last":
                    return "最后页";
                case "page":
                    return page;
            }
        },
        onPageClicked: function (e, originalEvent, type, page) {
            var title = $("#textInput").val(); //取内容
            buildTable(title, page, PAGESIZE, "");//默认每页最多10条
        }
    }
    //获取当前项目的路径
    var urlRootContext = (function () {
        var strPath = window.document.location.pathname;
        var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
        return postPath;
    })();

//    /analyse/pages/SinaSearch
    //生成表格
    function buildTable(title, pageNumber, pageSize, currentPageNumber) {
        var url = urlRootContext + "/list"; //请求的网址
        var reqParams = {'title': title, 'pageNumber': pageNumber, 'pageSize': pageSize};//请求数据
        $(function () {
            $.ajax({
                type: "POST",
                url: url,
                data: reqParams,
                async: false,
                dataType: "json",
                success: function (data) {
                    if (data.isError == true) {
                        // options.totalPages = data.pages;
                        var newoptions = {
                            currentPage: 1,  //当前页数
                            totalPages: data.pages == 0 ? 1 : data.pages,  //总页数
                            size: "normal",
                            alignment: "center",
                            itemTexts: function (type, page, current) {
//                                var title = $("#textInput").val(); //取内容
//                                var currentPageNumber;
                                switch (type) {
                                    case "first":
                                        return "第一页";
                                    case "prev":
                                        return "前一页";
                                    case "next":
                                        return "后一页";
                                    case "last":
                                        return "最后页";
                                }
                                buildTable(title, page, PAGESIZE, currentPageNumber);//默认每页最多10条
                            }
                        }
                        $('#bottomTab').bootstrapPaginator("setOptions", newoptions); //重新设置总页面数目
                        var dataList = data.dataList;
                        $("#tableBody").empty();//清空表格内容
                        if (dataList.length > 0) {
                            $(dataList).each(function () {//重新生成
                                $("#tableBody").append('<tr>');
                                $("#tableBody").append('<td>' + this.title + '</td>');
                                $("#tableBody").append('<td>' + this.content + '</td>');
                                $("#tableBody").append('<td>' + this.editor + '</td>');
                                $("#tableBody").append('<td>' + this.source + '</td>');
                                $("#tableBody").append('<td>' + this.time +  '</td>');
                                $("#tableBody").append('<td>' + this.comment + '</td>');
                                $("#tableBody").append('</tr>');
                            });
                        } else {
                            $("#tableBody").append('<tr><th colspan ="4"><center>查询无数据</center></th></tr>');
                        }
                    } else {
                        alert(data.errorMsg);
                    }
                },
                error: function (e) {
                    alert("查询失败:" + e);
                }
            });
        });
    }

    //渲染完就执行
    $(function () {

        //生成底部分页栏
        $('#bottomTab').bootstrapPaginator(options);

        buildTable("", 1, 10);//默认空白查全部

        //创建结算规则
        $("#queryButton").bind("click", function () {
            var title = $("#textInput").val();
            buildTable(title, 1, PAGESIZE);
        });
    });
</script>
</body>
</html>