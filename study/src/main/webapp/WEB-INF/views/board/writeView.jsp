<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
<title>게시글 작성하기</title>

<style type="text/css">
	body{
		padding: 15px;
		margin: 30px;	
		color: gray;	
	}
</style>

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
	
		<div id="container">
			<header>
				<h1>게시판 작성</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="nav.jsp" %>
			</div> 
			<hr />
			
			<section id="container">
				<form role="writeform" method="post" action="/board/write">
					<table style="table-layout:fixed;" class="table table-hover" >
						<tbody>
							<tr>
								<td>
									<label for="title">제목 </label><br><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요." style="width:600px; height:30px;"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><br><textarea id="content" name="content" cols="chk" title="내용을 입력하세요." cols="20" row="40" style="width:600px; height:400px;"></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><br><input type="text" id="writer" name="writer" class="chk" title="작성자를 입력하세요." />
								</td>
							<tr>
								<td>						
									<button type="submit" class="update_btn btn btn-warning">작성</button>
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>