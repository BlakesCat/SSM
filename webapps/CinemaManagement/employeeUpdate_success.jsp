<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息修改成功</title>
</head>
<body>

<% 
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   
   String em_number=request.getParameter("em_number");//员工序号
   
   String em_name=request.getParameter("em_name");//员工姓名
   
   String em_sex=request.getParameter("em_sex");//性别
   
   String em_phone=request.getParameter("em_phone");//电话
   String em_address=request.getParameter("em_address");//地址
   String em_position=request.getParameter("em_position");//职位
   
   DBUtils db=new DBUtils();
   int num=db.UpdateByPrepare("update tbl_employee set em_name=?,em_sex=?,em_phone=?,em_address=?,em_position=? where em_number="+em_number , new String[]{em_name,em_sex,em_phone,em_address,em_position});
   
   if(num>0){
	   response.sendRedirect("employee.jsp");
   }else{
	   response.sendRedirect("error.jsp");
   }

   %>
 
</body>
</html>