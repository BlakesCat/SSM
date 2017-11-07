<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
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
	String em_id = request.getParameter("em_id");
	String em_name = request.getParameter("em_name");
	String em_sex = request.getParameter("em_sex");
	String em_phone = request.getParameter("em_phone");
	String em_address = request.getParameter("em_address");
	String em_position = request.getParameter("em_position");
	DBUtils db =new DBUtils();
	
	int num = db.UpdateByPrepare("insert into tbl_employee(em_id,em_name,em_sex,em_phone,em_address,em_position) values(?,?,?,?,?,?)", new String[]{em_id,em_name,em_sex,em_phone,em_address,em_position});
	if(num>0){
		response.sendRedirect("employee.jsp");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String d = sdf.format(date);
		String sql = "insert into tbl_dailyOpreation values(?,?,?)";
		db.UpdateByPrepare(sql, new String[]{user_name,d,"添加了员工"+em_id});
	}else{
		System.out.println("插入失败");
	}
	
%>
 
</body>
</html>