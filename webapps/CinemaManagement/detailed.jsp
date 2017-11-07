<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>影片详情信息</title>
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
    
    <div class="formtitle"><span>影片详情信息</span></div>
     <%
    String MovieID=request.getParameter("MovieID");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_movies where MovieID=?", new String[]{MovieID});
    %> 
    <form action="buyTickets.jsp" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="MovieID" value="<%=MovieID%>"></li>
    <li><label>电影名</label><input name="MovieName" type="text" value="<%=list.get(0).get("MovieName")%>" class="dfinput" readonly="readonly"></li>
    <li><label>主演</label><input name="MovieActors" type="text" value="<%=list.get(0).get("MovieActors")%>" class="dfinput"readonly="readonly"></li>
    <li><label>导演</label><input name="Director" type="text" value="<%=list.get(0).get("Director")%>" class="dfinput" readonly="readonly"></li>
    <li><label>上映日期</label><input name="DateStart" type="text" value="<%=list.get(0).get("DateStart")%>"class="dfinput" readonly="readonly"></li>
    <li><label>语言</label><input name="Language" type="text" value="<%=list.get(0).get("Language")%>"class="dfinput" readonly="readonly"></li>
    <li><label>时长</label><input name="Duration" type="text" value="<%=list.get(0).get("Duration")%>"class="dfinput" readonly="readonly"></li>
    <li><label>类型</label><input name="MovieType" type="text" value="<%=list.get(0).get("MovieType")%>"class="dfinput" readonly="readonly">
    <li><label>描述</label><textarea name="Description"cols="" rows="" class="textinput" readonly="readonly"><%=list.get(0).get("Description")%></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="返回"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>