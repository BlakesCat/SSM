<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加放映厅</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="Hall.jsp.jsp">放映厅管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加放映厅信息</span></div>
    <form action="HallAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>放映厅编号</label><input name="HallID" type="text" class="dfinput"></li>
    <li><label>座位数</label><input name="HallSeats" type="text" class="dfinput"></li>
    <li><label>简介</label><textarea name="Description"cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>