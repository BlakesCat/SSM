<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新用户注册</title>
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
    
    <div class="formtitle"><span>用户注册</span></div>
    <form action="userAdd_success.jsp" method="post">
    <ul class="forminfo">
    <li><label>电话号码</label><input name="user_phone" type="text" class="dfinput"></li>
    <li><label>用户名</label><input name="user_name" type="text" class="dfinput"></li>
    <li><label>真实姓名</label><input name="truename" type="text" class="dfinput"></li>
    <li><label>输入密码</label><input name="password" type="password" class="dfinput"></li>	
    <li><label>地区</label><select name = "place" class="dfinput">
    		<option value = "默认" selected="selected">请选择</option>
    		<option value = "北京">北京市</option>
    		<option value = "天津">天津市</option>
    		<option value = "上海">上海市</option>
    		<option value = "重庆">重庆市</option>
    		<option value = "河北">河北省</option>
    		<option value = "河南">河南省</option>
    		<option value = "云南">云南省</option>
    		<option value = "辽宁">辽宁省</option>
    		<option value = "黑龙江">黑龙江省</option>
    		<option value = "湖南">湖南省</option>
    		<option value = "安徽">安徽省</option>
    		<option value = "山东">山东省</option>
    		<option value = "新疆">新疆维吾尔自治区</option>
    		<option value = "江苏">江苏省</option>
    		<option value = "湖北">湖北省</option>
    		<option value = "湖南">湖南省</option>
    		<option value = "浙江">浙江省</option>
    		<option value = "江西">江西省</option>
    		<option value = "广西">广西壮族自治区</option>
    		<option value = "甘肃">甘肃省</option>
    		<option value = "山西">山西省</option>
    		<option value = "陕西">陕西省</option>
    		<option value = "吉林">吉林省</option>
    		<option value = "福建">福建省</option>
    		<option value = "贵州">贵州省</option>
    		<option value = "广东">广东省</option>
    		<option value = "青海">青海省</option>
    		<option value = "西藏">西藏自治区</option>
    		<option value = "四川">四川省</option>
    		<option value = "宁夏">宁夏回族自治区</option>
    		<option value = "海南">海南省</option>
    	</select>
    		
    </li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="reset"  name="重置"  class="btn" value="重置"/></li>
    </ul>
   
    </form>
    
    
    </div>


</body>

</html>