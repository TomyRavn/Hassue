<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Home</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">

body{
 margin: 0 auto;
background-image: url("https://media.istockphoto.com/vectors/students-on-books-stack-education-knowledge-concept-studying-process-vector-id990446124");
background-repeat: no-repeat;
background-position:center;
}

div#login_wrapper{
position: absolute;
top: 40%;
left: 65%;
width: 300px; height: 120px;
margin-left: -150px;
margin-top: -80px;
text-align: center;
padding-right: 20px;
padding-top: 15px;
}


</style> 
</head>

<a href="/board/list">게시판</a><br />
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="member/register";
		})
				
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/memberUpdateView";
		})
		
	})
</script>
<body>
	<form name='homeForm' method="post" action="/member/login">
	<div id="login_wrapper">
		<c:if test="${member == null}">
			<div>
				<label for="userId">아이디 </label>
				<input type="text" id="userId" name="userId">				
			</div>
			<div>
				<label for="userPass">비밀번호</label>
				<input type="password" id="userPass" name="userPass">
			</div>
			<br>
			<div>
				<button type="submit" class="update_btn btn btn-warning">로그인</button>
				<button id="registerBtn" type="button" class="list_btn btn btn-primary">회원가입</button>
			</div>
	</div>	
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="memberUpdateBtn" type="button" class="update_btn btn btn-warning">회원정보수정</button>
				<button id="logoutBtn" type="button" class="delete_btn btn btn-danger">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>