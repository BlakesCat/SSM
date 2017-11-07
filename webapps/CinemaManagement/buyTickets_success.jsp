<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订票</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String OrderID = request.getParameter("OrderID");
	String HallID = request.getParameter("HallID");
	String StartTime = request.getParameter("StartTime");
	String BuyDateTime = request.getParameter("BuyDateTime");
	String Ordered = request.getParameter("Ordered");
	String CustomerPhone = request.getParameter("CustomerPhone");
	String BankNum = request.getParameter("BankNum");
	String Price = request.getParameter("Price");
	
	DBUtils db = new DBUtils();
	int num = db.UpdateByPrepare("insert into tbl_order (OrderID,StartTime,BuyDateTime,Ordered,CustomerPhone,BankNum,Price) values(?,?,?,?,?,?,?,?)", new String[]{OrderID,StartTime,BuyDateTime,Ordered,CustomerPhone,BankNum,Price});
	if(num>0){
		System.out.println("插入成功！");
		response.sendRedirect("buySuccess.jsp");
	}else{
		System.out.println("插入失败！");
	}
	db.close();
	
%>
</body>
</html>