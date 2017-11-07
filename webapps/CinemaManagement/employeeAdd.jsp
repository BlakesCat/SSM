<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工</title>
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
    
    <div class="formtitle"><span>添加员工</span></div>
    <form action="employeeAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>电话号码</label><input name="em_phone" type="text" class="dfinput"></li>
    <li><label>姓名</label><input name="em_name" type="text" class="dfinput"></li>
    <li><label>性别</label><input name="em_sex" type="radio" value="男">男<input name="em_sex" type="radio"  value="女">女</li>
    <li><label>身份证号码</label><input name="em_id" type="text" class="dfinput"></li>
    <li><label>职位</label><input name="em_position" type="text" class="dfinput"></li>
    <li><label>住址</label><textarea name="em_address"cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>
</html>