<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style type="text/css">
	li {list-style: none; display:inline; padding: 6px;}
		a:link {text-decoration: none; color: #333333;}
		a:visited {text-decoration: none; color: #333333;}
		a:active {text-decoration: none; color: #333333;}
		a:hover {text-decoration: underline; color: red;}
</style>
<ul>
	<li><a href="/">home</a></li>
	<li><a href="/board/list">목록</a></li>
	<li><a href="/board/writeView">글 작성</a></li>
	
	<li>
		<c:if test="${member != null}"><a href="/member/logout">로그아웃</a></c:if> &nbsp;
		<c:if test="${member == null}"><a href="/">로그인</a></c:if> &nbsp;
		<c:if test="${member != null}"><a href="/member/memberDeleteView">회원탈퇴</a></c:if><br>
	</li>
	<li>
		<c:if test="${member != null}">

			<br><p>&nbsp;&nbsp;${member.userId}님 안녕하세요.</p>
		</c:if>
	</li>
</ul>
