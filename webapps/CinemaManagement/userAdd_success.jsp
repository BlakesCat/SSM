 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
操作成功！
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String user_phone = request.getParameter("user_phone");
	String user_name = request.getParameter("user_name");
	String truename = request.getParameter("truename");
	String password = request.getParameter("password");
	String place = request.getParameter("place");
	DBUtils db =new DBUtils();
	int num = db.UpdateByPrepare("insert into tbl_userlogin(user_phone,user_name,truename,password,place) values(?,?,?,?,?)", new String[]{user_phone,user_name,truename,password,place});
	if(num>0){
		response.sendRedirect("userAdd_success2.jsp");
	}else{
		System.out.println("插入失败");
	}
	
%>
 接收到的用户名：<%=user_name %>密码：<%=password %>
电话：<%=user_phone %>住址：<%=place %>

</body>
</html>