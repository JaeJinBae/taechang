<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길 | 김헌석법무사사무소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a3d28e9c9d28c7930cf4fcc7be5bd5f8&libraries=drawing"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	body{
		position: relative;
	}
	header{
		width:100%;
		background:#fff;
		position:fixed;
		z-index: 99;		
	}
	footer{
		width:100%;
		min-width:320px;
		background:#2a2a2a;
	}
	section{
		width:100%;
		min-width:320px;
		padding-top:64px;
	}
	.topImg{
		width:100%;
	}
	.topImg > img{
		width:100%;
	}
	.pcTopImg{
		display:none;
	}
	.sideMenu, .callInfo{
		display:none;
	}
	.navWrap{
		width:100%;
		height:45px;
		clear:both;
		background: #033c60;
		position: relative;
		z-index: 10;
	}
	.navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	.navWrap .navUl > li{
		height:45px;
		border-left:1px solid #31506c;
		float:left;
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		width:42%;
		text-align: left;
	}
	.navWrap .navUl > li a{  
		font-size: 17px;
		color:white;
		line-height: 45px;
		margin:0 15px;
	}
	.navWrap .navUl > li:first-child{
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		border-right:1px solid #31506c;
	}
	.navWrap .navUl > li:first-child a > img{
		margin-top:10px;
	}
	.navWrap .navUl > li a > .btnArrow{
		margin-left:20px; 
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
	}
	.navWrap .navUl > li:last-child a > .btnArrow{
		margin-left:40px;
	}
	.sub_subDropdown{
		display: none;
		background: #2e465b;
	} 
	.sub_subDropdown > li{
		text-align: left;
		border-bottom:1px solid lightgray;
	}
	.sub_subDropdown > li a{
		height:40px; 
		line-height: 40px !important;
		font-size: 16px !important;
	}
	.sub_subDropdown > li a:hover{
		font-weight: bold;
	}
	.navWrap .navUl > li:hover > .sub_subDropdown {
		display: block;
	}
	.content{ 
		width:100%;
		background: #fff;
	}
	.content > h1{
		width:100%;
		text-align: center;
		font-weight:bold;
		font-size:20px;
		padding:45px 0; 
	}
	.mapWrap{
		width:100%;
	}
	#map{
		width:95%;
		margin:0 auto;
		height:350px;
		border:1px solid gray;
	}
	.content > img{
		width:100%;
		margin-bottom:20px;
	}
}
@media only screen and (min-width:767px) and (max-width:1099px){
	body{
		position: relative;
	}
	header{
		width:100%;
		min-width:767px;
		/* height:95px; */
		background: #033c60;
		position: absolute;
		top:0; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:767px;
	}
	footer{
		width:100%;
		min-width:767px;
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
		padding-top:98px;
	}
	.topImg > img{
		width:100%;
	}
	.mTopImg{
		display:none;
	}
	.contentWrap{
		width:767px;
		margin:0 auto;
		overflow:hidden;
		background: #f5f5f5; 
	}
	.sideMenuWrap{
		float:left;
		width:160px;		
	}
	.sideMenu{
		width:100%;
		text-align: center;
	}
	.sideMenu > h3{
		font-weight:600;
		padding:15px 0;
		background: #033c60;
		color:#fff;
		letter-spacing:2px;
		font-size:20px;
	}
	.sideMenuUl{
		width:150px;
		margin:0 auto;
	}
	.sideMenuUl > li{
		width:100%;
		padding:15px 0;
		border-bottom:1px solid lightgray;
	}
	.sideMenuUl > li > a{
		width:100%;
		font-size:15px;
		text-align: left;
	}
	.sideMenuUl > li:last-child{
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:last-child > a{
		font-weight:600;
		color: black;
	}
	.callInfo{
		width:100%;
		border:1px solid lightgray;
		padding:15px;
		margin-top:20px;
		background: #fff;
	}
	.callInfoTitle{
		margin-bottom:10px;
	}
	.callInfoTitle:not(#callInfoTitle){
		margin-top:15px;
	}
	.callInfo > h3{
		font-weight:600;	
		color: #0072bc;
		font-size:18px;
	}
	.callInfo > .secondChild{
		margin-bottom:8px;
	}
	.callInfo > h5{
		font-size:14px;
		font-weight:500;
	}
	.callInfo > .callInfoTitle:not(#callInfoTitle) ~ h5{
		font-weight:500;
		font-size:18px;
	}
	.smalltxt{
		font-size:13px;
	}
	.blank{
		display:block;
		margin-left:30px; 
	}
	.navWrap{
		display:none;
	}
	.content{ 
		width:607px;
		float:right;
		background: #fff;
	}
	.content > h1{
		width:100%;
		text-align: center;
		font-weight:bold;
		font-size:28px;
		padding:60px 0; 
	}
	.mapWrap{
		width:100%;
	}
	#map{
		width:90%;
		margin:0 auto;
		height:450px;
		border:1px solid gray;
	}
	.content > img{
		width:100%;
	}
}
@media only screen and (min-width:1100px){
	body{
		position: relative;
	}
	header{
		width:100%;
		min-width:1100px;
		/* height:115px; */
		background: #033c60;
		position: absolute;
		top:0; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1100px;
	}
	footer{
		width:100%;
		min-width:1100px;
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
		padding-top:115px;
	}
	.topImg > img{
		width:100%;
	}
	.mTopImg{
		display:none;
	}
	.contentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		background: #f5f5f5; 
	}
	.sideMenuWrap{
		float:left;
		width:230px;		
	}
	.sideMenu{
		width:100%;
		text-align: center;
	}
	.sideMenu > h3{
		font-weight:600;
		padding:20px 0;
		background: #033c60;
		color:#fff;
		letter-spacing:2px;
	}
	.sideMenuUl{
		width:150px;
		margin:0 auto;
	}
	.sideMenuUl > li{
		width:100%;
		padding:15px 0;
		border-bottom:1px solid lightgray;
	}
	.sideMenuUl > li > a{
		width:100%;
		font-size:19px;
		text-align: left;
	}
	.sideMenuUl > li:last-child{
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:last-child > a{
		font-weight:600;
		color: black;
	}
	.callInfo{
		width:100%;
		border:1px solid lightgray;
		padding:15px;
		margin-top:20px;
		background: #fff;
	}
	.callInfoTitle{
		margin-bottom:10px;
	}
	.callInfoTitle:not(#callInfoTitle){
		margin-top:15px;
	}
	.callInfo > h3{
		font-weight:600;	
		color: #0072bc;
	}
	.callInfo > .secondChild{
		margin-bottom:8px;
	}
	.callInfo > h5{
		font-size:15px;
		font-weight:500;
	}
	.callInfo > .callInfoTitle:not(#callInfoTitle) ~ h5{
		font-weight:600;
		font-size:20px;
	}
	.smalltxt{
		font-size:14px;
	}
	.navWrap{
		display:none;
	}
	.content{ 
		float:right;
		width:870px;
		background: #fff;
	}
	.content > h1{
		width:100%;
		text-align: center;
		font-weight:bold;
		padding:80px 0; 
	}
	.mapWrap{
		width:100%;
	}
	#map{
		width:90%;
		margin:0 auto;
		height:500px;
		border:1px solid gray;
	}
	.content > img{
		width:100%;
	}
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="topImg">
			<img class="pcTopImg" src="${pageContext.request.contextPath}/resources/images/menu01TopImg.png">
			<img class="mTopImg" src="${pageContext.request.contextPath}/resources/images/mMenu01TopImg.png">
		</div>
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<div class="sideMenu">
					<h3>법무사소개</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/menu01_1">인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_3">오시는 길</a></li>
					</ul>
				</div><!-- sideMenu end -->
				<jsp:include page="../include/leftMenu_info.jsp"></jsp:include><!-- callInfo end -->
				<div class="navWrap">
					<ul class="navUl"> 
						<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
						<li>
							<a href="#none">법무사소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생</a></li>
								<li><a href="${pageContext.request.contextPath}/menu03_1">개인파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_1">민사</a></li>
								<li><a href="${pageContext.request.contextPath}/menu05_1">자주하는질문</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">오시는길<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu01_1">인사말</a></li>
								<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- sideMenuWrap end -->
			<div class="content">
				<h1>오시는 길</h1>
				<div class="mapWrap">
					<div id="map"></div>
					<script>
						var container = document.getElementById('map');
						var options = {
							center: new daum.maps.LatLng(35.862336, 128.627921),
							level: 3
						};
				
						var map = new daum.maps.Map(container, options);
						
						// 마커가 표시될 위치입니다 
						var markerPosition  = new daum.maps.LatLng(35.862336, 128.627921); 
	
						// 마커를 생성합니다
						var marker = new daum.maps.Marker({
						    position: markerPosition
						});
	
						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);
						
						// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다.
						var iwContent = '<div style="padding-left:15px; padding-top:2px; color:#033c60; font-size:15px; font-weight:bold;">김헌석법무사사무소</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	
						// 인포윈도우를 생성합니다
						var infowindow = new daum.maps.InfoWindow({
						    content : iwContent
						});
	
						// 마커에 마우스오버 이벤트를 등록합니다
						daum.maps.event.addListener(marker, 'mouseover', function() {
						  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						    infowindow.open(map, marker);
						});
	
						// 마커에 마우스아웃 이벤트를 등록합니다
						daum.maps.event.addListener(marker, 'mouseout', function() {
						    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
						    infowindow.close();
						});
						
						//마커 누르면 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						daum.maps.event.addListener(marker, 'click', function() {
						  	// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						    infowindow.open(map, marker);
						});
						
						// 마커 외 영역 누르면 이벤트를 등록합니다
						daum.maps.event.addListener(map, 'click', function() {
						    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
						    infowindow.close();
						});
					</script>
				</div>
				<img src="${pageContext.request.contextPath}/resources/images/location_test1.png">
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>