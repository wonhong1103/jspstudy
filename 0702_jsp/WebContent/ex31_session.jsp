<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 속성을 이용한 데이터 저장 및 호출</title>
</head>
<body>
	<h1> 세션연습 2</h1>
	<%-- 세션 데이터 저장 --%>
	<%session.setAttribute("ict","jsp"); %>
	
	<p>세션 ID: <%=session.getId() %></p>
	<p>세션 데이터 호출: <%=session.getAttribute("ict") %></p>
	
	
	
</body>
</html>