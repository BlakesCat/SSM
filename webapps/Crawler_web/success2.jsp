<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML>
<!--
	Helios 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>模板测试</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet" type="text/css" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<script type="text/javascript" src='js/f.js'></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
	</head>
	<script>baidu("120x270")</script>
	<body class="homepage">

		<!-- Header -->
			<div id="header">
						
				<!-- Inner -->
					<div class="inner">
						<header>
							<h1><a href="#" id="logo"><font color="red">测试</font></a></h1>
							<hr />
							<span class="byline"><font color="black">分布式爬虫数据模板</font></span>
						</header>
						<footer>
							<a href="start.action" class="button circled scrolly">Start</a>
						</footer>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="http://www.sina.com.cn/"><font color="blue">新浪</font></a></li>
							<li><a href="http://www.163.com/"><font color="blue">网易</font></a></li>
							<li><a href="http://www.acfun.cn/"><font color="blue">acfun</font></a></li>
							<li><a href="https://www.baidu.com/"><font color="blue">百度</font></a></li>
							<li><a href="http://www.tjise.edu.cn/"><font color="blue">天津市大学软件学院</font></a></li>
					      </ul>
					</nav>

			</div>
			
		
		<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						<s:fielderror />
						 <h1>现有信息:</h1> <br/>
 						<s:form action="register6" method="post">
    							 <s:textfield label="站点ID" name="website.id" tooltip="输入ID"></s:textfield>
    						<!--  <s:textfield label="站点名字" name="website.name" tooltip="站点名字 如：百度"></s:textfield>  -->	
    							<s:submit label="Register"   value="详细信息" />
    						<!-- 	<s:submit label="Register"  action="register4"  value="修改" />  -->
    							<s:submit label="Register"  action="quit"  value="返回" />
    						</s:form>
    
    					<c:forEach items="${webs}" var="list">
    						<s:form action="register6" method="post">
    	
    						${list.id}。${list.name}:
    						${list.channel}  
   				 		<!-- 	<s:submit label="Register"   value="详细信息" />  -->
    						</s:form>
   					 </c:forEach>
					</div>
					<hr />
					<div class="row">
						<div class="12u">
							
							<!-- Contact -->
								<section class="contact">
									<header>
										<h3>分布式爬虫项目数据模板采集组</h3>
									</header>
									<p>小组成员：李帅 王通</p>
									<ul class="icons">
										<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
										<li><a href="#" class="icon icon-facebook"><span>Facebook</span></a></li>
										<li><a href="#" class="icon icon-google-plus"><span>Google+</span></a></li>
										<li><a href="#" class="icon icon-pinterest"><span>Pinterest</span></a></li>
										<li><a href="#" class="icon icon-dribbble"><span>Dribbble</span></a></li>
										<li><a href="#" class="icon icon-linkedin"><span>Linkedin</span></a></li>
									</ul>
								</section>
							
							<!-- Copyright -->
								<div class="copyright">
									<ul class="menu">
										<li>&copy; Untitled. All rights reserved.</li>
										<li>中科瑞特大数据 | 天津市大学软件学院</li>
										<li>Demo Images: <a href="http://mdomaradzki.deviantart.com/">Michael Domaradzki</a></li>
									</ul>
								</div>
							
						</div>
					
					</div>
				</div>
			</div>

	</body>
</html>