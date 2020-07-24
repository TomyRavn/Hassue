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
        
        <title>member register</title>
        
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

<title>회원가입</title>
<body id="page-top">
<%@include file="nav.jsp"%>
</head>
<script type="text/javascript">
   $(document).ready(function() {
      // 취소
      $("#canclebtn").on("click", function() {
         location.href = "/";
      })

      $("#submit").on("click", function() {
         if ($("#userId").val() == "") {
            alert("아이디를 입력해주세요.");
            $("#userId").focus();
            return false;
         }
         if ($("#userPass").val() == "") {
            alert("비밀번호를 입력해주세요.");
            $("#userPass").focus();
            return false;
         }
         if ($("#userName").val() == "") {
            alert("성명을 입력해주세요.");
            $("#userName").focus();
            return false;
         }
         var idChkVal = $("#idChk").val();
         if (idChkVal == "N") {
            alert("중복확인 버튼을 눌러주세요.");
         } else if (idChkVal == "Y") {
            $("#regForm").submit();
         }
      });
   })

   function fn_idChk() {
      $.ajax({
         url : "/member/idChk",
         type : "post",
         dataType : "json",
         data : {
            "userId" : $("#userId").val()
         },
         success : function(data) {
            if (data == 1) {
               alert("중복된 아이디입니다.");
            } else if (data == 0) {
               $("#idChk").attr("value", "Y");
               alert("사용가능한 아이디입니다.");
            }
         }
      })
   }
   
   
</script>

   <span id="container">
      <form action="/member/register" method="post" id="regForm">

         <section class="page-section" id="contact">
            <div class="container">
               <div class="text-center">
                  <h2 class="section-heading text-uppercase">Hassue에 오신 것을 환영합니다!</h2>
                  <p class="section-subheading text-muted">Hassue에 가입하셔서 더 많은 서비스를 누리세요!</h3>
               </div>
               
               </br>
               </br>
               </br>
               </br>
               

               <span><div class="text-center">
               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               <input type="text" id="userId" name="userId"placeholder="YOUR ID">
                 
                  <button class="btn btn-primary btn-xl text-uppercase"
                     type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
               </div>
             </div></span></br>
</br>	

            <div class="text-center">
               <input type="password" id="userPass" name="userPass" placeholder="YOUR PASSWORD">
            </div>
            </br>

</br>	
            <div class="text-center">
               <div class="form-group has-feedback">
                  <input type="text" id="userName" name="userName" placeholder="YOUR NAME" />
               </div>
            </div>
</br>	

<!--             이미지 첨부의 흔적..^^..<div class="col-lg-4 col-sm-4 mb-4 mb-lg-5"> -->
<!--             <img class="img-fluid" src="/resources/assets/img/portfolio/05-thumbnail.jpg" alt="" /> -->
<!--             </div></div> -->


            <div class="text-center">
                  <button type="submit" id="submit"
                     class="btn btn-primary btn-xl text-uppercase" input type="button">회원가입</button>
                     <button type="button" id="canclebtn"
					class="btn btn-primary btn-xl text-uppercase">취소</button>
               </div>
               
               </br>
               </br>
      </form>
   </span>
</html>