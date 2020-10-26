<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<!-- 전체 css -->
<style type="text/css">
	li{list-style: none;}
	body, html {
	height:100%; margin:0px; padding:0px; font-family: 'Times New Roman', serif;}
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
.admin_wrap{width:100%; height:80%; padding-top: 5%; }
.admin{
	margin-left: 600px;
	width: 800px;
	border-collapse: collapse;
	border-color: black;
	text-align: center;
	}
.admin table, th, td{border: 1px solid black;}
.admin table{width: 500px;}
h2{margin-left:600px;}
	
</style>
<script type="text/javascript">
	function product_add(f) {
		f.action="/MyController?cmd=productadd";
		f.submit()
	}
</script>
</head>
<body>

<!-- 왼쪽메뉴바 -->	
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



	<div class="admin_wrap">
	<h2> 상품 등록 </h2>
	<form method="post" enctype="multipart/form-data">
		<table class="admin">
			<tbody>
				<tr>
					<th bgcolor="#dedede"> 분류 </th>
					<td>
						<input type="radio" name="category" value="com001">TOP
						<input type="radio" name="category" value="ele002">BOTTOM
						<input type="radio" name="category" value="sp003">ACCESSORY
					</td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 제품번호 </th>
					<td><input type="text" name="p_num"   size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 제품명 </th>
					<td><input type="text" name="p_name"   size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 사이즈 </th>
					<td><input type="text" name="p_company"  size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 컬러 </th>
					<td><input type="text" name="p_company"  size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 상품가격 </th>
					<td><input type="text" name="p_price"   size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 할인가 </th>
					<td><input type="text" name="p_saleprice"   size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 상품이미지S </th>
					<td><input type="file" name="p_image_s" size="20"></td>
				</tr>
				<tr>
					<th bgcolor="#dedede"> 상품이미지L </th>
					<td><input type="file" name="p_image_l" size="20"></td>
				</tr>
				<tr>
					<td colspan="2" bgcolor="#dedede"><b>상품내용</b></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="10" cols="50" name="p_content"></textarea>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="button" value="상품등록" onclick="product_add(this.form)">
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
	</div>
	
	<!-- 하단 -->
	<footer style="margin-left: 310px; margin-right: auto; ">
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