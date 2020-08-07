<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	
		function createRequest(){
			var reg;
			try {
				req = new XMLHttpRequest();
			} catch (e) {
				try {
					req = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					req = new ActiveXObject("Msxm13.XMLHTTP");
				}
				
			}
			
			return req;
			
		}
	
		// 1. 객체 생성
		var request = new createRequest();
		//document.body.innerHTML += request.responseText; //텍스트만 표시 
		
		// 2. open("전송방식", "경로", "비동기 부")
		request.open("POST", "data04.js", false);
		
		request.onreadystatechange = function () {
			//request.readyState : 데이터의 배달 결과 상태 표시 
			//0 => 객체생성, 1 => open 안함, 2 => send안함
			//3: 데이터 일부만 받음. 4=> 전체 데이터 받음.
			
			//request.status => 200 (성공), 4xx=> 클라이언트 오류, 5xx=>서버 오류
			if(request.readyState == 4 && request.status == 200){
				// json 읽는 방법
				var data = eval("("+request.responseText+")");
				
				var output = "";
				for (var i = 0; i < data.length; i++) {
					for ( var k in data[i]) {
						output += data[i][k] + "&nbsp;&nbsp;"
					}
					output +="<br>"
				}
				document.body.innerHTML = output;
			}
		}
		
		// 3. send() : 실행
		request.send();
		
		// 4. 화면에 출력: innerHTML
		//document.body.append(request.responseText); //소스코드로 표시

		
		
			
		
		
	</script>
</body>
</html>