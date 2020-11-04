<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<meta name="description" content="" />
<meta name="author" content="" />

<style>
.white {
	color: white;
}
</style>

<title>Hassue - member delete</title>

<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.css" />
   rel="stylesheet">
<link href="/resources/css/styles.css" rel="stylesheet" />

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- ?? -->
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>


<!-- Google fonts-->
<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" /> -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap"
	rel="stylesheet">

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />

</head>

<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$("#canclebtn").on("click", function() {

			location.href = "/";

		})

		$("#submit").on("click", function() {
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}
			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dateType : "json",
				data : $("#delForm").serializeArray(),
				success : function(data) {

					if (data == true) {
						if (confirm("회원탈퇴하시겠습니까?")) {
							$("#delForm").submit();
						}
					} else {
						alert("패스워드가 틀렸습니다.");
						return;
					}
				}
			})

		});

	})
</script>
<body id="page-top">

	<%@include file="nav.jsp"%>

	<span id="container">

		<section class="page-section" id="contact">
			<div class="container">
				<div class="text-center">
					<h2 class="section-heading text-uppercase">정말 탈퇴하실 건가요?</h2>
					<p class="white">비밀번호를 입력하세요.</p>
				</div>


				<section id="container">
					<form action="/member/memberDelete" method="post" id="delForm">
						<div class="form-group has-feedback">
							<div class="text-center">
								<label class="white" for="userId"> 아이디 &nbsp</label> <input
									type="text" id="userId" name="userId" value="${member.userId}"
									readonly="readonly" />
							</div>

							</br> </br>
							<div class="text-center">
								<label class="white" for="userPass">패스워드</label> <input
									type="password" id="userPass" name="userPass" />
							</div>

							</br> </br>
							<div class="text-center">
								<label class="white" for="userName">&nbsp &nbsp 성명 &nbsp
									&nbsp</label> <input type="text" id="userName" name="userName"
									value="${member.userName}" readonly="readonly" />
							</div>

							</br>


						</div>
					</form>
					<div class="text-center">
						<div class="form-group has-feedback">
							<button class="btn btn-primary btn-xl text-uppercase"
								" type="button" id="submit">회원탈퇴</button>
							<button class="btn btn-primary btn-xl text-uppercase"
								id="canclebtn" type="button">취소</button>
						</div>
					</div>
					<div>
						<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
					</div>

				</section>
			</div>
		</section>
	</span>
</body>

</html>