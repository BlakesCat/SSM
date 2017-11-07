<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加放映计划成功</title>
</head>
<body>
操作成功！
<%	
//	Date date = new Date();
//	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//	String StartTime = sdf.format(date);

	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String MovieID = request.getParameter("MovieID");
	String HallID = request.getParameter("HallID");
	String Price = request.getParameter("Price");
	String StartTime = request.getParameter("StartTime");
	String Remainder = request.getParameter("Remainder");
	DBUtils db = new DBUtils();
	int num = db.UpdateByPrepare("insert into tbl_schedule(MovieID,HallID,Price,StartTime,Remainder) values(?,?,?,?,?)", new String[]{MovieID,HallID,Price,StartTime,Remainder});
	if(num>0){
		response.sendRedirect("schedule.jsp");
	}else{
		System.out.println("插入失败");
	}
%>
</body>
</html>