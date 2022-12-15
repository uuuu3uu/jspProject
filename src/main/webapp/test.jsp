<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html> 
<html>
<head>
	<meta charset="UTF-8">
  <title>project</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  
  
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <style>
  	.body {
  		margin: 0;
	  	background-color: #fff;
	  	font-family: Arial, Helvetica, sans-serif;
  	}
  	.container-fluid {
  		margin: 0;
  		padding: 0;
  	}
  	.subMain {
  		width: 100%;
  		height: 180px;
  		background-color: #fafafa;
  	}
  	.header-top {
	  	border-color: rgba(111,111,111,0.1);
	    border-bottom-width: 1px;
	    border-style: solid;
	    height: 30px;
  	}
  	.header-top p {
  		text-align: center;
  		color: #5d5d5d;
  		font-size: 15px;
  	}
  	#navbar {
			background-color: #fff;
			width: 100%;
			height: 95px;
			transition: top 0.4s;
			margin : 0;
			padding: 10px 50px;
			/* border: 1px solid red; */
		}
		#navbar a {
		  display: block;
		  float: left;
		  color: #000;
		  margin: 25px 0 0 20px;
		  text-decoration: none;
		  font-size: 15px;
		}
		#navbar a:hover {
			border-bottom: 1px solid #000;	  
		}
  </style>
</head>
<body>
	<div class="container-fluid">
		<div class="headerWrap">
			<div class="header-top">
				<p>Scroll Up and Down this page to see the parallax scrolling effect?.</p>
			</div><!-- header-top -->
			<div id="navbar" class="row">
				<div class="col-sm-4">
				  <a href="#home">Home</a>
				  <a href="#news">About</a>
				  <a href="#news">Service</a>
				  <a href="#contact">Contact-us</a>
				</div>
				<div class="col-sm-4">
				  <div style="width: 200px; margin: -5px auto;"><a href="#"><img src="images/logo.png" style="width:200px;"/></a></div>
				</div>
				<div class="col-sm-4" style="justify-content: flex-end; display: flex">
						<a href="#" style="margin-bottom:24px; border-bottom: 1px solid #000;">BOOK NOW</a>
						<a href="#">로그인</a>
						<a href="#" style="margin-right: 20px">회원가입</a>
				</div>
			</div><!-- navbar -->
		</div><!-- headerWrap -->
		<div class="subMain">
			<div class="subTitle">
				<h1>My account</h1>
			</div>
		</div>
		
	</div><!-- container-fluid -->
</body>
</html>