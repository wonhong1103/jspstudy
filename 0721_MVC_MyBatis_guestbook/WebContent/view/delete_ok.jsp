<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    

<c:choose>
	<c:when test="${result>0}">
		<script>
			alert("삭제성공");
			location.href = "/0717_MVC04_guestbook/MyController?cmd=list";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("삭제실패");
			history.go(-2);
		</script>
	</c:otherwise>
</c:choose>