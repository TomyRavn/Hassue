<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
        <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Upset</title>

</head>
<script type="text/javascript">
	$(document).ready(
			function() {
				var formObj = $("form[name='updateForm']");
				$("#cancel_btn").on(
						"click",
						function() {
							event.preventDefault();
							location.href = "/board/readView?bno=${update.bno}"
									+ "&page=${scri.page}"
									+ "&perPageNum=${scri.perPageNum}"
									+ "&searchType=${scri.searchType}"
									+ "&keyword=${scri.keyword}";
						})
				$(".update_btn").on("click", function() {
					if (fn_valiChk()) {
						return false;
					}
					formObj.attr("action", "/board/update");
					formObj.attr("method", "post");
					formObj.submit();
				})
			})
	function fn_valiChk() {
		var updateForm = $("form[name='updateForm'] .chk").length;
		for (var i = 0; i < updateForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$("#cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/board/list";
		})
	})
</script>

<body>

	<div class="container">
		<header>
			<h1>Modify</h1>
		</header>
		<hr />

<!-- 		<div> -->
<%-- 			<%@include file="nav.jsp"%> --%>
<!-- 		</div> -->

		<section id="container">
			<form name="updateForm" role="form" method="post"
				action="/board/update">
				<input type="hidden" name="bno" value="${update.bno}"
					readonly="readonly" />

			<table style="table-layout:fixed;" class="table table-hover" >
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<input type="text" id="title" name="title" class="form-control" value="${update.title}"/>
					</div>
					<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<textarea id="content" name="content" class="form-control" cols="10" rows="20"><c:out value="${update.content}" /></textarea>
					</div>
					<div class="form-group">
					<label for="writer" class="col-sm-2 control-label">작성자</label>
					<input type="text" id="writer" name="writer" class="form-control" value="${update.writer}"  readonly="readonly"/>
					</div>
					<div class="form-group">
					<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
					<fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd" />	
					</div>
			</table>
				<div>
					<button type="submit" class="update_btn btn btn-warning">저장</button>
					<button type="button" id = "cancel_btn" class="btn btn-primary btn-xl text-uppercase">취소</button>
				</div>
			</form>
		</section>
		<hr />
	</div>
</body>
</html>