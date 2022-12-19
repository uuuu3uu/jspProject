<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>title</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <jsp:include page="../../include/header_sub2_style.jsp"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<jsp:include page="../../include/nav.jsp"/>

<div class="subMain">
	<div class="subTitle">
		<h1>Reservation</h1>
	</div>
</div>

<div class="w3-container w3-blue">
  <h2>First Name</h2>
</div>

<form class="w3-container">
  <p>
  <label>First Name</label>
  <input class="w3-input" type="text"></p>
  <p>
  <label>Last Name</label>
  <input class="w3-input" type="text"></p>
  <p>
  <label>Email</label>
  <input class="w3-input" type="text"></p>
</form>

<div class="bookCheckWrap">
	<form name="myform" method="post" action="${ctp}/memJoinOk.mem" class="was-validated"> <!-- 입력시켜 데이터베이스에 보내는..  -->
		<h2>Product</h2>
		
		<div class="form-group">
      <label for="birthday">시간선택</label>
      <input type="date" name="SelectTime" value="<%=java.time.LocalDate.now() %>" class="form-control" style="border-color:#000;"/>
    </div>
		
    <div class="form-group">
      <label for="email1">시술종류</label>
				<div class="input-group mb-3 inline">
			    <select name="product" class="custom-select" style="border-color:#000;">
				    <option value="선택하세요" disabled selected>선택하세요</option>
				    <option value="속눈썹">속눈썹</option>
				    <option value="피부">피부</option>
				    <option value="왁싱">왁싱</option>
				    <option value="눈썹">눈썹</option>
				  </select>
				  <select name="product" class="custom-select" style="border-color:#000;">
				    <option value="벨벳모" selected>벨벳모</option>
				    <option value="러시안볼륨(3D)">러시안볼륨(3D)</option>
				    <option value="포인트래쉬">포인트래쉬</option>
				    <option value="퓨어펌">퓨어펌</option>
				    <option value="모이스처퓨어펌">모이스처퓨어펌</option>
				  </select>
				</div> <!-- input-group mb-3 inline --> 		
		</div><!-- form-group -->
	  
	  
  </form><!-- myform -->
			   
</div><!-- container -->



</body>
</html>