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
    <li><a href="employee.jsp">员工列表</a></li>
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
    	String em_number = request.getParameter("em_number");
    	String em_name = request.getParameter("em_name");
    	String em_sex = request.getParameter("em_sex");
 
    	String em_position = request.getParameter("em_position");
    	
    	//System.out.print(userid);
    	//判断当前页是否为空
        if(request.getParameter("nowpage")!=null){
        	nowpage=Integer.parseInt(request.getParameter("nowpage"));
        	
        }
        String sql="select * from tbl_employee where 1=1";
        String sql1="select count(*) as num from tbl_employee where 1=1";
        
      	//1.判断员工序号
        if(em_number!=null&&em_number.trim()!=""){
        	sql += " and em_number="+em_number;
        	sql1 += " and em_number="+em_number;
        }
      	//2.判断员工姓名
        if(em_name!=null&&em_name.trim()!=""){
        	sql += " and em_name like '%"+em_name+"%'";
        	sql1 += " and em_name like '%"+em_name+"%'";
        }
      	//3.判断性别
        if(em_sex!=null&&em_sex.trim()!=""){
        	sql += " and em_sex like '%"+em_sex+"%'";
        	sql1 += " and em_sex like '%"+em_sex+"%'";
        }
      	//4.判断职位
        if(em_position!=null&&em_position.trim()!=""){
        	sql += " and em_position like '%"+em_position+"%'";
        	sql1 += " and em_position like '%"+em_position+"%'";
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
        <td><input name="" type="checkbox" value="" /></td>
        <td><%=list.get(i).get("em_number")%></td>
        <td><%=list.get(i).get("em_name")%></td>
        <td><%=list.get(i).get("em_sex")%></td>
        <td><%=list.get(i).get("em_phone")%></td>
        <td><%=list.get(i).get("em_address")%></td>
        <td><%=list.get(i).get("em_position")%></td>
        <td><a href="employeeUpdate.jsp?em_number=<%=list.get(i).get("em_number") %>" class="tablelink">更改</a>     <a href="employeeDelete.jsp?em_number=<%=list.get(i).get("em_number") %>"class="tablelink"> 删除</a></td>
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
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=nowpage==1? 1 : nowpage-1%>&em_number=<%=em_number %>&em_name=<%=em_name %>&em_sex=<%=em_sex %>&em_position=<%=em_position %>">上一页</a></li>
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=nowpage==sumpage? sumpage : nowpage+1%>&em_number=<%=em_number %>&em_name=<%=em_name %>&em_sex=<%=em_sex %>&em_position=<%=em_position %>">下一页</a></li>
        <li class="paginItem"><a href="MoviesCheck.jsp?nowpage=<%=sumpage %>&em_number=<%=em_number %>&em_name=<%=em_name %>&em_sex=<%=em_sex %>&em_position=<%=em_position %>">尾页</a></li>
        </ul>
    </div>
    
    <div class="tipbtn">
    	<a href = "employee.jsp">
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
