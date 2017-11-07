<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ page import="com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>放映计划列表</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><a href="scheduleAdd.jsp"><span><img src="images/t01.png" /></span>添加</a></li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>计划编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>电影序号</th>
        <th>放映厅编号</th>
        <th>订单价格</th>
        <th>开场时间</th>
        <th>余票</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
        int nowPage=1;
        int pageSize=9;
        int sumPage=0;
        int dataCount=0;
        if(request.getParameter("nowPage")!=null){
        	nowPage=Integer.parseInt(request.getParameter("nowPage"));
        }
        DBUtils db= new DBUtils();
        String sql="select * from tbl_schedule ";
        sql=sql+"limit "+((nowPage-1)*pageSize)+","+pageSize;
        System.out.print(sql);
        String sql1="select count(*) as num from tbl_schedule";
        List<HashMap<String,String>> list=db.queryByList(sql,new String[]{});
        List<HashMap<String,String>> countResult=db.queryByList(sql1,new String[]{});
        dataCount=Integer.parseInt(countResult.get(0).get("num"));
        sumPage=dataCount%10==0?dataCount/10:(dataCount/10+1);
        for(int i=0;i<list.size();i++){
        %>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td><%=list.get(i).get("ScheduleID")%></td>
        <td><%=list.get(i).get("MovieID")%></td>
        <td><%=list.get(i).get("HallID")%></td>
        <td><%=list.get(i).get("Price")%></td>
        <td><%=list.get(i).get("StartTime")%></td>
        <td><%=list.get(i).get("Remainder")%></td>
        <td><a href="scheduleUpdate.jsp?ScheduleID=<%=list.get(i).get("ScheduleID") %>" class="tablelink">更改</a>     <a href="scheduleDelete.jsp?SechduleID=<%=list.get(i).get("SechduleID") %>" class="tablelink"> 删除</a></td>
        </tr> 
        <%} %>  
        </tbody>
    </table>
    
    <div class="pagin">
    	<div class="message">共<i class="blue"><%=dataCount %></i>条记录，当前显示第&nbsp;<i class="blue"><%=nowPage %>&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="schedule.jsp?nowPage=1">首页</a></li>
        <li class="paginItem"><a href="schedule.jsp?nowPage=<%=nowPage==1?1:nowPage-1 %>">上一页</a></li>
        <li class="paginItem"><a href="schedule.jsp?nowPage=<%=nowPage==sumPage?sumPage:nowPage+1 %>">下一页</a></li>
        <li class="paginItem"><a href="schedule.jsp?nowPage=<%=sumPage %>">末页</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    
    </div>
    
</body>

</html>
