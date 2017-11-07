<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电影票订购</title>
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
        <li class="click"><a href="moviesAdd.jsp"><span><img src="images/t01.png" /></span>添加</a></li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>搜索</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>影片序号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>电影名称</th>
        <th>主演</th>
        <th>导演</th>
        <th>语言</th>
        <th>时长</th>
        <th>类型</th>
        <th>放映时间</th>
		<th>放映厅</th>
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
        String sql="select * from tbl_movies left join tbl_schedule on tbl_movies.MovieID=tbl_schedule.MovieID ";
        sql=sql+"limit "+((nowPage-1)*pageSize)+","+pageSize;
        System.out.print(sql);
        String sql1="select count(*) as num from tbl_movies left join tbl_schedule on tbl_movies.MovieID=tbl_schedule.MovieID";
        List<HashMap<String,String>> list=db.queryByList(sql,new String[]{});
        List<HashMap<String,String>> countResult=db.queryByList(sql1,new String[]{});
        dataCount=Integer.parseInt(countResult.get(0).get("num"));
        sumPage=dataCount%10==0?dataCount/10:(dataCount/10+1);
        
        for(int i=0;i<list.size();i++){
        %>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td><%=list.get(i).get("MovieID")%></td>
        <td><%=list.get(i).get("MovieName")%></td>
        <td><%=list.get(i).get("MovieActors")%></td>
        <td><%=list.get(i).get("Director")%></td>
        <td><%=list.get(i).get("Language")%></td>
        <td><%=list.get(i).get("Duration")%></td>
        <td><%=list.get(i).get("MovieType")%></td>
        <td><%=list.get(i).get("StartTime")%></td>
        <td><%=list.get(i).get("HallID")%></td>
        <td><%=list.get(i).get("Remainder")%></td>
        <td><a href="payment01.jsp?MovieID=<%=list.get(i).get("MovieID") %>" class="tablelink">购买</a>     <a href="OrderDelete.jsp?MovieID=<%=list.get(i).get("MovieID") %>" class="tablelink"> 删除</a> <a href="detailed.jsp?MovieID=<%=list.get(i).get("MovieID") %>" class="tablelink"> 详情</a></td>
        </tr> 
        <%} %>  
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue"><%=dataCount %></i>条记录，当前显示第&nbsp;<i class="blue"><%=nowPage %>&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="movies.jsp?nowPage=1">首页</a></li>
        <li class="paginItem"><a href="movies.jsp?nowPage=<%=nowPage==1?1:nowPage-1 %>">上一页</a></li>
        <li class="paginItem"><a href="movies.jsp?nowPage=<%=nowPage==sumPage?sumPage:nowPage+1 %>">下一页</a></li>
        <li class="paginItem"><a href="movies.jsp?nowPage=<%=sumPage %>">末页</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    
    
    </div>
    
</body>

</html>
