<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ex34_session에서 저장한 세션정보들을 불러와서 사용
	String log = (String)session.getAttribute("log");
    if(log.equals("no")){ %>
    <script>
       alert("로그인 실패");
       location.href = "ex33_session.jsp";
    </script>	
    <%}else if(log.equals("ok")){%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function add_go(f) {
		f.action = "";
		f.submit();
	}
</script>
</head>
<body>
  <h2> <%= session.getAttribute("id") %>님 로그인 성공 </h2>
  <hr>
  <h2> 상품 선택 </h2>
  <hr>
  <form method="post">
  		<select name="fruits">
  		   <option>:: 선택하세요 ::</option>
  		   <option>수박</option>
  		   <option>참외</option>
  		   <option>망고</option>
  		   <option>키위</option>
  		   <option>딸기</option>
  		</select>
  		<input type="button" value="장바구니에추가" onclick="add_go(this.form)">
  </form>
  <hr>
     <button onclick="view_go()">장바구니 보기</button>
     <button onclick="logout_go()">로그 아웃</button>   
</body>
</html>
 <%}%>
 
 
 
 
 
 
 
 