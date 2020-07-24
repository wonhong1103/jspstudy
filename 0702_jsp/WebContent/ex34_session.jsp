<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// id와 pw가 같으면 로그인 성공
	if(id.equals(pw)){
		session.setAttribute("log","ok");
		session.setAttribute("id",id);
	}
	response.sendRedirect("ex35_session.jsp");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>