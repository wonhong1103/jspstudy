<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본객체 : request</title>
</head>
<body>
<%--
     request : 클라이언트가 요청한 정보를 담고 있는 객체
        
     ** 속성을 활용한 데이터 저장과 호출
       
     저장방법 : request.setAttribute("이름",데이터); 
     호출방법 : request.getAttribute("이름");
     생명주기 : response를 하기 전까지는 데이터를 가지고 있다. 
 --%>
 <% 
    pageContext.setAttribute("name","홍길동");
    pageContext.setAttribute("age",24);
    
    request.setAttribute("name","태권브이");
    request.setAttribute("age",40);
  %>
  
  <h3>이름 : <%=request.getAttribute("name") %></h3>
  <h3>나이 : <%=request.getAttribute("age") %></h3>

  <%-- ex13으로 페이지 이동한다. --%>
  <%-- 1. forward 방식 : request,response가 기존 것을 사용 --%>
  <%--  <% request.getRequestDispatcher("ex13_request.jsp").forward(request, response); %> --%>
  
  <%-- 2.sendRedirect방식 : request, resonse가 새로운 것을 사용  --%>
       <% response.sendRedirect("ex13_request.jsp"); %>
</body>
</html>





