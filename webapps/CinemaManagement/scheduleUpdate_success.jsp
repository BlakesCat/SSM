<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>放映信息修改成功</title>
</head>
<body>

<% 
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   String ScheduleID=request.getParameter("ScheduleID");
   String MovieID=request.getParameter("MovieID");//影片序号
   String HallID=request.getParameter("HallID");//影片名
   String StartTime=request.getParameter("StartTime");//放映時間
   String Price=request.getParameter("Price");//价格
   String Remainder=request.getParameter("Remainder");//余票
   DBUtils db=new DBUtils();
   int num=db.UpdateByPrepare("update tbl_schedule set MovieID=?,HallID=?,StartTime=?,Price=?,Remainder=? where ScheduleID="+ScheduleID , new String[]{MovieID,HallID,StartTime,Price,Remainder});
   
   if(num>0){
	   response.sendRedirect("schedule.jsp");
   }else{
	   response.sendRedirect("error.jsp");
   }

 %>
 
</body>
</html>