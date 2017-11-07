<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加放映计划</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加放映计划</span></div>
    <form action="scheduleAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>电影序号</label><input name="MovieID" type="text" class="dfinput" /></li>
    <li><label>放映厅</label><input name="HallID" type="text" class="dfinput" /></li>
    <li><label>价格</label><input name="Price" type="text" class="dfinput" /></li>
    <li><label>放映时间</label><input name="StartTime" type="text" class="dfinput"  /></li>
    <li><label>余票</label><input name="Remainder" type="text" class="dfinput"></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    
    </ul>
    </form>
    
    
    </div>


</body>

</html>