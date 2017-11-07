<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工添加成功</title>
</head>
<body>
操作成功！
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String HallID = request.getParameter("HallID");
	String HallSeats = request.getParameter("HallSeats");
	String Description = request.getParameter("Description");
	DBUtils db =new DBUtils();
	int num = db.UpdateByPrepare("insert into tbl_hall(HallID,HallSeats,Description) values(?,?,?)", new String[]{HallID,HallSeats,Description});
	if(num>0){
		response.sendRedirect("Hall.jsp");
	}else{
		System.out.println("插入失败");
	}
	
%>
 
</body>
</html>