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
  	.main {
  		width: 100%;
  	}
  	/* Make the image fully responsive */
	  .carousel-inner img {
	    width: 100%;
	    height: 100%;
	  }
	  .carousel-inner {
	  	width: 100%;
	  	height: 650px;
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
  		padding-top:3px;
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
		
		.Counseling {
			padding: 70px 230px;
		}
		.Counseling input {
			border: none;
			border-bottom: 1px solid rgba(54,54,54,7);
	    border-radius: 0;
	    background-color: transparent;  
		}
		.Counseling .col {
			padding: 20px;
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
		
		<!-- 카로셀 -->
		<div class="main">
			<div id="demo" class="carousel slide" data-ride="carousel">
				<ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
		  	</ul>
		  	<div class="carousel-inner">
		  		<div class="carousel-item active">
		      	<img src="images/main1.jpg" alt="Los Angeles" width="1100" height="500">
		    	</div>
		    	<div class="carousel-item">
		      	<img src="images/main2.jpg" alt="Chicago" width="1100" height="500">
		    	</div>
		    	<div class="carousel-item">
		      	<img src="images/main3.jpg" alt="New York" width="1100" height="500">
				      <!-- <div class="carousel-caption">
				        <h3>New York</h3>
				        <p>We love the Big Apple!</p>
				      </div>   --> 
		   		</div>
		  	</div><!-- carousel-inner -->
		  	<a class="carousel-control-prev" href="#demo" data-slide="prev">
		    	<span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#demo" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div><!-- carousel slide -->
		</div><!-- main -->
		<!-- 카로셀 끝 -->
		
		<!-- 상담하기 -->
		<div class="Counseling">
			<form name="CounselingForm">
				<div class="form-row">
					<div class="col">
			      <input type="text" class="form-control" id="name" placeholder="이름" name="name"/>
			    </div>
			    <div class="col">
			      <input type="text" class="form-control" placeholder="전화번호" name="phone"/>
			    </div>
			    <div class="col">
						<input type="text" class="form-control" placeholder="이메일" name="email"/>
			    </div>
			    <div class="col">
			      <input type="button" class="form-control btn" style="border: 1px solid rgba(54,54,54,7);" name="booking" value="상담하기"/>
			    </div>
			    <p>*or give us a call <a href="tel:8882653556">(888) 265-3556</a></p>
				</div>
			</form><!-- CounselingForm -->
		</div><!-- Counseling -->
		<!-- 상담하기 끝 -->
		
		<!-- service -->
		<div class="container">
    	<div class="row text-center">
        <div class="col-lg-3">
        	<div class="card plan-card">
          	<div class="card-block">
            	<div class="pt-3 pb-3">
              	<h1><i class="fa fa-plane plan-icon"></i></h1>
               	<h6 class="text-uppercase text-primary">Starter Pack</h6>
              </div><!-- pt-3 pb-3 -->
              <div>
              	<h1 class="plan-price padding-b-15">$19<span class="text-muted m-l-10"><sup>Per Month</sup></span></h1>
                <div class="plan-div-border"></div>
              </div>
              <div class="plan-features pb-3 mt-3 text-muted padding-t-b-30">
	              <p>Free Live Support</p>
	              <p>Unlimited User</p>
	              <p>No Time Tracking</p>
	              <p>Free Setup</p>
	              <a href="#" class="btn btn-primary">Sign Up Now</a>
              </div>
            </div><!-- card-block -->
          </div><!-- card plan-card -->
        </div><!-- col-lg-3 -->
        <div class="col-lg-3">
        	<div class="card plan-card">
          	<div class="card-block">
            	<div class="pt-3 pb-3">
              	<h1><i class="fa fa-plane plan-icon"></i></h1>
               	<h6 class="text-uppercase text-primary">Starter Pack</h6>
              </div><!-- pt-3 pb-3 -->
              <div>
              	<h1 class="plan-price padding-b-15">$19<span class="text-muted m-l-10"><sup>Per Month</sup></span></h1>
                <div class="plan-div-border"></div>
              </div>
              <div class="plan-features pb-3 mt-3 text-muted padding-t-b-30">
	              <p>Free Live Support</p>
	              <p>Unlimited User</p>
	              <p>No Time Tracking</p>
	              <p>Free Setup</p>
	              <a href="#" class="btn btn-primary">Sign Up Now</a>
              </div>
            </div><!-- card-block -->
          </div><!-- card plan-card -->
        </div><!-- col-lg-3 -->
        <div class="col-lg-3">
        	<div class="card plan-card">
          	<div class="card-block">
            	<div class="pt-3 pb-3">
              	<h1><i class="fa fa-plane plan-icon"></i></h1>
               	<h6 class="text-uppercase text-primary">Starter Pack</h6>
              </div><!-- pt-3 pb-3 -->
              <div>
              	<h1 class="plan-price padding-b-15">$19<span class="text-muted m-l-10"><sup>Per Month</sup></span></h1>
                <div class="plan-div-border"></div>
              </div>
              <div class="plan-features pb-3 mt-3 text-muted padding-t-b-30">
	              <p>Free Live Support</p>
	              <p>Unlimited User</p>
	              <p>No Time Tracking</p>
	              <p>Free Setup</p>
	              <a href="#" class="btn btn-primary">Sign Up Now</a>
              </div>
            </div><!-- card-block -->
          </div><!-- card plan-card -->
        </div><!-- col-lg-3 -->
        <div class="col-lg-3">
        	<div class="card plan-card">
          	<div class="card-block">
            	<div class="pt-3 pb-3">
              	<h1><i class="fa fa-plane plan-icon"></i></h1>
               	<h6 class="text-uppercase text-primary">Starter Pack</h6>
              </div><!-- pt-3 pb-3 -->
              <div>
              	<h1 class="plan-price padding-b-15">$19<span class="text-muted m-l-10"><sup>Per Month</sup></span></h1>
                <div class="plan-div-border"></div>
              </div>
              <div class="plan-features pb-3 mt-3 text-muted padding-t-b-30">
	              <p>Free Live Support</p>
	              <p>Unlimited User</p>
	              <p>No Time Tracking</p>
	              <p>Free Setup</p>
	              <a href="#" class="btn btn-primary">Sign Up Now</a>
              </div>
            </div><!-- card-block -->
          </div><!-- card plan-card -->
        </div><!-- col-lg-3 -->  

	    </div><!-- row text-center -->
	  </div><!-- container -->
		<!-- service 끝 -->
		
		<!-- contact-us -->
		<!-- contact-us 끝 -->
	
		
		
	</div><!-- container -->
</body>
</html>