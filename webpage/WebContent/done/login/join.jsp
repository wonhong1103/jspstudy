<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- 전체 css -->
<style type="text/css">
li {
	list-style: none;
}

body, html {
	height:100%; margin:0px; padding:0px;
	font-family: 'Times New Roman', serif;
}

a {
	text-decoration: none;
	color: black;
}
</style>
<!-- 왼 사이드바 -->
<style type="text/css">
#s_sidebar {
	float: left;
	background-color: gray;
	position: fixed;
	width: 250px;
	height: 100%;
}

#s_sidebar ul ul {
	margin: 2px;
	padding: 2px;
	position: relative;
	text-align: center;
}

#s_sidebar ul li li {
	width: 200px;
	height: 30px;
	line-height: 30px;
}

#s_sidebar ul ul li:hover {
	background: darkgray;
}

#s_sidebar ul ul li:hover ul {
	display: block;
}

#s_sidebar ul ul li a {
	width: 200px;
	height: 30px;
	line-height: 30px
}

#s_sidebar ul ul ul {
	display: none;
	position: absolute;
	left: 205px;
	top: 0px;
	background-color: gray
}
</style>
<!-- 로그인 css -->
<style type="text/css">
.join_in{width:100%; height:80%; padding-top: 5%; }
table {
	
	margin: 0px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 12pt;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
}
</style>
<!-- 로그인 스크립트 -->
<script type="text/javascript">
	function joinOK_go(f) {
		f.action = "join_ok.do";
		f.submit();
	}
</script>
</head>
<body>
	<!-- 헤더 (암것도 없음) -->
	<header id="main_header"> </header>

	<!-- 왼쪽메뉴바 -->
	<nav id="sidebar">

		<div id="s_sidebar">
			<ul>
				<div id="title">
					<h1 style="Font-size: 40px; text-align: center;">
						<a href="home.html">가나다라</a>
					</h1>
					<br>
					<br>
					<div id="main_gnb">
						<li class="m_bar"><a href="#">장바구니</a></li>
						<li class="m_bar"><a href="#">마이페이지</a></li>
						<li class="m_bar"><a href="#">로그인</a></li>
					</div>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
				<li>TOP
					<ul>
						<li>OUTER
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
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
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
				</li>

				<li>BOTTOM
					<ul>
						<li>JEANS
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li>SLACKS
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li>SHORTS
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
				</li>

				<li>ACCESSORY
					<ul>
						<li>SHOES
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li>BAGS
							<ul>
								<li><a href="#">s menu1</a></li>
								<li><a href="#">s menu2</a></li>
								<li><a href="#">s menu3</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li>ACCESSORY
							<ul>
								<li><a href="#">ring</a></li>
								<li><a href="#">necklace</a></li>
								<li><a href="#">watch</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="other">
					<li><a href="#">QnA</a></li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">후기</a></li>
				</div>

				<form>
					<fieldset class="width: 150px;">
						<legend>검색</legend>
						<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
							fw-msg="" class="inputTypeText" placeholder=""
							onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
							type="text">

						<div class="searchbtn"
							onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
							<i class="xi-search" aria-hidden="true"></i>
						</div>

					</fieldset>
				</form>
			</ul>
		</div>
	</nav>

	<!-- 회원가입창 -->

	<div class="join_in">
		<form method="post">
			<table class="join_w">
				<thead>
					<tr>
						<th colspan="2"><h2>회원가입</h2></th>
					</tr>
				</thead>
				<tbody>					
					<tr>
						<th>아이디</th>
						<td><input type="text" name="m_id" placeholder="아이디를 입력하세요"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="m_name" placeholder="이름을 입력하세요"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="m_pw" placeholder="패스워드를 입력하세요"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="m_pw" placeholder="패스워드를 입력하세요"></td>
					</tr>
					<tr>
						<th>e-mail</th>
						<td><input type="text" name="m_email" placeholder="email을 입력하세요"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="m_regi" placeholder="주소를 입력하세요"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="button" value="이전"onclick="history.go(-1)"> 
						<input type="button" value="완료" onclick="joinOK_go(this.form)"></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>







	<!-- 하단 -->

	<footer style="margin-left: 310px; margin-right: auto;">
		<hr>
		<div style="display: block; float: left; margin-right: 10%;">

			<p>
			<h4>CUSTOMER CENTER</h4>
			<br> 1588-1588<br> 070-1111-2222 (MESSAGE)<br> MON-FRI
			am11:00 ~ pm06:00<br> LUNCH pm01:00 ~ pm02:00<br> SAT, SUN,
			HOLIDAY OFF<br>
			</p>
		</div>

		<div style="display: block; float: left; margin-right: 10%;">
			<p>
			<h4>BANK INFO</h4>
			KB국민은행828282-79-9797 <br> 예금주 : 돈좀줘 주식회사<br>
			</p>
		</div>
		<div style="display: block; float: left; margin-right: 10%;">
			<p>
			<h4>RETURN & EXCHANGE</h4>
			반품주소 : 경기도 부천시 여월동 여월휴먼시아에서 반품 안함<br> CJ대한통운 1588-1255 (월~금
			09:00~18:00 / 토 09:00~13:00)<br> 자세한 교환 및 반품절차는 공지사항을 참고해주시기
			바랍니다.<br>
			</p>
		</div>
	</footer>
</body>
</html>