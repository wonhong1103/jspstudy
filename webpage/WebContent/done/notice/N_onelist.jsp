<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 상세</title>
<!-- 전체 css -->
<style type="text/css">
	li{list-style: none;}
	body, html {height:100%; margin:0px; padding:0px;font-family: 'Times New Roman', serif;}
	a { text-decoration: none ; color: black;}
</style>
<!-- 왼 사이드바 -->
<style type="text/css">
	#s_sidebar {float:left; background-color: gray; position: fixed; width: 250px; height:100%;}
	#s_sidebar ul ul {margin:2px; padding:2px; position:relative; text-align:center;}
	#s_sidebar ul li li {width:200px; height: 30px; line-height: 30px;}
	#s_sidebar ul ul li:hover {background: darkgray;}
	#s_sidebar ul ul li:hover ul{display:block;}
	#s_sidebar ul ul li a {width:200px; height: 30px; line-height: 30px}
	#s_sidebar ul ul ul {display: none; position:absolute; left:205px; top:0px; background-color: gray}
</style>
<style type="text/css">
.notice_wrap {width:100%; height:80%; padding-top:5%;}
.notice_wrap table {
	width:800px;
	margin:0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

.notice_wrap table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.notice_wrap table th, td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

	.div1{
		border: 1px solid black;
		width: 60%;
		margin: 0px auto;
		padding: 5px 20px;
	}
</style>
<script type="text/javascript">
	function list_go(f) {
		f.action = "/MyController?cmd=list";
		f.submit();
	}
	function update_go(f) {
		f.action = "/MyController?cmd=update";
		f.submit();
	}
	function delete_go(f) {
		f.action = "/MyController?cmd=delete";
		f.submit();
	}
	function comment_go(f) {
		f.action = "/MyController?cmd=c_write"
		f.submit();
	}
	function c_delete(f) {
		f.action="/MyController?cmd=c_delete";
		f.submit();
	}
</script>
</head>
<body>
<!-- 왼 사이드바 -->
<nav id ="sidebar">		
		<div id = "s_sidebar" >	
		<ul>
		<div id="title" >
		<h1 style="Font-size:40px; text-align: center; "><a href="home.html">가나다라</a></h1>
		<br><br>
			<div id="main_gnb">
				<li class="m_bar"><a href="#">장바구니</a></li>
				<li class="m_bar"><a href="#">마이페이지</a></li>
				<li class="m_bar"><a href="login.html">로그인</a></li>		
			</div>
			<br><br><br><br><br>
		</div>
			<li>TOP
				<ul>
					<li>OUTER
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>JACKET
						<ul>
							<li><a href="#">s menu1</a></li>
							<li><a href="#">s menu2</a></li>
							<li><a href="#">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>SHIRTS
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
			</li>
			
			<li>BOTTOM
				<ul>
					<li>JEANS
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>SLACKS
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>SHORTS
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
			</li>
			
			<li>ACCESSORY
				<ul>
					<li>SHOES
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>BAGS
						<ul>
							<li><a href="product.html">s menu1</a></li>
							<li><a href="product.html">s menu2</a></li>
							<li><a href="product.html">s menu3</a></li>
						</ul>
					</li>
				</ul>
				<ul>
					<li>ACCESSORY
						<ul>
							<li><a href="product.html">ring</a></li>
							<li><a href="product.html">necklace</a></li>
							<li><a href="product.html">watch</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<br><br><br><br><br>	
			<div class= "other">
				<li><a href="#">QnA</a></li>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">후기</a></li>
			</div>
			
			<form>
			<fieldset style="width:150px;">
			<legend>검색</legend>
			<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text">
			
			<div class="searchbtn" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"><i class="xi-search" aria-hidden="true"></i></div>
			
			</fieldset>
			</form>
		</ul>
		</div>
	</nav>
	

	<div class="notice_wrap" align="center">
		<table class="n_onelist">
			<caption>공지 상세</caption>
			<tbody>
				<tr>
					<th bgcolor="#dedede">제목:</th>
					<td> ${bvo.subject}</td>
				</tr>
				<tr>
					<th bgcolor="#dedede">이름:</th>
					<td> ${bvo.writer }</td>
				</tr>
				<tr>
					<th bgcolor="#dedede">내용:</th>
					<c:choose>
						<c:when test="${empty list}">
							<td><h3>공지가 존재하지 않습니다.</h3></td>
						</c:when>
						<c:otherwise>
							<td>
								<textarea name="content" readonly>${bvo.content}</textarea>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
					
				<tr>
					<th bgcolor="#dedede">첨부파일:</th>
						<c:choose>
							<c:when test="${empty bvo.file_name}">
								<td><b> 첨부파일 없음 </b></td>
							</c:when>
							<c:otherwise>
								<td>
									<img alt="" src="upload/${bvo.file_name}" style="width: 100px"><br>
									<a href="view/download.jsp?path=upload&file_name=${bvo.file_name}">${bvo.file_name}</a>
								</td>
							</c:otherwise>
						</c:choose>
				</tr>
				<tr>
					<td colspan="2">
						<!-- <input type="button" value="수정" onclick="update_go(this.form)">
						<input type="button" value="삭제" onclick="delete_go(this.form)">
						<input type="hidden" value="${cPage}" name="cPage"> -->
						<input type="button" value="목록" onclick="list_go(this.form)">
						 
					</td>
				</tr>
			</tbody>
		</table>
		
	</div>
	
	
	
	<!-- 하단 -->
	<footer style="margin-left: 310px; margin-right: auto; margin-top:10%">
	<hr>
	<div style="display:block; float:left; margin-right:10%;">
	<p>
	<h4>CUSTOMER CENTER</h4><br>
	1588-1588<br>
	070-1111-2222 (MESSAGE)<br>
	MON-FRI am11:00 ~ pm06:00<br>
	LUNCH pm01:00 ~ pm02:00<br>
	SAT, SUN, HOLIDAY OFF<br>
	</p>
	</div>
	
	<div style="display:block; float:left; margin-right:10%;">
	<p>
	<h4>BANK INFO</h4>
	KB국민은행828282-79-9797 <br>
	예금주 : 돈좀줘 주식회사<br>
	</p>
	</div>
	<div style="display:block; float:left; margin-right:10%;">
	<p>
	<h4>RETURN & EXCHANGE</h4>
	반품주소 : 경기도 부천시 여월동 여월휴먼시아에서 반품 안함<br>
	CJ대한통운 1588-1255 (월~금 09:00~18:00 / 토 09:00~13:00)<br>
	자세한 교환 및 반품절차는 공지사항을 참고해주시기 바랍니다.<br>
	</p>
	</div>
	</footer>
	
</body>
</html>
					












