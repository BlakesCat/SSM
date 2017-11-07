<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>影厅信息修改成功</title>
</head>
<body>

<% 
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   
   String Hall_number=request.getParameter("Hall_number");//序号
   
   String HallID=request.getParameter("HallID");//影厅编号
   String HallSeats=request.getParameter("HallSeats");//座位数
   String Description=request.getParameter("Description");//描述
   
   DBUtils db=new DBUtils();
   int num=db.UpdateByPrepare("update tbl_hall set HallID=?,HallSeats=?,Description=? where Hall_number="+Hall_number , new String[]{HallID,HallSeats,Description});
   if(num>0){
	   response.sendRedirect("Hall.jsp");
   }else{
	   response.sendRedirect("error.jsp");
   }

   %>
 
</body>
</html>