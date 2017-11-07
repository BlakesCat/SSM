<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改放映信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="schedule.jsp">放映管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>更改影片信息</span></div>
     <%
    String ScheduleID=request.getParameter("ScheduleID");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_schedule where ScheduleID=?", new String[]{ScheduleID});
    %> 
    <form action="scheduleUpdate_success.jsp" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="ScheduleID" value="<%=ScheduleID%>"></li>
    <li><label>电影编号</label><input name="MovieID" type="text" value="<%=list.get(0).get("MovieID")%>" class="dfinput"></li>
    <li><label>放映厅</label><input name="HallID" type="text" value="<%=list.get(0).get("HallID")%>" class="dfinput"></li>
    <li><label>价格</label><input name="Price" type="text" value="<%=list.get(0).get("Price")%>"class="dfinput"></li>
    <li><label>放映时间</label><input name="StartTime" type="text" value="<%=list.get(0).get("StartTime")%>"class="dfinput"></li>
    <li><label>余票</label><input name="Remainder" type="text" value="<%=list.get(0).get("Remainder")%>"class="dfinput" readonly="readonly"></li>
    
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>