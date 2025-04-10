<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- inc/top.jsp -->
<h1> <a href="${pageContext.request.contextPath}/member/main">메인</a> 
     
<!--      로그인 하지 않았을때(세션값 없을때) -->
     <c:if test="${empty sessionScope.id }">
     	<a href="${pageContext.request.contextPath}/member/insert">회원가입</a>
     	<a href="${pageContext.request.contextPath}/member/login">로그인</a>
     </c:if>
     
<!--      로그인 했을때(세션값 있을때) -->
     <c:if test="${! empty sessionScope.id }">
      	${sessionScope.id }님 
     	<a href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
     	<a href="${pageContext.request.contextPath}/member/info">회원정보조회</a>
     	<a href="${pageContext.request.contextPath}/member/update">회원정보수정</a>    
     	<a href="${pageContext.request.contextPath}/member/delete">회원정보삭제</a>
     	
<!--      	관리자(admin) 만 볼수 있게 함 -->
     	<c:if test="${sessionScope.id eq 'admin'}">
     		<a href="${pageContext.request.contextPath}/member/list">회원목록</a>
     	</c:if>
     	
     </c:if>
     
</h1>