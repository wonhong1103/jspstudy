<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본객체 : application</title>
</head>
<body>
<%--
	- appliction : 모든 사용자와 관련해서 공유할 정보를 저장한다.
	               웹 어플리케이션의 설정 정보를 주로 저장한다.
	
	** 속성을 활용한 데이터 저장과 호출
    저장방법 : appliction.setAttribute("이름",데이터); 
    호출방법 : appliction.getAttribute("이름");
    생명주기 : 어플리케이션이 종료 되면 정보도 사라진다.
 --%>
  <% 
    pageContext.setAttribute("name","홍길동");
    pageContext.setAttribute("age",24);
    
    request.setAttribute("name","태권브이");
    request.setAttribute("age",40);
    
    session.setAttribute("name","둘리");
    session.setAttribute("age",37);
    
    application.setAttribute("name","똘이장군");
    application.setAttribute("age",78);
  %>
  
  <h3>이름 : <%=pageContext.getAttribute("name") %></h3>
  <h3>나이 : <%=pageContext.getAttribute("age") %></h3>
  <hr>
  <h3>이름 : <%=request.getAttribute("name") %></h3>
  <h3>나이 : <%=request.getAttribute("age") %></h3>
  <hr>
  <h3>이름 : <%=session.getAttribute("name") %></h3>
  <h3>나이 : <%=session.getAttribute("age") %></h3>
  <hr>
  <h3>이름 : <%=application.getAttribute("name") %></h3>
  <h3>나이 : <%=application.getAttribute("age") %></h3>
  
  <%-- <% request.getRequestDispatcher("ex17_application.jsp").forward(request, response); %> --%> --%>
  <% response.sendRedirect("ex17_application.jsp"); %> 
  
</body>
</html>