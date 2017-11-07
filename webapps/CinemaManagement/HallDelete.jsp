<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>放映厅删除</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
request.setCharacterEncoding("UTF-8");
String Hall_number = request.getParameter("Hall_number");
DBUtils db=new DBUtils();
int num = db.UpdateByPrepare("delete from tbl_hall where Hall_number=?",new String[]{Hall_number});
if(num>0){
	response.sendRedirect("Hall.jsp");
}else{
	System.out.println("删除失败");
}
%>
</body>
</html>