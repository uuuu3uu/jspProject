<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
	body {
	  margin: 0;
	  background-color: #f1f1f1;
	  font-family: Arial, Helvetica, sans-serif;
	  
	}
	
	#navbar {
		background-color: #fff;
		top: -60px;
		width: 100%;
		float:left;
		transition: top 0.4s;
		z-index: 99;
		position: fixed;
		padding: 10px 60px;
	}

	#navbar a {
	  float: left;
	  display: block;
	  color: #000;
	  text-align: center;
	  padding: 15px;
	  text-decoration: none;
	  font-size: 17px;
	}
	

	#navbar a:hover {
	  background-color: #ddd;
	  color: black;
	}
	
	#navbarfix {
	  background-color: #transparent;
	  width: 100%;
	  /* float:left; */
	  z-index: 1;
	  padding: 10px 60px;
	 
	}

	#navbarfix a {
	  float: left;
	  /* display: block; */
	  color: #000;
	  text-align: center;
	  padding: 15px;
	  text-decoration: none;
	  font-size: 17px;
	}

	#navbarfix a:hover {
	  background-color: #ddd;
	  color: black;
	  
	}


	/* Make the image fully responsive */
	.carousel-inner img {
		width: 100%;
		height: 100%;
		z-index: -1;
		
	}
	 
	.main-topText {
		position: relative;
		bottom: 1260px;
	}

	.main-text {
		position: relative;
		bottom: 1000px;
		text-align: center;
		hegiht: 100px;
	}
	 
	.Counseling {
	 position: relative;
	 bottom: 700px;
	 height:300px;
	 background-color:#fff;
	 font-size:36px;
	 z-index: 1;
	}
	
	.form-control {
		border: none;
		border-bottom: 1px solid rgba(54,54,54,7);
    border-radius: 0;
    background-color: transparent;
	}
	.container-fluid {
		margin : 0px;
		padding: 0px;
	}
	
	.Counseling .form-row {
		margin: 40px 170px;
	
	}
	.Counseling .col {
		margin-left: 20px;
	}
	.service {
		background-color:pink;
		position: relative;
		height: 500px;
		bottom: 700px;
	}

</style>

<script>

	// When the user scrolls down 20px from the top of the document, slide down the navbar
	
	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction() {
	
	  if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
	    document.getElementById("navbar").style.top = "0px";
	  } 
	  else {
		  document.getElementById("navbar").style.top = "-80px";
	  }
	}
</script>

</head>

<body>

	<div class="container-fluid" style="height: 1800px">
		<div id="navbar" class="row">
			<div class="col-sm-4">
			  <a href="#home">Home</a>
			  <a href="#news">About</a>
			  <a href="#news">Service</a>
			  <a href="#contact">Contact-us</a>
			</div>
			<div class="col-sm-4">
			  <div style="width: 200px; margin: 0 auto;"><a href="#"><img src="images/logo.png" style="width:200px;"/></a></div>
			</div>
			<div class="col-sm text-right">
					<div style="width: 200px; margin: 0 0 0 auto;"><a href="#">로그인</a></div>
					<a href="#">회원가입</a>
				</div>
		</div>
		
		<div id="demo" class="carousel slide" data-ride="carousel">
		
		  <ul class="carousel-indicators" style="height: 580px;">
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
		  </div>
		  <a class="carousel-control-prev" style="top: -350px;" href="#demo" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" style="top: -350px;" href="#demo" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		</div>
		
		<!-- main text -->
		
		<div class="main-topText">
			<div style="border-bottom: 0.5px solid #000; height:35px">
				<p class="text-center pt-1" style="font-size:15px;">Scroll Up and Down this page to see the parallax scrolling effect?.</p>
			</div>
			
			<div id="navbarfix" class="row">
				<!-- <div class="col-sm-4 nav1"> -->
				<div class="col-sm nav1">
				  <a href="#home">Home</a>
				  <a href="#news">About</a>
				  <a href="#news">Service</a>
				  <a href="#contact">Contact-us</a>
				</div>
				<!-- <div class="col-sm-4"> -->
				<div class="col-sm">
				  <div style="width: 200px; margin: 0 auto;"><a href="#"><img src="images/logo.png" style="width:200px;"/></a></div>
				</div>
				<!-- <div class="col-sm-4 join text-right" style="border:1px solid red;"> -->
				<div class="col-sm text-right" style="border:1px solid red;">
					<div style="width: 200px; margin: 0 0 0 auto;"><a href="#">로그인</a></div>
					<a href="#">회원가입</a>
				</div>
			</div>
			
		</div>
		<div class="main-text">
		  <h3>Los Angeles</h3>
		  <p>We had such a great time in LA!</p>
		</div> 
		
		
		<div class="Counseling p-5">
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
			  </div>
			</form>
		</div>
		
		<div class="service">
			<div class="card-deck" style="padding: 90px">
			  <div class="card bg-primary">
			    <div class="card-body text-center">
			    	<p class="card-text">Some text inside the first card</p>
			   </div>
			</div>
		  <div class="card bg-warning">
		    <div class="card-body text-center">
		      <p class="card-text">Some text inside the second card</p>
		    </div>
		  </div>
		  <div class="card bg-success">
		  	<div class="card-body text-center">
		  		<p class="card-text">Some text inside the third card</p>
		  	</div>
			</div>
			<div class="card bg-danger">
				<div class="card-body text-center">
			     <p class="card-text">Some text inside the fourth card</p>
			  </div>
			</div>
			</div>
		</div>
	
	</div>
</body>
</html>