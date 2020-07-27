<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
  <head>
  <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <title>Hassue</title>
        
<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.css" />
	rel="stylesheet">
<link href="/resources/css/styles.css" rel="stylesheet" />

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- ?? -->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        
        
<!-- Google fonts-->
<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" /> -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />

</head>
<body id="page-top">
<%@include file="board/nav.jsp"%>
<title>Home</title>
<br />
<script type="text/javascript">
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "member/logout";
		})
		$("#registerBtn").on("click", function() {
			location.href = "member/register";
		})

		$("#memberUpdateBtn").on("click", function() {
			location.href = "member/memberUpdateView";
		})

		$("#memberDeleteBtn").on("click", function() {
			location.href = "member/memberDeleteView";
		})

	})
</script>


<body>
	<!-- JS -->
	<Script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
	<Script src="<c:url value="/js/bootstrap.min.js" />"></script>
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">

			<div class="container">
				<div class="text-center">
					<label for="userId"></label> <input type="text" id="userId"
						name="userId" placeholder="YOUR ID">
				</div>
				<br />
				<div class="text-center">
					<label for="userPass"></label> <input type="password" id="userPass"
						name="userPass"  placeholder="YOUR PASSWORD">
				</div>
				<br />
				<div class="text-center">
					<button class="btn btn-primary btn-xl text-uppercase"
						id="memberUpdateBtn" type="submit">로그인</button>
						
					<button class="btn btn-primary btn-xl text-uppercase"
						id="registerBtn" type="button">회원가입</button>
				</div>
			</div>
		</c:if>
		
		<c:if test="${member != null }">
			<div>
				<div class="text-center"><p>${member.userId}님 환영합니다.</p></div>
				<div class="text-center">

					<button class="btn btn-primary btn-xl text-uppercase"
						id="memberUpdateBtn" type="button">회원정보수정</button>

					<button class="btn btn-primary btn-xl text-uppercase"
						id="logoutBtn" type="button">로그아웃</button>	
				</div>
		</c:if>

		<c:if test="${msg == false}">
			<div class="text-center"><p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p></div>
		</c:if>
	</form>
</body>
</html>