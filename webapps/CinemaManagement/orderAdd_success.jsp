<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单提交成功</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String MovieID = request.getParameter("MovieID");
	String MovieName = request.getParameter("MovieName");
	String Price = request.getParameter("Price");
	String HallID = request.getParameter("HallID");
	System.out.println(HallID);
	String CustomerPhone = request.getParameter("CustomerPhone");
	String Ordered = request.getParameter("Ordered");
	String BankNum = request.getParameter("BankNum");
	String password = request.getParameter("password");
	String OrderID = request.getParameter("OrderID");
	if(CustomerPhone==null||CustomerPhone.trim()==""){ 
		request.setAttribute("warning", "手机号不能为空");
		request.getRequestDispatcher("payment01.jsp").forward(request,response);  //请求转发
	}else{
		if(BankNum==null||BankNum.trim()==" "){
			request.setAttribute("warning", "银行卡号不能为空");
			request.getRequestDispatcher("payment01.jsp").forward(request,response);
		}else{
			if(password==null||password.trim()==" "){
				request.setAttribute("warning", "密码不能为空");
				request.getRequestDispatcher("payment01.jsp").forward(request,response);
			}else{
			
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String BuyDateTime = sdf.format(date);
			DBUtils db = new DBUtils();
			 String sql="select * from tbl_schedule where MovieID="+MovieID;
		     List<HashMap<String,String>> list=db.queryByList(sql,new String[]{});
		     
		 	String ScheduleID = list.get(0).get("ScheduleID");
			String Remainder = list.get(0).get("Remainder");
			String StartTime = list.get(0).get("StartTime");
			int m=Integer.parseInt(Remainder);
			int R=m-1;
			String Remainder02=String.valueOf(R);
			int num01 = db.UpdateByPrepare("insert into tbl_order(MovieName,StartTime,BuyDateTime,Price,HallID,CustomerPhone,BankNum) values(?,?,?,?,?,?,?)", new String[]{MovieName,StartTime,BuyDateTime,Price,HallID,CustomerPhone,BankNum});
			if(num01>0){
				int num02=db.UpdateByPrepare("update tbl_schedule set Remainder=? where ScheduleID="+list.get(0).get("ScheduleID"),new String[]{Remainder02});
				response.sendRedirect("pay_success02.jsp");
			}else{
				System.out.println("插入失败");
			}
		}
				
		}

	}
	
	
	
%>
</body>
</html>