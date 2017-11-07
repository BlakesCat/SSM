<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.shxt.DBUtils.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>影片信息修改成功</title>
</head>
<body>

<% 
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   
   String MovieID=request.getParameter("MovieID");//影片序号
   
   String MovieName=request.getParameter("MovieName");//影片名
   String MovieActors=request.getParameter("MovieActors");//主演
   String Director=request.getParameter("Director");//导演
   String DateStart=request.getParameter("DateStart");//上映日期
   String Language=request.getParameter("Language");//语言
   String Duration=request.getParameter("Duration");//时长
   String[] MovieType=request.getParameterValues("MovieType");//影片类型
   String Description=request.getParameter("Description");//描述
   String Price=request.getParameter("Price");//价格
   
   DBUtils db=new DBUtils();
   String temp="";
   for(int i=0;i<MovieType.length;i++){
		temp=temp+MovieType[i]+",";
	}
   int num=db.UpdateByPrepare("update tbl_movies set MovieName=?,MovieActors=?,Director=?,DateStart=?,Language=?,Duration=?,MovieType=?,Description=?,Price=? where MovieID="+MovieID , new String[]{MovieName,MovieActors,Director,DateStart,Language,Duration,temp,Description,Price});
   
   if(num>0){
	   response.sendRedirect("movies.jsp");
   }else{
	   response.sendRedirect("error.jsp");
   }

 %>
 
</body>
</html>