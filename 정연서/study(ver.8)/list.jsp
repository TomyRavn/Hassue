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
</head>

<body id="page-top">

	<%@include file="nav.jsp"%>

	<!-- Portfolio Grid-->
	<section class="page-section bg-light" id="portfolio">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">One_Day Class</h2>
				<h3 class="section-subheading text-muted">새로운 취미를 만들어보세요.</h3>
				<br /> <br />
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6 mb-4">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" href="#portfolioModal1"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div> -->
						<a
							href="http://localhost:8081/board/readView?bno=101&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/01-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">오늘 뭐입지?</div>
							<div class="portfolio-caption-subheading text-muted">#꾸안꾸
								#OOTD #패션클래스</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" -->
						<!-- 								href="#portfolioModal2"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div>  -->
						<a
							href="http://localhost:8081/board/readView?bno=104&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/02.2-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">꽃꽂이</div>
							<div class="portfolio-caption-subheading text-muted">#꽃꽂이클래스
								#부케 #꽃다발 #💐</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" -->
						<!-- 								href="#portfolioModal3"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div>  -->
						<a
							href="http://localhost:8081/board/readView?bno=81&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/03-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">오늘만큼은 제페토 할아버지</div>
							<div class="portfolio-caption-subheading text-muted">#목공
								클래스 #목재준비완료 #피노키오</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" -->
						<!-- 								href="#portfolioModal4"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div>  -->
						<a
							href="http://localhost:8081/board/readView?bno=102&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/04-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">얼리어답터 꿈나무</div>
							<div class="portfolio-caption-subheading text-muted">#SNS
								팔로워 늘리기 #각종 전자기기 활용법</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" -->
						<!-- 								href="#portfolioModal5"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div>  -->
						<a
							href="http://localhost:8081/board/readView?bno=94&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/05.2-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">실용음악</div>
							<div class="portfolio-caption-subheading text-muted">#band
								#통기타 #일렉기타 #보컬트레이닝 #RocknRoll</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="portfolio-item">
						<!-- 							<a class="portfolio-link" data-toggle="modal" -->
						<!-- 								href="#portfolioModal6"> -->
						<!-- 								<div class="portfolio-hover"> -->
						<!-- 									<div class="portfolio-hover-content"> -->
						<!-- 										<i class="fas fa-plus fa-3x"></i> -->
						<!-- 									</div> -->
						<!-- 								</div>  -->
						<a
							href="http://localhost:8081/board/readView?bno=105&page=1&perPageNum=10&searchType=&keyword="><img
							class="img-fluid"
							src="/resources/assets/img/portfolio/06.1-thumbnail.jpg" alt="" /></a>
						<!-- 							</a> -->
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Cooking</div>
							<div class="portfolio-caption-subheading text-muted">#JMTGR
								#한식 #양식 #중식 #쿠킹클래스 #요리교실</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Contact form JS-->
	<script src="assets/mail/jqBootstrapValidation.js"></script>
	<script src="assets/mail/contact_me.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>






	<section class="page-section bg-light" id="freeBoard">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Board</h2>
				<h3 class="section-subheading text-muted">다양한 클래스 톺아보기</h3>
			</div>
			<div style="float: right;">
				<ul>
					<li><a href="/board/writeView">글 작성</a></li>
				</ul>
			</div>
			<form role="form" method="get">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
						</tr>
					</thead>

					<c:forEach items="${list}" var="list">
						<tr>
							<td><c:out value="${list.bno}" /></td>
							<td><a
								href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out
										value="${list.title}" /></a></td>
							<td><c:out value="${list.writer}" /></td>
							<td><fmt:formatDate value="${list.regdate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>

				</table>
				<div class="search row">
					<div class="col-xs-2 col-sm-2">
						<select name="searchType" class="form-control">
							<option value="n"
								<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
							<option value="t"
								<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
							<option value="c"
								<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
							<option value="w"
								<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
							<option value="tc"
								<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
						</select>
					</div>

					<div class="col-xs-10 col-sm-10">
						<div class="input-group">
							<input type="text" name="keyword" id="keywordInput"
								value="${scri.keyword}" class="form-control" /> <span
								class="input-group-btn">
								<button id="searchBtn" type="button" class="btn btn-default">검색</button>
							</span>
						</div>
					</div>


					<script>
						$(function() {
							$('#searchBtn')
									.click(
											function() {
												self.location = "list"
														+ '${pageMaker.makeQuery(1)}'
														+ "&searchType="
														+ $(
																"select option:selected")
																.val()
														+ "&keyword="
														+ encodeURIComponent($(
																'#keywordInput')
																.val());
											});
						});
					</script>
				</div>
				<div class="col-md-offset-3">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
						</c:if>
					</ul>
				</div>
			</form>
	</section>
	</div>
</body>
</html>