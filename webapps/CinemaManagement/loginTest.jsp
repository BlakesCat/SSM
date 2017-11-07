<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="com.shxt.DBUtils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
<%
	String code =request.getParameter("code");
	String user_name =request.getParameter("user_name");
	String password =request.getParameter("password");
	System.out.print(code.equals(session.getAttribute("rCode")));
	if(code==null||code.trim()==""){
		request.setAttribute("warning", "验证码不能为空");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}else{
	
		if(!(code.equals(session.getAttribute("rCode")))){
		request.setAttribute("warning","验证码错误");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	 }else{
		 if(user_name==null||user_name.trim()==""){
				//response.sendRedirect("login.jsp");  重定向  
				request.setAttribute("warning", "账号不能为空");
				request.getRequestDispatcher("login.jsp").forward(request,response);  //请求转发
			}else{
				if(password==null||password.trim()==" "){
					request.setAttribute("warning", "密码不能为空");
					request.getRequestDispatcher("login.jsp").forward(request,response);
				}else{
					DBUtils db =new DBUtils();
					List<HashMap<String,String>> list=null;
					list=db.queryByList("select * from tbl_userlogin where user_name=? and password=?", new String[]{user_name,password});
					System.out.println(list.size());
					if(list.size()==1){
						response.sendRedirect("main.jsp");
						System.out.println("登录成功");
					
						Date date = new Date();
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						String d = sdf.format(date);
						String sql = "insert into tbl_dailyLogin values(?,?,?)";
						db.UpdateByPrepare(sql, new String[]{user_name,d,"登陆了系统"});
						//	session.setAttribute("user_name", username);
					}else{
						request.setAttribute("warning","账号或密码错误");
						request.getRequestDispatcher("login.jsp").forward(request,response);  //请求转发
					}
					
				}
			}
		 
	 	}
	}	
	
	
	
%>

</body>
</html>