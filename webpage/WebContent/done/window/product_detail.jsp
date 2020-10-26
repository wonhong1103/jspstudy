<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세화면</title>
<!-- 전체 css -->
<style type="text/css">
	li{list-style: none;}
	body, html {
	height:100%; margin:0px; padding:0px;
	font-family: 'Times New Roman', serif;
}

	a { text-decoration: none ; color: black;}
</style>
<!-- 왼 사이드바 -->
<style type="text/css">
	#s_sidebar {float:left; background-color: gray; position: fixed; width: 250px; height:100%; }
	#s_sidebar ul ul {margin:2px; padding:2px; position:relative; text-align:center;}
	#s_sidebar ul li li {width:200px; height: 30px; line-height: 30px;}
	#s_sidebar ul ul li:hover {background: darkgray;}
	#s_sidebar ul ul li:hover ul{display:block;}
	#s_sidebar ul ul li a {width:200px; height: 30px; line-height: 30px}
	#s_sidebar ul ul ul {display: none; position:absolute; left:205px; top:0px; background-color: gray}
</style>

<style type="text/css">
	.info_wrapper { padding:100px; width:100%; height:80%; padding-left:400px;}
	.m_pic{ width:400px; height:600px;}
	.s_pics {padding:10px; }
	.s_pics img{ width:80px; height:120px;}
	.s_pics fieldset{ width:340px; height:130px; }
	.d_pics img{width: 800px; height: 800px; margin:50px;}
</style>
<style>
	.detail{position:relative; left: 700px; bottom:700px;}
</style>
<script type="text/javascript">
	function buy() {
		if(${login=='ok'}){
			location.href = "/MyController?cmd=buy"
		}else{
		  alert("로그인 하세요");
		  location.href = "/MyController?cmd=login"
		}
	function add_cart() {
		if(${login=='ok'}){
			location.href = "/MyController?cmd=addcart&idx=${vo.idx}"
		}else{
		  alert("로그인 하세요");
		  location.href = "/MyController?cmd=login"
		}
		
	}
	
		
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
			<fieldset style="width: 150px;">
			<legend>검색</legend>
			<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text">
			
			<div class="searchbtn" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"><i class="xi-search" aria-hidden="true"></i></div>
			
			</fieldset>
			</form>
		</ul>
		</div>
	</nav>

<!-- 상세내용 -->
<div>
<!-- 이미지 -->
<div class=info_wrapper >
	<img class= m_pic alt="My Image" src="../../images/맨투맨.jpeg"> <!-- ${vo.p_image_l } -->
		<div class= s_pics>
			<fieldset>
			<legend>함께할 코디</legend>
			<a href="#"><img src="../../images/맨투맨.jpeg" alt="My Image" ></a>
			<a href="#"><img src="../../images/맨투맨.jpeg" alt="My Image" ></a>
			<a href="#"><img src="../../images/맨투맨.jpeg" alt="My Image" ></a>
			<a href="#"><img src="../../images/맨투맨.jpeg" alt="My Image" ></a>
			</fieldset>
			
		</div>	
		<!-- 기본정보 -->
<div class="detail">
<table style="border:0px; text-align: left;" >
	<tbody>
		<tr>
			<th>
				<span style="font-size:12px;color:#000000;">상품명</span> 
			</th>
			<td>
				<span style="font-size:12px;color:#000000;">반팔 티셔츠 5color</span> <!-- ${vo.p_name } -->
			</td>
		</tr>
		<tr>
			<th>
				<span style="font-size:12px;color:#000000;">가격</span> 
			</th>
			<td>
				<span style="font-size:12px;color:#000000;">₩ 19,000</span> <!-- <fmt:formatNumber value="${vo.p_price}" pattern="#,##0" />원 -->
			</td>
		</tr>
	</tbody>
</table>
<!-- 품목선택 -->
<table>
	<tbody>
		<tr>
			<th>Color</th>
			<td>
				<select>
					<option value="*" selected link_image> [필수] 옵션을 선택해주세요 </option>
					<option value="**" disabled link_image>----------------------------</option>
					<option value="black" link_image>블랙</option>
					<option value="white" link_image>화이트</option>
					<option value="charcol" link_image>차콜</option>
					<option value="navy" link_image>네이비</option>
					<option value="wine" link_image>와인</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<th>사이즈</th>
			<td>
				<select>
					<option value="*" selected link_image> [필수] 옵션을 선택해주세요 </option>
					<option value="**" disabled link_image>----------------------------</option>
					<option value="small" link_image>small</option>
					<option value="medium" link_image>medium</option>
					<option value="large" link_image>large</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button onclick="buy()">구매하기</button>
				<button onclick="add_cart()">장바구니</button>
				
			</td>
		</tr>
	</tbody>
</table>
</div>



<hr>

<!-- 제품 상세 사진 및 설명 -->
	<div class=d_pics>
	<p align="center">한 여름을 제외하고 모든 계절에 착용 가능한 블레이져 </p>
	<p align="center"><br></p>
	<p align="center">어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고</p>
	<p align="center"><br></p>
	<p align="center">살꺼 말꺼 사지마 살꺼야? 아냐 사지마 저리가 </p>
	<p align="center"><br></p>
	<p align="center">이걸 왜 사는거야 바보야? 어쩌고 저쩌고 블라블라블라브라</p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><br></p>
	<p align="center"><img src="../images/맨투맨.jpeg" alt="My Image" ></p>
			
			
	</div>
</div>



</div>	



<!-- 제품 설명 ${vo.p_content}-->
<div>

</div>



<!-- 하단 -->
	<footer style="margin-left: 310px; margin-right: auto;">
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