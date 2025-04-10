<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/insert.jsp</title>
</head>
<body>

<jsp:include page="../inc/top.jsp"></jsp:include>

<!-- http://localhost:8080/MVCProject/insert.me -->
<!-- http://localhost:8080/MVCProject/member/insert.jsp -->
<h1>가상주소 insert.me => 실제페이지 member/insert.jsp</h1>
<h1>프로젝트 명 : <%=request.getContextPath() %></h1>
<form action="${pageContext.request.contextPath}/member/insertPro" method="post">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="passwd"><br> 
	이름 : <input type="text" name="name"><br>
	<input type="submit" value="회원가입">
</form>
</body>
</html>
