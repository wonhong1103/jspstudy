<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 인증 코드 요청 --%>
	<a href="https://kauth.kakao.com/oauth/authorize?client_id=fc889899c6ae5f123b7a594f26692a57&redirect_uri=http://localhost:8090/login&response_type=code ">
		<img alt="" src="../img/kakao_login.png">
	</a>
</body>
</html>