<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE HTML>
<html>
<head>
<meta charset=UTF-8>
<title>후기</title>
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
<!--  -->
<style type="text/css">
.review_wrap {width:100%; height:80%; padding-top:5%;}
.review_wrap table{
	width:800px;
	margin:0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

.review_wrap table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.review_wrap table th, td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid black;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	function write_go() {
		location.href = "/MyController?cmd=write";
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

	<!-- 후기 -->
	<div class="review_wrap" align="center">
		<table class="r_review">
			<caption>후기</caption>
			<thead>
				<tr bgcolor="#dedede">
					<th style="padding: 10px; width: 10%">번호</th>
					<th style="width: 40%">제목</th>
					<th style="width: 20%">글쓴이</th>
					<th style="width: 20%">날짜</th>
					<th style="width: 10%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="5"><h3> 후기가 존재하지 않습니다. </h3></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
						<tr>
							<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage+vs.index)} </td>
							<td style="width: 40%; text-align: left; padding-left: 20px;">
								<c:forEach begin="1" end="${k.step }" >
									&nbsp;&nbsp;[RE]
								</c:forEach>
								<a href="/MyController?cmd=onelist&idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a>
							</td>
							<td>${k.writer}</td>
							<td>${k.regdate.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<!-- 페이지기법 -->
			<tfoot>
				<tr>
					<td colspan="4">
						<ol class="paging">
						<!-- 이전  -->
					<c:choose>
						<c:when test="${paging.beginBlock <= paging.pagePerBlock}">
						<span style="color: lightgray;">이전으로</span>&nbsp;&nbsp;
						</c:when>
						<c:otherwise>
							<a href="/MyController?cmd=list&cPage=${paging.beginBlock-paging.pagePerBlock}"><span style="color: black;"><b>이전으로</b></span></a>&nbsp;&nbsp;
						</c:otherwise>
					</c:choose>
					
					<!-- 페이지번호 -->
					<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock}" step="1" var="k">
						<!-- 현재페이지이냐, 아니냐 구분 -->
						<c:choose>
							<c:when test="${k == paging.nowPage }">
								<font style="font-weight: bold;">${k}&nbsp;&nbsp;</font>
							</c:when>
							<c:otherwise>
								<a href="/MyController?cmd=list&cPage=${k}"><font style="font-weight: bold; color: tomato">${k}</font></a>&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<!-- 이후 -->
					<c:choose>
						<c:when test="${paging.endBlock >= paging.totalPage}">
							<span style="color: lightgray;">다음으로</span>
						</c:when>
						<c:otherwise>
							<a href="/MyController?cmd=list&cPage=${paging.beginBlock+paging.pagePerBlock}"><span style="color: black;"><b>다음으로</b></span></a>
						</c:otherwise>
					</c:choose>
						</ol>
					</td>
					<td>
						<button onclick="write_go()">글쓰기</button>
					</td>
				</tr>
			</tfoot>
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
