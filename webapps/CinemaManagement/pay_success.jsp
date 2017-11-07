<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付成功</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String MovieID = request.getParameter("MovieID");
	String BankNum = request.getParameter("BankNum");
	String password = request.getParameter("password");
	String Price = request.getParameter("Price");
	String Ordered = request.getParameter("Ordered");
	DBUtils db =new DBUtils();
	if(BankNum==null||BankNum.trim()==""){
		request.setAttribute("warning", "银行卡号不能为空");
		request.getRequestDispatcher("payment02.jsp").forward(request, response);
	}
	if(password==null||password.trim()==""){
		request.setAttribute("warning", "密码不能为空");
		request.getRequestDispatcher("payment02.jsp").forward(request, response);
	}
		

	int num01 = db.UpdateByPrepare("insert into tbl_order(BankNum,Price) values(?,?)", new String[]{BankNum,Price});
	int num02 = db.UpdateByPrepare("update tbl_order set Orderded='已支付' where MovieID=?", new String[]{MovieID});
	if(num01>0&&num02>0){
		
		response.sendRedirect("pay_success02.jsp");
	}else{
		System.out.println("插入失败");
	}
	
%>
</body>

</html>