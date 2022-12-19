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
  <script>
    'use strict';

 		// 회원가입폼 체크후 서버로 전송(submit)
    function fCheck() {
 			
 			// 비밀번호 체크 
	   	let regPwd = /(?=.*[0-9a-zA-Z]).{4,20}$/;
		    	
			let oldPwd = document.getElementById("oldPwd").value;
			let newPwd = document.getElementById("newPwd").value;
			let rePwd = document.getElementById("rePwd").value;
				
			if(newPwd.trim() == "") {
				alert("새 비밀번호를 입력하세요");
				document.getElementById("newPwd").focus();
			}
			else if(rePwd.trim() == "") {
				alert("새 비밀번호를 한번 더 입력하세요");
				document.getElementById("rePwd").focus();
			}
			else if(!regPwd.test(newPwd)) {
		    alert("비밀번호는 4 자리로 작성해주세요.");
		    myform.newPwd.focus();
		  }
			else if(newPwd != rePwd) {
				alert("새 비밀번호와 동일한 비밀번호를 입력해 주세요.");
		    myform.rePwd.focus();
			}
			else if(newPwd == oldPwd) {
				alert("기존 비밀번호와 새 비밀번호가 동일합니다");
		    myform.newPwd.focus();
			}
			else {
				myform.submit();
			}
 			
    	// 폼의 유효성 검사~~~~
    	let regMid = /^[a-z0-9_]{4,20}$/;
      // let regPwd = /(?=.*[a-zA-Z])(?=.*?[#?!@$%^&*-]).{4,24}/;
      let regPwd = /(?=.*[0-9a-zA-Z]).{4,20}/;
      let regName = /^[가-힣a-zA-Z]+$/;
      let regEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      let regTel = /\d{2,3}-\d{3,4}-\d{4}$/g;
      
      let submitFlag = 0;		// 전송체크버튼으로 값이 1이면 체크완료되어 전송처리한다.

      // 유효성검사를 위해 폼안의 내용들을 모두 변수에 담는다.
    	let mid = myform.mid.value;
    	let pwd = myform.pwd.value;
    	let name = myform.name.value;
    	let email1 = myform.email1.value;
    	let email2 = myform.email2.value;
      let email = email1 + '@' + email2;
      let tel1 = myform.tel1.value;
      let tel2 = myform.tel2.value;
      let tel3 = myform.tel3.value;
   	  let tel = tel1 + "-" + tel2 + "-" + tel3; 
	
    	// 유효성 검사체크처리한다.(필수 입력필드는 꼭 처리해야 한다.)
      if(!regName.test(name)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.name.focus();
        return false;
      }
      else if(!regEmail.test(email)) {
        alert("이메일 형식에 맞지않습니다.");
        myform.email1.focus();
        return false;
      }
    	
    	// 선택사항인 전화번호가 입력되어서 전송되었다면 전화번호형식을 체크해 준다.
      if(tel2 != "" || tel3 != "") {
	      if(!regTel.test(tel)) {
	        alert("전화번호 형식에 맞지않습니다.(000-0000-0000)");
	        myform.tel2.focus();
	        return false;
	      }
	      else {
	    	  submitFlag = 1;
	      }
      }
      else {	// 전화번호를 입력하지 않을시 DB에는 '010- - '의 형태로 저장하고자 한다.
    	  tel2 = " ";
    	  tel3 = " ";
    	  tel = tel1 + '-' + tel2 + '-' + tel3;
    	  submitFlag = 1;
      }
    	
  		// 전송전에 '주소'를 하나로 묶어서 전송처리 준비한다.
  		let postcode = myform.postcode.value + " ";
  		let roadAddress = myform.roadAddress.value + " ";
  		let detailAddress = myform.detailAddress.value + " ";
  		let extraAddress = myform.extraAddress.value + " ";
  		myform.address.value = postcode + "/" + roadAddress + "/" + detailAddress + "/" + extraAddress + "/";
    	
  		
  		// 전송전에 모든 체크가 끝나서 submitFlag가 1이되면 서버로 전송한다.
    	if(submitFlag == 1) {
    		else if {
	  			// 묶여진 필드(email/tel)를 폼태그안에 hidden태그의 값으로 저장시켜준다.
	  			myform.email.value = email;
	  			myform.tel.value = tel;
	  			
	  			myform.submit();
    		}
    	}
    	else {
    		alert("정보수정 실패 ");
    	}
    }

  	
 	</script>
</head>
<body>
<jsp:include page="../../include/nav.jsp"/>
<div class="subMain">
	<div class="subTitle">
		<h1>Modify information</h1>
	</div>
</div>
<p><br/></p>
<div class="UpdateWrap">
	<form name="myform" method="post" action="${ctp}/memJoinOk.mem" class="was-validated"> <!-- 입력시켜 데이터베이스에 보내는..  -->
		<h2>Modify information</h2>
		<div class="form-group">
      <label for="name">이름 </label>
      <input type="text" value="${vo.name}" class="form-control" id="name" placeholder="이름 입력" name="name" required />
    </div>
    <div class="form-group">
      <label for="name">아이디 </label>
      <input type="text" value="${mid}" class="form-control" id="name" name="name" disabled />
    </div> 
    <div class="form-group">
      <label for="pwd">새 비밀번호 </label>
      <input type="password" name="newPwd" id="pwd" autofocus required class="form-control"/>
				<div class="invalid-feedback">새 비밀번호를 입력하세요</div>
    </div>
    <div class="form-group">
      <label for="rePwd">비밀번호 확인</label>
      <input type="password" name="rePwd" id="rePwd" required class="form-control"/>
	        <div class="invalid-feedback">새 비밀번호를 한번더 입력하세요.</div>
    </div>
    
    <div class="form-group">
      <div class="input-group mb-3">
	      <div class="input-group-prepend">
	        <label for="tel1" style="width:150px">전화번호 </label>
			      <select name="tel1" class="custom-select" style="border-color:#000;">
					    <option value="010" ${tel1=="010" ? "selected" : ''}>010</option>
					    <option value="02"	${tel1=="02" ? "selected" : ''}>서울</option>
					    <option value="031"	${tel1=="031" ? "selected" : ''}>경기</option>
					    <option value="032"	${tel1=="032" ? "selected" : ''}>인천</option>
					    <option value="041"	${tel1=="041" ? "selected" : ''}>충남</option>
					    <option value="042"	${tel1=="042" ? "selected" : ''}>대전</option>
					    <option value="043"	${tel1=="043" ? "selected" : ''}>충북</option>
			        <option value="051"	${tel1=="051" ? "selected" : ''}>부산</option>
			        <option value="052"	${tel1=="052" ? "selected" : ''}>울산</option>
			        <option value="061"	${tel1=="061" ? "selected" : ''}>전북</option>
			        <option value="062"	${tel1=="062" ? "selected" : ''}>광주</option>
					  </select><span style="margin:0 10px">-</span>
	      </div>
	      <input type="text" value="1234" name="tel2" size=4 maxlength=4 class="form-control" required/><span style="margin:0 10px" >-</span>
	      <input type="text" value="1234" name="tel3" size=4 maxlength=4 class="form-control" required/>
	    </div> 
    </div>
   
    <div class="form-group">
      <label for="birthday">생년월일</label>
      <input type="date" name="birthday" value="${birthday}" class="form-control" style="border-color:#000;"/>
    </div>
	  
	  
	  <div class="form-group">
      <label for="gender">성별 </label> <br/>
	    <input type="radio" class="form" name="gender" value="여자" <c:if test="${vo.gender=='여자'}">checked</c:if>>여자 &nbsp;&nbsp;&nbsp;
	    <input type="radio" class="form" name="gender" value=남자 <c:if test="${vo.gender=='남자'}"></c:if>>남자
    </div>
    
    <div class="form-group">
      <label for="email1">Email address </label>
				<div class="input-group mb-3">
				  <input type="text" value="asdf" class="form-control" placeholder="Email을 입력하세요." id="email1" name="email1" required />
				  <div class="input-group-append">
				    <select name="email2" class="custom-select" style="border-color:#000;">
					    <option value="naver.com"   <c:if test="${email2=='naver.com'}">selected</c:if>>naver.com</option>
					    <option value="hanmail.net" <c:if test="${email2=='hanmail.net'}">selected</c:if>>hanmail.net</option>
					    <option value="daum.net" <c:if test="${email2=='daum.net'}">selected</c:if>>daum.net</option>
					    <option value="nate.com" <c:if test="${email2=='nate.com'}">selected</c:if>>nate.com</option>
					    <option value="outlook.com" <c:if test="${email2=='outlook.com'}">selected</c:if>>outlook.com</option>
					  </select>
				  </div>
				</div>
	  </div>
	  
	  <div class="form-group">
      <label for="address">주소</label>
			<input type="hidden" name="address" id="address">
			<div class="input-group mb-1">
				<input type="text" value="${postcode}" name="postcode" id="sample6_postcode" placeholder="우편번호" class="form-control" required>
				<div class="input-group-append">
					<input type="button" id="findWoo" class="btn p-0 m-0" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>
				</div>
			</div>
			<input type="text" value="asdf" name="roadAddress" id="sample6_address" size="50" placeholder="주소" class="form-control mb-1" required>
			<input type="text" name="roadAddress" value="${roadAddress}" id="sample6_address" size="50" placeholder="주소" class="form-control mb-1">
			<div class="input-group mb-1">
				<input type="text" name="detailAddress" value="${detailAddress}" id="sample6_detailAddress" placeholder="상세주소" class="form-control"> &nbsp;&nbsp;
				<div class="input-group-append">
					<input type="text" name="extraAddress" value="${extraAddress}" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
				</div>
			</div>
    </div>
	  
	  <div class="form-group">
        <label for="path">어나더유를 알게 된 경로</label><br/>	
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="인스타그램" name="path" checked/>인스타그램
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="페이스북" name="path"/>페이스북
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="카카오톡 친구" name="path"/>카카오톡 친구
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="지인추천" name="path"/>지인추천
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="검색을 통해" name="path"/>검색을 통해
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label">
			    <input type="checkbox" class="form-check-input" value="기타" name="path"/>기타
			  </label>
			</div>
    </div><!-- form-group (경로) -->
    <div class="form-group mt-5 mb-5">
    	 
	    <button type="button" class="btn btn-sm" onclick="fCheck()">회원정보수정</button> &nbsp;
	    <input type="reset" class="btn btn-sm" value="다시작성"/> &nbsp;
	    <input type="button" class="btn btn-sm" value="돌아가기" onclick="location.href='${ctp}/memMyAccount.mem';"/>
    </div>
    
		<input type="hidden" name="tel"/>
    <input type="hidden" name="email"/>
  </form><!-- myform -->
			   
</div><!-- container -->
<p><br/></p>
</body>
</html>