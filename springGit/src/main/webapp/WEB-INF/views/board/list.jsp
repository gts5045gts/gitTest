<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>
</head>
<body>

<jsp:include page="../inc/top.jsp"></jsp:include>

<h1>board/list.jsp</h1>
<table border="1">
<tr><td>글번호</td><td>글제목</td><td>글쓴이</td><td>글쓴날짜</td><td>조회수</td></tr>

<c:forEach var="boardDTO" items="${boardList}">
<tr><td>${boardDTO.num }</td>
	<td><a href="${pageContext.request.contextPath}/board/content?num=${boardDTO.num }">${boardDTO.subject }</a></td>
	<td>${boardDTO.name }</td>
	<td>${boardDTO.rdate }</td>
	<td>${boardDTO.readcount }</td></tr>
</c:forEach>

</table>

<!-- 편의를 위해서 글쓰기 링크 따로 만든것  -->
<a href="${pageContext.request.contextPath}/board/list?pageNum=1">1</a>
<a href="${pageContext.request.contextPath}/board/list?pageNum=2">2</a>
<br>
<a href="${pageContext.request.contextPath}/board/write">게시판 글쓰기</a><br>
</body>
</html>