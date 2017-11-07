<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>员工查找列表</title>
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
    <li><a href="#">数据表</a></li>
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
            <th>员工序号<i class="sort"><img src="images/px.gif" /></i></th>
        	<th>用户名</th>
   	   		
    		<th>真实姓名</th>
    		<th>性别</th>
    		<th>年龄</th>
    		<th>电话</th>
    		<th>住址</th>
        </tr>
        </thead>
        <tbody>
        <%
        int nowpage=1;
        int pagesize=4;
        int dataCount=0;
        int sumpage=0;
     
      
        
        request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("UTF-8");
    	String userid = request.getParameter("userid");
    	String name = request.getParameter("name");
    	String tn = request.getParameter("tname");
 
    	String age = request.getParameter("age");
    	String pnumber = request.getParameter("pnumber");
    	String adress = request.getParameter("adress");
    	
    	
    	//System.out.print(userid);
    	//判断当前页是否为空
        if(request.getParameter("nowpage")!=null){
        	nowpage=Integer.parseInt(request.getParameter("nowpage"));
        	
        }
        String sql="select * from useradd where 1=1 ";
        String sql1="select count(*) as num from useradd where 1=1 ";
        
      	//1.判断用户序号
        if(userid!=null&&userid.trim()!=""){
        	sql += "and userid="+userid;
        	sql1 += "and userid="+userid;
        }
      	//2.判断用户名
        if(name!=null&&name.trim()!=""){
        	sql += " and name like '%"+name+"%'";
        	sql1 += " and name like '%"+name+"%'";
        }
      	//3.判断真实姓名
        if(tn!=null&&tn.trim()!=""){
        	sql += " and tname like '%"+tn+"%'";
        	sql1 += " and tname like '%"+tn+"%'";
        }
      	//4.判断年龄
        if(age!=null&&age.trim()!=""){
        	sql += " and age ='"+age+"'";
        	sql1 += " and age ='"+age+"'";
        }
      	//5.判断电话
        if(pnumber!=null&&pnumber.trim()!=""){
        	sql += " and phonenumber ='"+pnumber+"'";
        	sql1 += " and phonenumber ='"+pnumber+"'";
        }
        
        //System.out.println(userid+" "+name+" "+tn+" "+sex+" "+age+" "+pnumber+" "+adress);
        System.out.println(sql);
        System.out.println(sql1);
    	DBUtils db=new DBUtils();

    	List<HashMap<String, String>> list =db.queryByList(sql+" limit "+((nowpage-1)*pagesize)+","+pagesize,new String[]{});
    	List<HashMap<String, String>> countresult =db.queryByList(sql1, new String[]{});
   	 	dataCount =Integer.parseInt(countresult.get(0).get("num"));
    	sumpage = dataCount%4==0? dataCount/4 : (dataCount/4+1);
    	System.out.println(sumpage);
    	for(int i=0;i<list.size();i++){
    %>
        <tr>
        <td><%=list.get(i).get("userid")%></td>
        <td><%=list.get(i).get("name")%></td>
        
        <td><%=list.get(i).get("tname")%></td>
        <td><%=list.get(i).get("sex")%></td>
        <td><%=list.get(i).get("age")%></td>
        <td><%=list.get(i).get("phonenumber")%></td>
        <td><%=list.get(i).get("adress")%></td>
        
        </tr> 
        <%
           }
        %>
        
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue"><%=dataCount%></i>条记录，当前显示第&nbsp;<i class="blue">&nbsp;</i><%=nowpage%>页</div>
        <ul class="paginList">
        
        <li class="paginItem"><a href="userChecklist.jsp?nowpage=1">首页</a></li>
        <li class="paginItem"><a href="userChecklist.jsp?nowpage=<%=nowpage==1? 1 : nowpage-1%>&userid=<%=userid %>&name=<%=name %>&tname=<%=tn %>&age=<%=age %>&phonenumber=<%=pnumber %>&adress=<%=adress %>">上一页</a></li>
        <li class="paginItem"><a href="userChecklist.jsp?nowpage=<%=nowpage==sumpage? sumpage : nowpage+1%>&userid=<%=userid %>&name=<%=name %>&tname=<%=tn %>&age=<%=age %>&phonenumber=<%=pnumber %>&adress=<%=adress %>">下一页</a></li>
        <li class="paginItem"><a href="userChecklist.jsp?nowpage=<%=sumpage %>&userid=<%=userid %>&name=<%=name %>&tname=<%=tn %>&age=<%=age %>&phonenumber=<%=pnumber %>&adress=<%=adress %>">尾页</a></li>
        </ul>
    </div>
    
    <div class="tipbtn">
    	<a href = "userlist.jsp">
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
</html>