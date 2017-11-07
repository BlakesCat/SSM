<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改员工信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="employee.jsp">员工管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>更改员工信息</span></div>
     <%
    String em_number=request.getParameter("em_number");
    DBUtils db=new DBUtils();
    List<HashMap<String,String>> list=db.queryByList("select * from tbl_employee where em_number=?", new String[]{em_number});
    %> 
    <form action="employeeUpdate_success.jsp" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="em_number" value="<%=em_number %>"></li>
    <li><label>电话号码</label><input name="em_phone" type="text" value="<%=list.get(0).get("em_phone")%>" class="dfinput"></li>
    <li><label>姓名</label><input name="em_name" type="text" value="<%=list.get(0).get("em_name")%>" class="dfinput"></li>
    <li><label>性别</label><input name="em_sex" type="radio" value="男">男<input name="em_sex" type="radio" value="女">女 </li>
    <li><label>身份证号码</label><input name="em_id" type="text" value="<%=list.get(0).get("em_id")%>"class="dfinput"></li>
    <li><label>职位</label><input name="em_position" type="text" value="<%=list.get(0).get("em_position")%>"class="dfinput"></li>
    <li><label>住址</label><textarea name="em_address"cols="" rows="" class="textinput"><%=list.get(0).get("em_address")%></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>