<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체 : response</title>
</head>
<body>
<%--
	response : request(요청)기본객체와 반대 기능를 수행
	           request가 요청 정보를 담고 있다면
	           response는 웹 브라우저에 응답 정보를 담는 역할 수행
	 - 헤더 정보 입력
	 - 쿠키 정보 전송
	 - 리다이렉트 : 웹 페이지 이동     
	   response.sendRedirect("이동할 페이지");
	   
	  ** 웹 페이지 이동 ** 
	   1. 리다이렉트 : 
	      - response.sendRedirect("이동할 페이지");
	        새로운 request,response을 가지고 페이지로 이동,
	        즉, 기존의 파라미터값들이 존재 하지 않는다.
       2. forward :
          - request.getRequestDispatcher("이동할 페이지").forward(request,response);
            기존의  request,response을 가지고 페이지로 이동,
            즉, 기존의 파라미터값들을 사용할 수 있다.
            
       3. a 태그를 통한 페이지 이동 
           - <a href="이동할 페이지">텍스트</a>
           -  파라미터값을 가지고 갈 수도 있고, 않을 수도 있다.)
       4. 자바스크립트를 통한 페이지 이동
          - location.href = "이동할 페이지"
           ( 파라미터값을 가지고 갈 수도 있고, 않을 수도 있다.)     	        
	      - history.go(숫자)
	      
	   ** 1.2는 중간 웹 페이지가 보이지 않고 바로 최종 페이지가 보인다.
	   ** 3.4는 중간 웹 페이지에서 이벤트처리를 해야지만 다른페이지로 이동한다.            
 --%>
 	<form action="ex08.jsp" method="post">
 		<p>ID : <input type="text" name="id"></p>
 		<p>PW : <input type="password" name="pw"></p>
 		<p><input type="submit" value="로그인"></p>
 	</form>
</body>
</html>







