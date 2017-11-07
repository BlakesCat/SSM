<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电影查找列表</title>
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
    <li><a href="movies.jsp">电影列表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>

</div>
 
    
    
    
   <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>影片序号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>电影名称</th>
        <th>主演</th>
        <th>导演</th>
        <th>上映日期</th>
        <th>语言</th>
        <th>时长</th>
        <th>类型</th> 
        <th>简介</th>
        <th>价格</th>                                                                                                                                                                                                          </th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
        int nowpage=1;
        int pagesize=9;
        int dataCount=0;
        int sumpage=0;
     
      
        
        request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("UTF-8");
    	String MovieID = request.getParameter("MovieID");
    	String MovieName = request.getParameter("MovieName");
    	String MovieActors = request.getParameter("MovieActors");
 
    	String Director = request.getParameter("Director");
    	String Language = request.getParameter("Language");
    	String Price = request.getParameter("Price");
    	//System.out.print(userid);
    	//判断当前页是否为空
        if(request.getParameter("nowpage")!=null){
        	nowpage=Integer.parseInt(request.getParameter("nowpage"));
        	
        }
        String sql="select * from tbl_movies where 1=1";
        String sql1="select count(*) as num from tbl_movies where 1=1";
        
      	//1.判断电影序号
        if(MovieID!=null&&MovieID.trim()!=""){
        	sql += " and MovieID="+MovieID;
        	sql1 += " and MovieID="+MovieID;
        }
      	//2.判断电影名
        if(MovieName!=null&&MovieName.trim()!=""){
        	sql += " and MovieName like '%"+MovieName+"%'";
        	sql1 += " and MovieName like '%"+MovieName+"%'";
        }
      	//3.判断演员名
        if(MovieActors!=null&&MovieActors.trim()!=""){
        	sql += " and MovieActors like '%"+MovieActors+"%'";
        	sql1 += " and MovieActors like '%"+MovieActors+"%'";
        }
      	//4.判断导演名
        if(Director!=null&&Director.trim()!=""){
        	sql += " and Director like '%"+Director+"%'";
        	sql1 += " and Director like '%"+Director+"%'";
        }
      	//5.判断语种
        if(Language!=null&&Language.trim()!=""){
        	sql += " and Language like '%"+Language+"%'";
        	sql1 += " and Language like '%"+Language+"%'";
        }
      	//6.判断价格
        if(Price!=null&&Price.trim()!=""){
        	sql += " and Price ='"+Price+"'";
        	sql1 += " and Price ='"+Price+"'";
        }
        
        System.out.println(sql);
        System.out.println(sql1);
    	DBUtils db=new DBUtils();

    	List<HashMap<String, String>> list =db.queryByList(sql+" limit "+((nowpage-1)*pagesize)+","+pagesize,new String[]{});
    	List<HashMap<String, String>> countresult =db.queryByList(sql1, new String[]{});
   	 	dataCount =Integer.parseInt(countresult.get(0).get("num"));
    	sumpage =  dataCount%10==0? dataCount/10 : (dataCount/10 +1);
    	System.out.println(sumpage);
    	for(int i=0;i<list.size();i++){
    %>
        <tr>
        <td><input name="choice" type="checkbox" value="" /></td>
        <td><%=list.get(i).get("MovieID")%></td>
        <td><%=list.get(i).get("MovieName")%></td>
        <td><%=list.get(i).get("MovieActors")%></td>
        <td><%=list.get(i).get("Director")%></td>
        <td><%=list.get(i).get("DateStart")%></td>
        <td><%=list.get(i).get("Language")%></td>
        <td><%=list.get(i).get("Duration")%></td>
        <td><%=list.get(i).get("MovieType")%></td>
        <td><%=list.get(i).get("Description")%></td>
        <td><%=list.get(i).get("Price")%></td>
        <td><a href="moviesUpdate.jsp?MovieID=<%=list.get(i).get("MovieID") %>" class="tablelink">更改</a>     <a href="moviesDelete.jsp?MovieID=<%=list.get(i).get("MovieID") %>" class="tablelink"> 删除</a></td>
        </tr>         
        <%
           }
        %>
        
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue"><%=dataCount%></i>条记录，当前显示第&nbsp;<i class="blue">&nbsp;</i><%=nowpage%>页</div>
        <ul class="paginList">
        
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=1">首页</a></li>
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=nowpage==1? 1 : nowpage-1%>&MovieID=<%=MovieID %>&MovieName=<%=MovieName %>&MovieActors=<%=MovieActors %>&Director=<%=Director %>&Language=<%=Language %>&Price=<%=Price %>">上一页</a></li>
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=nowpage==sumpage? sumpage : nowpage+1%>&MovieID=<%=MovieID %>&MovieName=<%=MovieName %>&MovieActors=<%=MovieActors %>&Director=<%=Director %>&Language=<%=Language %>&Price=<%=Price %>">下一页</a></li>
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=sumpage %>&MovieID=<%=MovieID %>&MovieName=<%=MovieName %>&MovieActors=<%=MovieActors %>&Director=<%=Director %>&Language=<%=Language %>&Price=<%=Price %>">尾页</a></li>
        </ul>
    </div>
    
    <div class="tipbtn">
    	<a href = "movies.jsp">
        	<input name="" type="button"  class="sure" value="返回" />
		</a>    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
