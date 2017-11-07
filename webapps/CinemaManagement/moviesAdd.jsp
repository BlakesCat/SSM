<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>影片添加 </title>
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
    
    <div class="formtitle"><span>影片添加</span></div>
    <form action="moviesAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>电影名称</label><input name="MovieName" type="text" class="dfinput" /></li>
    <li><label>上映日期</label><input name="DateStart" type="text" class="dfinput" /></li>
    <li><label>时长</label><input name="Duration" type="text" class="dfinput" /></li>
    <li><label>语言</label><input name="Language" type="text" class="dfinput"  /></li>
    <li><label>主演</label><textarea name="MovieActors" cols="" rows="" class="textinput"></textarea></li>
    <li><label>导演</label><input name="Director" type="text" class="dfinput" />
    <li><label>类型</label><input name="MovieType" type="checkbox"  value="爱情"/>爱情
    						<input name="MovieType" type="checkbox" value="剧情"/>剧情
    						<input name="MovieType" type="checkbox" value="喜剧"/>喜剧
    						<input name="MovieType" type="checkbox" value="家庭"/>家庭
    						<input name="MovieType" type="checkbox" value="文艺"/>文艺
    						<input name="MovieType" type="checkbox" value="音乐"/>音乐
    						<input name="MovieType" type="checkbox" value="动漫"/>动漫<br>
    						<input name="MovieType" type="checkbox" value="西部"/>西部
    						<input name="MovieType" type="checkbox" value="武侠"/>武侠
    						<input name="MovieType" type="checkbox" value="古装"/>古装
    						<input name="MovieType" type="checkbox" value="动作"/>动作
    						<input name="MovieType" type="checkbox" value="恐怖"/>恐怖
    						<input name="MovieType" type="checkbox" value="惊悚"/>惊悚
    						<input name="MovieType" type="checkbox" value="冒险"/>冒险<br>
    						<input name="MovieType" type="checkbox" value="犯罪"/>犯罪
    						<input name="MovieType" type="checkbox" value="悬疑"/>悬疑
    						<input name="MovieType" type="checkbox" value="战争"/>战争
    						<input name="MovieType" type="checkbox" value="历史"/>历史
    						<input name="MovieType" type="checkbox" value="科幻"/>科幻
    						<input name="MovieType" type="checkbox" value="奇幻"/>奇幻
    						<input name="MovieType" type="checkbox" value="伦理"/>伦理
    						
    <li><label>简介</label><textarea name="Description"cols="" rows="" class="textinput"></textarea></li>
    <li><label>价格</label><input name="Price" type="text" class="dfinput" />
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    
    </ul>
    </form>
    
    
    </div>


</body>

</html>