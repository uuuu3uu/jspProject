<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>memberLogin</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  <jsp:include page="../../include/header_sub2_style.jsp"/>
  
  <script src="${ctp}/js/woo.js"></script>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>
<jsp:include page="../../include/nav.jsp"/>
<div class="subMain">
	<div class="subTitle">
		<h1>My account</h1>
	</div>
</div>
<p><br/></p>
<div class="myAccountWrap">
	<form name="myform" class="was-validated"> 
		<h2>my account</h2>
		<div class="row">
			<div class="col">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
				<p style="margin:20px 20px 10px 0"><span class="glyphicon" style="font-size:20px; color: orange;">&#xe008;</span> <span style="color:orange; font-size:20px;"><b>${sName}</b> </span>님 반갑습니다</p>
			</div>
			<div class="col">
				<div class="text-right mt-4">
					<a href="${ctp}/memPwdCheck.mem"><input type="button" class="btn btn-dark" value="내 정보 수정하기"/></a>
				</div>
			</div>
		</div>
		<div class="box-container">
			<div class="box-container-inner">
				<div class="level-circle">
	          <p>현재등급</p>
	          <p style="font-size:20px;"><b>${strLevel}</b></p>       
	      </div> 
	      <div class="box-content"> 	
         	<div class="box-content1 vl">
         		<table class="table" style="margin-left :45px;">
         			<tr>
         				<td><i class="fa fa-money" style="font-size:36px"></i></td>
         				<td><span style="font-size:25px"> 적립금 </span></td>
         				<td><hr style="border-style: dashed; width: 100px"/></td>
	      				<td><span style="font-size:25px">${point}</span></td>
         			</tr>
         			<tr>
         				<td><i class="fa fa-ticket" style="font-size:36px"></i></td>
         				<td><span style="font-size:25px"> 쿠폰 </span></td>
         				<td><hr style="border-style: dashed; width: 100px"/></td>
	      				<td><span style="font-size:25px">0</span></td>
         			</tr>
         		</table>  	
         	</div>
	      </div><!-- box-content -->
	    </div><!-- box-container-inner -->
  	</div><!-- box-container -->
  	<div class="box-container">
  		<div class="box-container-inner2">
	  		<h4>나의 시술 기록</h4>
	  		<table class="table">
	  			<thead class="thead-dark">
		  			<tr>
		  				<th>날짜</th>
		  				<th>상품명</th>
		  				<th>상태</th>
		  			</tr>
	  			</thead>
	  			<tr>
	  				<td>2022-12-21</td>
	  				<td>test중입니다</td>
	  				<td>시술완료 </td>
	  			</tr>
	  			<tr>
	  				<td>2022-12-21</td>
	  				<td>test중입니다</td>
	  				<td>시술완료 </td>
	  			</tr>
	  		</table>
	  		<h4>나의 1:1문의</h4>
	  		<table class="table">
	  			<thead class="thead-dark">
		  			<tr>
		  				<th>날짜</th>
		  				<th>제목</th>
		  				<th>상태</th>
		  			</tr>
	  			</thead>
	  			<tr>
	  				<td>2022-12-21</td>
	  				<td>test중입니다</td>
	  				<td>답변대기 </td>
	  			</tr>
	  		</table>
	  	</div><!-- box-container-inner2 -->
  	</div>
  </form>
</div><!-- myAccountWrap -->
<p><br/></p>
</body>
</html>