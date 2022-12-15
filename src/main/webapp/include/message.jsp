<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>message.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include> --%>
  <script>
  	'use strict';
  	
  	let msg = "${msg}";
  	let url = "${url}";
  	let val = "${val}";
  	
  	if(msg == "loginOK") msg = val + "님 환영합니다";
  	else if(msg == "loginNO") msg = "없는 아이디 또는 비밀번호 입니다";
  	else if(msg == "LogoutOK") msg = val + "님 로그아웃 되셨습니다.";
  	else if(msg == "idCheckNO") msg = "중복된 아이디 입니다";
  	else if(msg == "memJoinOK") msg = "정상적으로 회원가입이 되었습니다";
  	else if(msg == "memJoinNO") msg = "회원가입 실패";
  	/* else if(msg == "passwordNO") msg = "비밀번호 확인하세요";
  	else if(msg == "passwordOK") msg = "비밀번호를 변경하였습니다"; */
  	
  	
  	alert(msg);
  	if(url != "") location.href = url;
  </script>
<%-- </head>
<body>
<jsp:include page="/include/header.jsp"/>
<p><br/></p>
<div class="container">
	
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html> --%>