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

<title>Hassue</title>

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

<title>댓글수정</title>
</head>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='updateForm']");

						$("#cancel_btn")
								.on(
										"click",
										function() {
											location.href = "/board/readView?bno=${replyUpdate.bno}"
													+ "&page=${scri.page}"
													+ "&perPageNum=${scri.perPageNum}"
													+ "&searchType=${scri.searchType}"
													+ "&keyword=${scri.keyword}";
										})

					})
</script>
<body id="page-top">

	<%@include file="nav.jsp"%>

	<div class="container">
		<header>
			<h1>댓글수정</h1>
		</header>
		<hr />


		<section id="container">
			<form name="updateForm" role="form" method="post"
				action="/board/replyUpdate">
				<input type="hidden" name="bno" value="${replyUpdate.bno}"
					readonly="readonly" /> <input type="hidden" id="rno" name="rno"
					value="${replyUpdate.rno}" /> <input type="hidden" id="page"
					name="page" value="${scri.page}"> <input type="hidden"
					id="perPageNum" name="perPageNum" value="${scri.perPageNum}">
				<input type="hidden" id="searchType" name="searchType"
					value="${scri.searchType}"> <input type="hidden"
					id="keyword" name="keyword" value="${scri.keyword}">
				<table>
					<tbody>
						<tr>
		
							<label for="content" >댓글 내용</label>
							<input type="text" id="content" name="content" class="form-control" style="width:800px; height:100px;"
								value="${replyUpdate.content}" /></td>
						</tr>
					</tbody>
				</table>
				<br />
				<div>
					<button type="submit" id="update_btn"
						class="btn btn-primary btn-xl text-uppercase">저장</button>
					<button type="button" id="cancel_btn"
						class="btn btn-primary btn-xl text-uppercase">취소</button>
					<!-- 					<button type="submit" class="update_btn">저장</button> -->
					<!-- 					<button type="button" class="cancel_btn">취소</button> -->
					<!--  <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="/board/Description.jsp">처음 방문하셨나요?</a>	-->
			</form>
		</section>

		<hr />
	</div>
</body>
</html>