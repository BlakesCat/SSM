<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金额支付</title>
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
    
    <div class="formtitle"><span>金额支付</span></div>
      <% 
    String warning="";
    if(request.getAttribute("warning")!=null){
    	warning=(String)request.getAttribute("warning");
    }
    %>
    <%
    String MovieID=request.getParameter("MovieID");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_movies where MovieID=?", new String[]{MovieID});
    %> 
    <form action="pay_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>银行卡号</label><input name="MovieName" type="text" class="dfinput" value=null/></li>
    <li><label>银行卡类型</label><input name="BankCard" type="radio" value="农业银行"/>农业银行
    							 <input name="BankCard" type="radio"value="建设银行" />建设银行
    							 <input name="BankCard" type="radio" value="工商银行"/>工商银行
    							 <input name="BankCard" type="radio" value="中国银行"/>中国银行<br>
    							 <input name="BankCard" type="radio" value="中信银行"/>中信银行
    							 <input name="BankCard" type="radio" value="平安银行"/>平安银行
    							 <input name="BankCard" type="radio" value="邮储银行"/>邮储银行
    							 <input name="BankCard" type="radio" value="广发银行"/>广发银行</li>
    <li><label>密码</label><input name="password" type="password" class="dfinput" value=null/></li>
    <li><label>金额</label><input name="money" type="text" class="dfinput" value=<%=list.get(0).get("Price") %> readonly="readonly"/></li>
    <li><label>状态</label><input name="Ordered" type="text" class="dfinput" value="未支付"  readonly="readonly"/></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="支付"/><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input  type="reset"  name="取消"  class="btn" value="取消"/></li>
     <li><label color ="red"><%=warning%></label></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>