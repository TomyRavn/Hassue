<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
li {
   list-style: none;
   display: inline;
   padding: 6px;
}
</style>
<meta charset="UTF-8">
<title>nav</title>
</head>

<!-- Navigation-->
<!--         <nav class="navbar navbar-expand-sm navbar-dark bg-dark id="mainNav"> -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
   id="mainNav">
   <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/board/list/#page-top">hassue</a>
      <!--                 <img src="assets/img/logos/hassue.png"/> -->
      <button class="navbar-toggler navbar-toggler-right" type="button"
         data-toggle="collapse" data-target="#navbarResponsive"
         aria-controls="navbarResponsive" aria-expanded="false"
         aria-label="Toggle navigation">
         <!--                     <i class="fas fa-bars ml-1"></i> -->
      </button>

      <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item"><a class="nav-link js-scroll-trigger"
               href="/board/list/#portfolio">Portfolio</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger"
               href="/board/list/#freeBoard">Free Board</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger"
               href="/board/writeView">Write</a></li>
            <!--                         <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">Team</a></li> -->
            <!--                         <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li> -->
         </ul>
      </div>
      <div style="float: right;">
         <ul>
            </br>
         <li>
        <c:if test="${member != null}"><a href="/member/logout"> 로그아웃 </a></c:if>
		<c:if test="${member != null}"><a href="/member/memberDeleteView"> &nbsp &nbsp 회원탈퇴 </a></c:if>
		<c:if test="${member == null}"><a href="/">로그인</a></c:if>
		</li>
         </ul>
      </div>
   </div>
</nav>

<!-- Masthead-->
<header class="masthead">
   <div class="container">
      <div class="masthead-heading text-uppercase">Welcome To Hassue!</div>
      <div class="masthead-subheading">It's Nice To Meet You</div>
      <!--                 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="/board/Description.jsp">처음 방문하셨나요?</a> -->
   </div>
</header>
</body>
</html>