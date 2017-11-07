<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle" ><span>基本信息</span></div>
    <form action ="userChecklist.jsp"  method="post">
    <ul class="forminfo">
    <li><label>员工序号</label><input name="userid" type="text" class="dfinput" value = ""/></li>
    <li><label>用户名</label><input name="name" type="text" class="dfinput" value = ""/></li>   
    <li><label>真实姓名</label><input name="tname" type="text" class="dfinput" value = ""/></li> 
    
    <li><label>年龄</label><input name="age" type="text" class="dfinput" value="" /></li>
    <li><label>电话</label><input name="pnumber" type="text" class="dfinput" value="" /></li>
    <li><label>家庭住址</label>
    	<select name = "adress" class="dfinput">
    		<option value = "默认" selected="selected">请选择</option>
    		<option value = "济南">济南</option>
    		<option value = "聊城">聊城</option>
    		<option value = "章丘">章丘</option>
    		<option value = "潍坊">潍坊</option>
    		<option value = "菏泽">菏泽</option>
    		<option value = "济宁">济宁</option>
    		<option value = "泰安">泰安</option>
    		<option value = "滨州">滨州</option>
    		<option value = "枣庄">枣庄</option>
    		<option value = "德州">德州</option>
    		<option value = "莱芜">莱芜</option>
    		<option value = "青岛">青岛</option>
    		<option value = "临沂">临沂</option>
    		<option value = "淄博">淄博</option>
    		<option value = "威海">威海</option>
    		<option value = "东营">东营</option>
    		<option value = "日照">日照</option>
    	</select>
    </li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认查找"/></li>
    </ul>
    </form>
    
    </div>


</body>
</html>