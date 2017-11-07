<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影票选择</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="buyTickets.jsp">影票选购</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <div class="formtitle"><span>电影票选择</span></div>
     <%
    String MovieID=request.getParameter("MovieID");
    String OrderID=request.getParameter("OrderID");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_movies where MovieID=?", new String[]{MovieID});
    List<HashMap<String,String>> list2=db.queryByList("select * from tbl_schedule where MovieID=?", new String[]{MovieID});
    List<HashMap<String,String>> list3=db.queryByList("select * from tbl_order where OrderID=?", new String[]{OrderID});
    %> 
    <%
    String warning="";
    if(request.getAttribute("warning")!=null){
    	warning=(String)request.getAttribute("warning");
    }
    %>
    <form action="orderAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="MovieID" value="<%=MovieID%>"></li>
    
    <li><label>电影名</label><input name="MovieName" type="text" value="<%=list.get(0).get("MovieName")%>" class="dfinput" readonly="readonly"></li>
    <li><label>放映时间</label><input name="StartTime" type="text" value="<%=list2.get(0).get("StartTime")%>"class="dfinput" readonly="readonly"></li>
    <li><label>语言</label><input name="Language" type="text" value="<%=list.get(0).get("Language")%>"class="dfinput" readonly="readonly"></li>
    <li><label>时长</label><input name="Duration" type="text" value="<%=list.get(0).get("Duration")%>"class="dfinput" readonly="readonly"></li>
    <li><label>类型</label><input name="MovieType" type="text" value="<%=list.get(0).get("MovieType")%>"class="dfinput" readonly="readonly">
    <li><label>描述</label><textarea name="Description"cols="" rows="" class="textinput" readonly="readonly"><%=list.get(0).get("Description")%></textarea></li>
    <li><label>价格</label><input name="Price" type="text" value="<%=list.get(0).get("Price")%>"class="dfinput" readonly="readonly">
    <li><label>放映厅</label><input name="HallID" type="text" value="<%=list2.get(0).get("HallID")%>"class="dfinput" readonly="readonly">
    <li><label>手机号码</label><input name="CustomerPhone" type="text"  class="dfinput" ></li>
    <li><label>银行卡号</label><input name="BankNum" type="text"  class="dfinput" ></li>
    <li><label>支付密码</label><input name="password" type="password"  class="dfinput" ></li>
    <li><label>状态</label><input name="Ordered" type="text"  class="dfinput" value="未支付" readonly="readonly"></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认支付"/></li>
    <li><label color ="red"><%=warning%></label></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>