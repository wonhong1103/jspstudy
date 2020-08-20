<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 위치 지도 생성하기</title>

</head>
<body>
	

	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width: 50%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e164b1a3a40e8ed34d661ebba7838864"></script>
	<script type="text/javascript">
		navigator.geolocation.getCurrentPosition(function(position) {
		var	lat = position.coords.latitude;  // 위도
		var lng = position.coords.longitude;
		geo_mat(lat, lng)
	});
	</script>
	<script>
		function geo_mat(lat, lng) {
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.552127999999996, 126.9202944), // 지도의 중심좌표
				level : 3 // 지도의 확대 레벨
		};
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		}
	</script>
</body>
</html>