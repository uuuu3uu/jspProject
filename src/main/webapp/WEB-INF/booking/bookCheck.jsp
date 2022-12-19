<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>title</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <jsp:include page="../../include/header_sub2_style.jsp"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
  <script>
  	$(window).ready(function() {		
		  $('.btn').click(function(){
			  $('.btn').removeClass("active");
			  $(this).addClass("active");
			})
		});
  	
  	function product1() {
  		let provalue = myform.product.value;
  		$('.custom-select0').addClass('on');  		
  		if(provalue == '속눈썹') {
	  		$('.custom-select1').removeClass('on');		
  			$('.custom-select2').addClass('on');  				
  			$('.custom-select3').addClass('on');  				
  			$('.custom-select4').addClass('on');  				
  		}
  		else if(provalue == '피부') {
	  		$('.custom-select2').removeClass('on');		
  			$('.custom-select1').addClass('on');  				
  			$('.custom-select3').addClass('on');  				
  			$('.custom-select4').addClass('on');  				
  		}
  		else if(provalue == '왁싱') {
	  		$('.custom-select3').removeClass('on');		
  			$('.custom-select2').addClass('on');  				
  			$('.custom-select1').addClass('on');  				
  			$('.custom-select4').addClass('on');  				
  		}
  		else if(provalue == '눈썹') {
	  		$('.custom-select4').removeClass('on');		
  			$('.custom-select2').addClass('on');  				
  			$('.custom-select3').addClass('on');  				
  			$('.custom-select1').addClass('on');  				
  		}
		}
  	
  	/* 화면에 출력하기 */
  	function setBookDate() {
			let selectBookDate = myform.selectBookDate.value;
			/* document.getElemnetById("getDate").innerHTML = selectBookDate; */
			
			location.href = "${ctp}/bookCheckOk.book?bookingDate="+selectBookDate;
		}
  	
  	
  	
  	
  	// 폼체크후 예약 전송하기
  	function fCheck() {
			let product = $("#product").val();
			let sel = '';
			if(product == '속눈썹') sel = "1";
			else if(product == '피부') sel = "2";
			else if(product == '왁싱') sel = "3";
			else sel = "4";
  	  product = $("#product").val() + "/" + $("#pro"+sel).val();
  	  alert("product : " + product);
  	  
  	  
  	  /* 폼 체크.... */
  	  
  	  myform.bookingProduct.value = product;
  	  
  	  myform.submit();
  	}
  	
  	function printPro(sw){
  		let productprint = $("#pro"+sw).val();
  		$("#productprint").html(productprint);
  		
  	}
  	
  	function setBookTime(str) {
			let bookTimeprint = str;
			$("#bookTimeprint").html(bookTimeprint);
		}
  	
  	
  </script>
  
  <style>
  	.active	{
  		/* background-color: #efa73c !important; */
  		background-color: #efa73c !important;
  		/* boder-color: #efa73c !important;
  		boder: 1px solid #efa73c !important; */
  		/* color: #fff !important; */
  	}
   	.on {
   		display: none;
   	}
  	
  </style>
  
</head>
<body>
<jsp:include page="/include/nav.jsp"/>

<div class="subMain">
	<div class="subTitle">
		<h1>Reservation</h1>
	</div>
</div>

<div class="bookCheckWrap">
	
	<form name="myform" method="post" action="${ctp}/bookCheckFormOk.book" class="was-validated"> <!-- 입력시켜 데이터베이스에 보내는..  -->
	  <h2>Reservation</h2>
	
		<div class="form-group">
      <label for="selectDay">날짜선택 *</label>
      <input type="date" name="selectBookDate" value="${bookingDate}" onchange="setBookDate()" class="form-control" required />
    </div>
      
    <div class="form-group" id="buttons">
    	<label for="selectTime">시간선택 *</label><br/>
    	<c:forEach var="i" begin="1" end="9">	 
       	<c:set var="sw" value="0"/>
 		    <c:forEach var="vo" items="${bookingVos}" varStatus="st">
       		<c:if test="${fn:substring(vo.bookingDate,11,13)==i+9}">
       			<c:set var="sw" value="1"/>
      		</c:if>
    		</c:forEach>
      		<c:if test="${sw==1}"><button type="button" class="btn mr-3 mb-2" style="background-color:#ddd; cursor: auto;" disabled>${i+9}:00</button></c:if>
      		<c:if test="${sw==0}"><button type="button" class="btn mr-3 mb-2" onclick="setBookTime('${i+9}:00')"><font color='white'>${i+9}:00</font></button></c:if>
  			<c:if test="${i % 3 == 0}"><br/></c:if>  		
    	</c:forEach>
    </div>
      
		<div class="form-group">
      <label for="product">시술종류 *</label>
				<div class="input-group mb-3 inline">
			    <select name="product" id="product" onchange="product1()" class="custom-select mr-3" style="border-radius:0.2em; border-color: #000;" required>
				    <option disabled selected>선택하세요</option>
				    <option>속눈썹</option>
				    <option>피부</option>
				    <option>왁싱</option>
				    <option>눈썹</option>
				  </select>
				  
				  <select name="pro" class="custom-select0" style="width:600px; border-radius:0.2em;" required>
				    <option value="선택하세요" disabled selected>선택하세요</option>
				  </select>
				  
				  <select name="pro" id="pro1" class="custom-select1 on" onchange="printPro(1)" style="border-color:#000; width:600px; border-radius:0.2em;" required>
				    <option value="벨벳모" selected>벨벳모</option>
				    <option value="러시안볼륨(3D)">러시안볼륨(3D)</option>
				    <option value="포인트래쉬">포인트래쉬</option>
				    <option value="퓨어펌">퓨어펌</option>
				    <option value="모이스처퓨어펌">모이스처퓨어펌</option>
				  </select>
				  
				  <select name="pro" id="pro2" class="custom-select2 on" onchange="printPro(2)" style="width:600px; border-radius:0.2em;">
				    <option value="플래닝" selected>플래닝</option>			 
				    <option value="하이푸리프팅">하이푸리프팅</option>
				    <option value="LDM">LDM</option>
				  </select>
				  
				  <select name="pro" id="pro3" class="custom-select3 on" onchange="printPro(3)" style="border-color:#000; width:600px; border-radius:0.2em;">
				    <option value="페이스" selected>페이스</option>
				    <option value="팔">팔</option>
				    <option value="다리">다리</option>		
				  </select>
				  
				  <select name="pro" id="pro4" class="custom-select4 on" onchange="printPro(4)" style="border-color:#000; width:600px; border-radius:0.2em;">
				    <option value="자연눈썹(엠보기법)" selected>자연눈썹(엠보기법)</option>
				    <option value="콤보눈썹(엠보+섀도우)">콤보눈썹(엠보+섀도우)</option>
				    <option value="섀도우눈썹(화장눈썹)">섀도우눈썹(화장눈썹)</option>
				  </select>
				</div> <!-- input-group mb-3 inline --> 		
			</div><!-- form-group -->
		<!-- </form> -->
		
		<!-- <form class="w3-container w3-card-4 w3-light-grey mt-5"> -->
			<table class="table" style="margin-top:70px">
				<tr class="text-center">
					<th>고객명</th>
					<th>전화번호</th>
					<th>예약날짜</th>
					<th>상품명</th>
					<th>가격</th>					
				</tr>
				<tr class="text-center">
					<td></td>
					<td></td>
					<td class="text-center">
						<span>${bookingDate} <span id="bookTimeprint"></span></span>
						
					</td>				
					<td><span id="productprint"></span></td>				
					<td></td>				
				</tr>
			</table>
			<input type="hidden" name="bookingProduct"/>
		</form>
		
		<div class="form-group" style="margin-top:50px;">
			<div class="input-group mt-2">
      	<button type="button" onclick="fCheck()" class="btn btnOk mr-3">예약신청</button>
      	<button type="reset" class="btn btnOk mr-3">다시선택하기</button>
      </div>
		</div>
	</div><!-- bookCheckWrap -->
</body>
</html>



 
    <%-- <div class="form-group" id="buttons">
      <label for="selectTime">시간선택 *</label>
    <c:set var="cnt" value="10"/>
      <c:forEach var="i" begin="1" end="3">
	      <div class="input-group mt-2">${fn:substring(vo.bookingDate,11,13)}
	      <c:forEach var="j" begin="1" end="3">
		        <c:if test="${bookingVos[0] != null}">
		        	<c:forEach var="vo" items="${bookingVos}" varStatus="st">
			          <c:if test="${fn:substring(vo.bookingDate,11,13)==cnt}">
		      				<button type="button" class="btn mr-3" onclick="setBookTime()"><font color='orange'>${cnt}:00</font></button>
		      			</c:if>
			          <c:if test="${fn:substring(vo.bookingDate,11,13)!=cnt}">
		      				<button type="button" class="btn mr-3" onclick="setBookTime()">${cnt}:00</button>
		      			</c:if>
				    		<c:set var="cnt" value="${cnt + 1}"/>
			      	</c:forEach>
		      	</c:if>
		      	<c:if test="${bookingVos[0] == null}">
		      		<button type="button" class="btn mr-3" onclick="setBookTime()">${cnt}:00</button>
			    		<c:set var="cnt" value="${cnt + 1}"/>
		      	</c:if>
	      	</c:forEach>
   		  </div>
      </c:forEach>  --%>
      