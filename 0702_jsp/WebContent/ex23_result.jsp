<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- useBean를 사용하지 않았을 때 방법  --%> 
<%-- <%
    // 요청에 따른 한글 처리 
    request.setCharacterEncoding("utf-8");
	// 파라미터값 받기
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String residence = request.getParameter("residence");
	String[] animal = request.getParameterValues("animal");
	String cPage = request.getParameter("cPage");
%>  --%> 
    
<% request.setCharacterEncoding("utf-8");%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : useBean</title>
</head>
<body>
	<%-- 자바에서 VO vo = new VO(); 같은 효과 --%>
	<jsp:useBean id="vo" class="com.ict.edu.VO" />
	
	<%-- 파라미터값들이 vo와 이름 같으면 setter 호출해서 
		 파라미터값을 저장시킨다.
		 name="vo"는 vo는 useBean id를 말한다. --%>
	<jsp: setProperty property="*" name="" />
	
</body>
</html>