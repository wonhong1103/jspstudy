<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 클라이언트가 요청을하면 무조건 컨트롤러로 가야한다.
	// 여기서 컨트롤러란 Servlet이 담당을 하고 있다.
	// 여러 개의 요청에 하나의 컨트롤러가 반응 할 수도 있고 
	// 요청에 맞춰서 컨트롤러를 여러개 만들어서 반응 할 수 도 있다.
	
	// 요청과 컨트롤러를 N:1 매칭하자
	function test1() {
		location.href="/0717_MVC02/MyController?cmd=hi";
	}
	function test2() {
		location.href="/0717_MVC02/MyController?cmd=hello";
	}
	function test3() {
		location.href="/0717_MVC02/MyController?cmd=bye";
	}
	
	function send_go1(f) {
		f.action="/0717_MVC02/MyController?cmd=hi"
		f.submit();
	}
	function send_go2(f) {
		f.action="/0717_MVC02/MyController?cmd=hello"
		f.submit();
	}
	function send_go3(f) {
		f.action="/0717_MVC02/MyController?cmd=bye"
		f.submit();
	}
</script>
</head> 
<body>
	<button onclick="test1()">Hi</button>
	<button onclick="test2()">Hello</button>
	<button onclick="test3()">Bye</button>
	<hr>
	<form method="post">
		<input type="button" value="Hi" onclick="send_go1(this.form)">
		<input type="button" value="Hello" onclick="send_go2(this.form)">
		<input type="button" value="Bye" onclick="send_go3(this.form)">
	</form>
</body>
</html>