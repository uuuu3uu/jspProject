<%@     page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	/* #navbarfix {
	  background-color: #transparent;
	  position: fixed;
	  bottom: 900px;
	  width: 100%;
	  float:left;
	  transition: top 0.3s;
	  z-index: 1;
	}

	#navbarfix a {
	  float: left;
	  display: block;
	  color: #000;
	  text-align: center;
	  padding: 15px;
	  text-decoration: none;
	  font-size: 17px;
	}

	#navbarfix a:hover {
	  background-color: #ddd;
	  color: black;
	} */
	
	#navbar {
	  background-color: #fff;
	  position: fixed;
	  top: 0px;
	  width: 100%;
	  float:left;
	  transition: top 0.3s;
	  z-index: 1;
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

	/* Make the image fully responsive */
	 .carousel-inner img {
	    width: 100%;
	    height: 100%;
	    z-index: -1;
	 }
	 
	 .main-topText {
		 position: relative;
		 bottom: 1010px;
	 }

	 .main-text {
		 	position: relative;
		 	bottom: 500px;
		 	text-align: center;
		 	hegiht: 100px;
	 }
	 

</style>

<script>

	// When the user scrolls down 20px from the top of the document, slide down the navbar
	
	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction() {
	
	  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	    document.getElementById("navbar").style.top = "0px";
	    $("#navbar").slideDown();
	    
	  } 
	  else if {
		  document.getElementById("navbar").style.top = "-80px";
	  }
	  
	};
	
	
	
</script>

</head>

<body>

	<div id="navbar" class="row" style="border:1px solid red;">
		<div class="col-sm-4 nav1">
		  <a href="#home">Home</a>
		  <a href="#news">About</a>
		  <a href="#news">Service</a>
		  <a href="#contact">Contact-us</a>
		</div>
		<div class="col-sm-4">
		  <div style="width: 200px; margin: 0 auto;"><a href="#"><img src="images/logo.png" style="width:200px;"/></a></div>
		</div>
		<div class="col-sm-4">
			<a href="#" class="text-right">로그인</a>
			<a href="#" class="text-right">회원가입</a>
		</div>
	</div>
	
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
	  </div>
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
	
	<!-- main -->
	
	<div class="main-topText">
		<div style="border-bottom: 0.5px solid #000; height:35px">
			<p class="text-center pt-1" style="font-size:15px;">Scroll Up and Down this page to see the parallax scrolling effect?.</p>
		</div>
	</div>
	
	<!-- <div id="navbarfix" class="row" style="border:1px solid red;">
		<div class="col-sm-4 nav1">
		  <a href="#home">Home</a>
		  <a href="#news">About</a>
		  <a href="#news">Service</a>
		  <a href="#contact">Contact-us</a>
		</div>
		<div class="col-sm-4">
		  <div style="width: 200px; margin: 0 auto;"><a href="#"><img src="images/logo.png" style="width:200px;"/></a></div>
		</div>
		<div class="col-sm-4">
			<a href="#" class="text-right">로그인</a>
			<a href="#" class="text-right">회원가입</a>
		</div>
	</div>
	
	<div class="main-text">
	  <h3>Los Angeles</h3>
	  <p>We had such a great time in LA!</p>
	</div> 
	 -->
	
	
	<div class="" style="height:300px;background-color:orange;font-size:36px">
		<form>
	  <div class="form-row" style="margin:0 80px">
	    <div class="col">
	      <input type="text" class="form-control" id="name" placeholder="이름" name="name">
	    </div>
	    <div class="col">
	      <input type="text" class="form-control" placeholder="전화번호" name="phone">
	    </div>
	    <div class="col">
				<input type="email" class="form-control" placeholder="이메일" name="email">
	    </div>
	    <div class="col">
	      <input type="button" class="form-control" name="booking" class="btn btn-secondary" value="상담하기">
	    </div>    
	  </div>
	</form>
	</div>
	<div>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
		<h4>test</h4>
	</div>
	
</body>
</html>