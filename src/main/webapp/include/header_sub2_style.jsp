<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	body {
		margin: 0;
		background-color: #fff;
		font-family: Catamaran,sans-serif;
    font-size: 16px;
    /* line-height: 1.625em; */
    /* font-weight: 400; */
    color: #6f6f6f;
    /* letter-spacing: .02em; */
	}
	.container-fluid {
		margin: 0;
		padding: 0;
	}
	.subMain {
		width: 100%;
		height: 180px;
		background-color: #fafafa;
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
		font-size: 15px;
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
	.subMain h1 {
		font-family: Cormorant,serif;
		/* letter-spacing: .01em; */
		color: #363636;
	  font-size: 54px;
	  line-height: 1.07em;
	  font-weight: 600;
	  padding: 60px 0 0 200px;
	}
	
	.loginWrap {
	  	margin: 100px 300px;
	  }
	.loginWrap h2 {
		font-family: Cormorant,serif;
    letter-spacing: .01em;
    color: #363636;
    font-size: 42px;
    line-height: 1.1667em;
    font-weight: 600;
    margin: 25px 0;
	}
	.loginWrap input {
		background-color: transparent;
    border: none;
    border-bottom: 1px solid rgba(54,54,54,.7) !important;
    border-radius: 0;
    box-sizing: border-box;
    outline: 0;
    cursor: text;
    /* width: 600px; */
	}
	.form-group .btn {
		border-radius: 0px; 
		background-color: #363636;
    color: #fff;  
		padding: 12px 45px 11px;
    cursor: pointer;
    border: 1px solid transparent;
    
	}
	
	
	/* 회원가입 */
	#midBtn {
		width: 140px;
    height: 35px;
    font-size: 13px;
    border-radius: 3px;
	}
	.form-control.is-invalid, .was-validated .form-control:invalid {		/* 통째로 먹는듯 */
    border-color: #000;
	}
	
	.joinWrap {
	  	margin: 100px 300px;
	  }
	.joinWrap h2 {
		font-family: Cormorant,serif;
    letter-spacing: .01em;
    color: #363636;
    font-size: 42px;
    line-height: 1.1667em;
    font-weight: 600;
    margin: 25px 0;
	} 
	
	.joinWrap input {
		background-color: transparent;
    border: none;
    border-bottom: 1px solid rgba(54,54,54,.7) !important;
    border-radius: 0;
    box-sizing: border-box;
    outline: 0;
    cursor: text;
	}
	#findWoo {
		width: 140px;
    height: 35px;
    font-size: 13px;
    border-radius: 3px;
	}
	
	/* 아이디 중복 체크 */
	.idCheckWrap {
		margin: 10px;
	}
	.idCheckWrap h2 {
		font-family: Cormorant,serif;
    letter-spacing: .01em;
    color: #363636;
    font-size: 42px;
    line-height: 1.1667em;
    font-weight: 600;
    margin: 25px 0;
	}
	
	
</style>