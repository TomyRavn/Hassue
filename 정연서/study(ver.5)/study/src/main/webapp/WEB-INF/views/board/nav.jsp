<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
	li {list-style: none; display:inline; padding: 6px;}
</style>
<ul>
</br>
<!-- 	<li><a href="/board/list">목록</a></li> -->
<!-- 	<li><a href="/board/writeView">글 작성</a></li> -->
	<li>
		<c:if test="${member != null}"><a href="/member/logout">로그아웃</a></c:if>
		<c:if test="${member == null}"><a href="/">로그인</a></c:if>
	</li>
<!-- 	<li> -->
<!-- 		<div> -->
<%-- 			<c:if test="${member != null}"> --%>
				
<%-- 			</c:if> --%>
<!-- 		</div>  -->
<!-- 	</li> -->
</ul>