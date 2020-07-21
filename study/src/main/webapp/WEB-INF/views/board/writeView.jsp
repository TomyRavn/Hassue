<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<!-- 여기부터 -->
<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.css" />
	rel="stylesheet">
<link href="/resources/css/styles.css" rel="stylesheet" />
<!-- 여기까지 상단바 css -->
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

 <style type="text/css">
		a:link {text-decoration: none; color: #FFFFFF;}
</style>

<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	<body>
	
	<!-- 여기부터 -->
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top"><img
				src="/resources/assets/img/navbar-logo.svg" alt="" /></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ml-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">Portfolio</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">Team</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Contact</a></li>
				</ul>
			</div>
			<%@include file="nav.jsp"%>
		</div>
	</nav>


	<!-- Masthead-->
	<header class="masthead">
		<div class="container">
			<div class="masthead-heading text-uppercase">Welcome To Hassue!</div>
			<div class="masthead-subheading">It's Nice To Meet You</div>
			<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
				href="#services">Tell Me More</a>
		</div>
	</header>
	<!-- 여기까지 상단바 -->
	
		<div class="container">
			<header>
				<h1>Write</h1>
			</header>
			<hr />
			
	<section id="container">
		<form name="writeForm" method="post" action="/board/write">		
			<c:if test="${member.userId != null}">
			
				<div class="form-group">
				<label for="title" class="col-sm-2 control-label">제목</label>
				<input type="text" id="title" name="title" class="form-control" title="제목을 입력해 주세요."/>
				</div>
				<div class="form-group">
				<label for="content" class="col-sm-2 control-label">내용</label>
				<textarea id="content" name="content" class="form-control" title="내용을 입력하세요." cols="20" row="40" style="width:1130px; height:400px;"><c:out value="${update.content}" /></textarea>										
				</div>
				<div class="form-group">
				<label for="writer" class="col-sm-2 control-label">작성자</label>
				<input type="text" id="writer" name="writer" class="form-control" value="${member.userId}" />
				</div>													
				<divid="a">						
				<button type="submit" class="update_btn btn btn-warning">저장</button>
				<button type="button" class="list_btn btn btn-primary" onclick="location.href='list'">목록</button>	
				</div>
									
			</c:if>
						<c:if test="${member.userId == null}">
							<p>로그인 후에 작성하실 수 있습니다.</p>
						</c:if>
							
						</tbody>			
					</table>
				</form>
				
			</section>
			<hr />
		</div>
	</body>
</html>