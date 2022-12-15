<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>memIdCheck.jsp</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  	'use strict';
  	
  	// 중복 아이디 재검색하기
  	function idCheck() {
			let mid =childForm.mid.value;
			
			if(mid.trim() == "") {
				alert("아이디를 입력하세요");
				childForm.mid.focus();
			}
			else {
				childForm.submit();
			}
		}
	  
	  function sendCheck() {
			opener.window.document.myform.mid.value = '${mid}';
			opener.window.document.myform.pwd.focus();
			window.close();
		}
	  
 
  </script>
  <jsp:include page="../../include/header_sub2_style.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container idCheckWrap">
	<h2>ID check</h2>
	<hr/>
	<c:if test="${res == 1}">
		<h4><font color="orange"><b>${mid}</b></font> 아이디는 사용 가능합니다</h4>
		<br/>
		<p><input type="button" class="btn btn-dark" value="창닫기" onclick="sendCheck()"/></p>
	</c:if>
	<c:if test="${res != 1}">
		<h4><font color="orange"><b>${mid}</b></font> 아이디는 이미 사용중인 아이디 입니다</h4>
		<br/>
		<form name="childForm" method="post" action="${ctp}/memIdCheck.mem">
			<p>
				<input type="text" name="mid"/>
				<input type="button" value="아이디 재검색" onclick="idCheck()"/>
			</p>		
		</form>
	</c:if>
</div>
</body>
</html>