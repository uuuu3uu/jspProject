<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>memberLogin</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  
  <jsp:include page="../../include/header_sub2_style.jsp"/>
  <script>
  'use strict';
  	function fCheck() {
			
	  	let pwd = document.getElementById("pwd").value;
	  		
	    if(pwd.trim() == "") {
	    	alert("비밀번호를 입력하세요");
	    	document.getElementById("pwd").focus();
	    }   	
	    else {
	    	myform.submit();
	    }
		}
  </script>
</head>
<body>
<jsp:include page="../../include/nav.jsp"/>
<div class="subMain">
	<div class="subTitle">
		<h1>Login</h1>
	</div>
</div>
<p><br/></p>
<div class="loginWrap">
	<form name="myform" method="post" action="${ctp}/memPwdCheckOk.mem" class="was-validated"> <!-- 입력시켜 데이터베이스에 보내는..  -->
		<h2>비밀번호 확인</h2>
		
    <div class="form-group">
      <label for="pwd">비밀번호 *</label>
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요" required />
      <div class="invalid-feedback">비밀번호 입력은 필수 입력사항입니다.</div> 
    </div>
    
    <div class="form-group" style="float: left;">
			<button type="submit" class="btn" onclick="fCheck()">확인</button>
			<button type="reset" onclick="location.href='${ctp}/memMyAccount.mem';" class="btn">돌아가기</button><br/>
		</div>
		<input type="hidden" name="mid" value="${sMid}"/>
  </form><!-- myform -->
			   
</div><!-- container -->
<p><br/></p>
</body>
</html>