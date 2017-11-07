<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改影片信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="movies.jsp">影片管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>更改影厅信息</span></div>
     <%
    String Hall_number=request.getParameter("Hall_number");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_hall where Hall_number=?", new String[]{Hall_number});
    %> 
    <form action="HallUpdate_success.jsp" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="Hall_number" value="<%=Hall_number%>"></li>
    <li><label>影厅编号</label><input name="HallID" type="text" value="<%=list.get(0).get("HallID")%>" class="dfinput"></li>
    <li><label>座位数</label><input name="HallSeats" type="text" value="<%=list.get(0).get("HallSeats")%>" class="dfinput"></li>
    <li><label>描述</label><textarea name="Description"cols="" rows="" class="textinput"><%=list.get(0).get("Description")%></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
    </form>
    
    
    </div>


</body>
</html>