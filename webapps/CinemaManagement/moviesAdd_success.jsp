<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.shxt.DBUtils.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加电影</title>
</head>
<body>
操作成功！
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	String MovieName = request.getParameter("MovieName");
	String DateStart = request.getParameter("DateStart");
	String Duration = request.getParameter("Duration");
	String Language = request.getParameter("Language");
	String MovieActors = request.getParameter("MovieActors");
	String Director = request.getParameter("Director");
	String []MovieType =(String[])request.getParameterValues("MovieType");
	String Description = request.getParameter("Description");
	String Price = request.getParameter("Price");
	DBUtils db = new DBUtils();
	String temp="";
	for(int i=0;i<MovieType.length;i++){
		temp=temp+MovieType[i]+",";
	}
	int num = db.UpdateByPrepare("insert into tbl_movies(MovieName,DateStart,Duration,Language,MovieActors,Director,MovieType,Description,Price) values(?,?,?,?,?,?,?,?,?)", new String[]{MovieName,DateStart,Duration,Language,MovieActors,Director,temp,Description,Price});
	if(num>0){
		response.sendRedirect("movies.jsp");
	}else{
		System.out.println("插入失败");
	}
%>
</body>
</html>