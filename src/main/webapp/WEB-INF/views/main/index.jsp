<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=0"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=LTB96xNxL2gd5pnixyId&submodules=geocoder"></script>
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
	section{
		padding:15px 3px;
		width:100%;
	}
	footer{
		width:100%;
		min-width:320px;
		height:100px; 
		background: black;
	}
	.mainSlider{
		width:100%;
		min-width:320px;
		padding-top:64px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
		height:130px;
	}
	.slick-dots{
		bottom:0;
	}
	.slick-dots li button:before{
		font-size:12px;
	}
	#section1{
		
	}
	.smallTitle{
		padding:10px 0;
	}
	.smallTitle > h2{
		font-size:20px;
		font-weight: bold;
	}
	.boxWrap{
		width:100%;
	}
	.mainInfo{
		width:350px;
		height:230px;
		margin:0 auto;
		border:1px solid lightgray;
		position: relative;
	}
	.info01{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg1.png") no-repeat;
		background-size: cover;
	}
	.info02{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg2.png") no-repeat;
		background-size: cover;
	}
	.info03{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg3.png") no-repeat;
		background-size: cover;
	}
	.txtBox{
		width:100%;
		height:73px;
		position: absolute;
		bottom:0;
		background: #fff;
		padding:7px 12px;
	}
	.txtTitle{
		width:100%;
		overflow:hidden;
	}
	.txtTitle > h4{
		float:left;
	}
	.txtTitle > a{
		float:right;
		font-size:15px;
	}
	.txtBox > p{
		font-size:15px;
		letter-spacing: 2px;
		margin-top:5px;
	}
	#section2{
		width:100%;
	}
	.contentWrap2{
		width:100%;
	}
	.contentBox{
		display:none;
	}
	.contentBox3{
		display:block;
		width:100%;
		margin:0 auto;
	}
	.section2Content_content > .mTimeImg{
		width:350px;
		display:block;
		margin:0 auto;
	}
	.pcTimeImg{
		display:none;
	}
	#section3{
		width:100%;
	}
	.contentWrap3{
		width:100%;
		overflow:hidden;
		margin-bottom:12px;
	}
	.txt1{
		float:left;
	}
	.txt2{
		float:left;
		margin-left: 10px;
	}
	.mapWrap{
		width:100%;
		height:200px;
	}
	#map{
		width:100%;
		height:200px;
	}
	
}
@media only screen and (min-width:767px) and (max-width:1099px){
	header{
		width:100%;
		min-width:767px;
		height:95px;
		position: relative; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:767px;
	}
	footer{
		width:100%;
		min-width:767px;
		height:100px;
		background: black;
	}
	.mainSlider{
		width:100%;
		min-width:767px;
		background: skyblue;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	#section1{
		padding:50px 0;
		padding-top:25px;
	}
	.contentWrap1{
		width:767px;
		margin:0 auto;
		overflow:hidden;
	}
	.content01{
		width:100%;
	}
	.smallTitle{
		width:100%;
		margin:20px 0;
	}
	.smallTitle > h2{
		font-weight:600;
		display:inline-block;
		font-size:27px;
		margin-left:5px;
	}
	.smallTitle > p{
		display:inline-block;
		font-size:17px;
		color:#a9a9a9;
		margin-left:15px;
		font-weight:600;
	}
	.boxWrap{
		width:100%;
		overflow:hidden;
	}
	.mainInfo{
		width:250px;
		height:195px;
		float:left;
		border:1px solid lightgray;
		position: relative;
	}
	.mainInfo:nth-child(2){
		margin:0 8px;
	}
	.info01{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg1.png") no-repeat;
		background-size: contain;
	}
	.info02{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg2.png") no-repeat;
		background-size: contain;
	}
	.info03{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg3.png") no-repeat;
		background-size: contain;
	}
	.txtBox{
		width:100%;
		height:83px;
		position: absolute;
		bottom:0;
		background: #fff;
		padding:5px 14px;
	}
	.txtTitle{
		width:100%;
		overflow:hidden;
	}
	.txtTitle > h4{
		float:left;
	}
	.txtTitle > a{
		float:right;
		font-size:15px;
	}
	.txtBox > p{ 
		font-size:14px;
		letter-spacing: 0px;
		margin-top:3px;
	}
	#section2{
		background:#f5f5f5;
		padding:50px 0;
	}
	.contentWrap2{
		width:767px;
		margin:0 auto;
		overflow:hidden;
	}
	.contentBox{
		float:left;
	}
	.contentBox1{
		width:209px;
	}
	.contentBox2{
		width:349px;
	}
	.contentBox3{
		width:209px;
	}
	.mTimeImg{
		display:none;
	}
	.contentBox4{
		width:33.33%;
		height:153px;
		background:pink;
	}
	.contentBox5{
		width:33.33%;
		height:153px;
		background:yellow;
	}
	.contentBox6{
		width:33.33%;
		height:153px;
		background:#033c60;
	}
	.contentBox4, .contentBox5, .contentBox6{
		display:none;
	}
	.section2Content_content > a, .section2Content_content > a > img, .section2Content_content > img{
		width:100%;
	}
	#section3{
		padding:50px 0;
	}
	.contentWrap3{
		width:767px;
		margin:0 auto;
	}
	.mapWrap{
		width:100%;
		height:300px;
	}
	#map{
		width:100%;
		height:300px;
	}
}
@media only screen and (min-width:1100px){
	header{
		width:100%;
		min-width:1100px;
		height:115px;
		position: relative; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1100px;
	}
	footer{
		width:100%;
		min-width:1100px;
		height:100px;
		background: black;
	}
	.mainSlider{
		width:100%;
		min-width:1100px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	#section1{
		padding:50px 0;
		padding-top:25px;
	}
	.contentWrap1{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.content01{
		width:100%;
	}
	.smallTitle{
		width:100%;
		margin:20px 0;
	}
	.smallTitle > h2{
		font-weight:600;
		display:inline-block;
	}
	.smallTitle > p{
		display:inline-block;
		font-size:17px;
		color:#a9a9a9;
		margin-left:15px;
		font-weight:600;
	}
	.boxWrap{
		width:100%;
		overflow:hidden;
	}
	.mainInfo{
		width:350px;
		height:230px;
		float:left;
		border:1px solid lightgray;
		position: relative;
	}
	.info01{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg1.png") no-repeat;
		background-size: cover;
	}
	.info02{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg2.png") no-repeat;
		background-size: cover;
	}
	.info03{
		background: url("${pageContext.request.contextPath}/resources/images/mainInfoImg3.png") no-repeat;
		background-size: cover;
	}
	.mainInfo:nth-child(2){
		margin:0 25px;
	}
	.txtBox{
		width:100%;
		height:73px;
		position: absolute;
		bottom:0;
		background: #fff;
		padding:7px 12px;
	}
	.txtTitle{
		width:100%;
		overflow:hidden;
	}
	.txtTitle > h4{
		float:left;
	}
	.txtTitle > a{
		float:right;
		font-size:15px;
	}
	.txtBox > p{
		font-size:15px;
		letter-spacing: 2px;
		margin-top:5px;
	}
	#section2{
		background:#f5f5f5;
		padding:50px 0;
	}
	.contentWrap2{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.contentBox{
		float:left;
	}
	
	.contentBox1{
		width:300px;
		height:350px;
		background: red;
	}
	.contentBox2{
		width:500px;
		height:350px;
		background:blue;
	}
	.contentBox3{
		width:300px;
		height:350px;
		background:green;
	}
	.mTimeImg{
		display:none;
	}
	.contentBox4{
		width:33.33%;
		height:250px;
		background:pink;
	}
	.contentBox5{
		width:33.33%;
		height:250px;
		background:yellow;
	}
	.contentBox6{
		width:33.33%;
		height:250px;
		background:#033c60;
	}
	.contentBox4, .contentBox5, .contentBox6{
		display:none;
	}
	.section2Content_content > a, .section2Content_content > a > img, .section2Content_content > img{
		width:100%;
	}
	#section3{
		padding:50px 0;
	}
	.contentWrap3{
		width:1100px;
		margin:0 auto;
	}
	.mapWrap{
		width:100%;
		height:400px;
	}
	#map{
		width:100%;
		height:400px;
	}
}

</style>
<script type="text/javascript">
	$(function(){
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true,
		});	
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<div class="mainSlider">
		<div class="mainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider1.png" alt="태창법무사사무소"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider2.png" alt="태창법무사사무소"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider3.png" alt="태창법무사사무소"></div>
		</div>
	</div>
	<section id="section1">
		<div class="contentWrap1">
			<div class="content01">
				<div class="smallTitle">
					<h2>태창법무사사무소</h2>
					<p>오랜 경력의 전문 법무사가 최상의 서비스를 제공합니다.</p>
				</div>
				<div class="boxWrap">
					<div class="mainInfo info01">
						<div class="txtBox">
							<div class="txtTitle">
								<h4>개인회생</h4>
								<a href="">더보기+</a>
							</div>
							<p>최상의 해결책을 마련하여 소중한 고객님의 인생을 지켜드리겠습니다.</p>
						</div>
					</div>
					<div class="mainInfo info02">
						<div class="txtBox">
							<div class="txtTitle">
								<h4>개인파산</h4>
								<a href="">더보기+</a>
							</div>
							<p>신뢰로 최선을 다하는 태창이 고객님을 지켜드리겠습니다.</p>
						</div>
					</div> 
					<div class="mainInfo info03">
						<div class="txtBox">
							<div class="txtTitle">
								<h4>민사소송</h4>
								<a href="">더보기+</a>
							</div>
							<p>다루고자하는 권리의무관계에 대하여 법원의 판단을 구하는 절차 태창이 돕겠습니다.</p>
						</div>
					</div>
				</div><!-- boxWrap end -->
			</div><!-- content01 end -->
		</div><!-- contentWrap -->
	</section><!-- section1 end -->
	<section id="section2">
		<div class="contentWrap2">
			<div class="contentBox1 contentBox">
				<div class="section2Content_title">
					<!-- <h3>태창 인사말</h3> -->
				</div>
				<div class="section2Content_content">
					<a href="${pageContext.request.contextPath}/">
						<img src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg1.png">
					</a>
				</div>
			</div>
			<div class="contentBox2 contentBox">
				<div class="section2Content_title">
					<!-- <h3>태창 업무방침</h3> -->
				</div>
				<div class="section2Content_content">
					<a href="${pageContext.request.contextPath}/">
						<img src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg2.png">
					</a>
				</div>
			</div>
			<div class="contentBox3 contentBox">
				<div class="section2Content_title">
					<!-- <h3>고객센터</h3> -->
				</div>
				<div class="section2Content_content">
					<img class="pcTimeImg" src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg3.png">
					<img class="mTimeImg" src="${pageContext.request.contextPath}/resources/images/timeTest.png">
				</div>
			</div>
			<div class="contentBox4 contentBox">
				<div class="section2Content_title">
					<h3>개인회생 자주하는질문</h3>
				</div>
			</div>
			<div class="contentBox5 contentBox">
				<div class="section2Content_title">
					<h3>개인파산 자주하는질문</h3>
				</div>
			</div>
			<div class="contentBox6 contentBox">
				<div class="section2Content_title">
					<h3>민사소송 자주하는질문</h3>
				</div>
			</div>
		</div>
	</section><!-- section2 end -->
	<section id="section3">
		<div class="contentWrap3">
			<div class="smallTitle">
				<h2 class="txt1">오시는 길</h2>
				<p class="txt2"><a href="#none">더보기+</a></p>
			</div>
		</div>
		<div class="mapWrap">
			<div id="map"></div>
	
				<script> 
					var mapOptions = {
					    center: new naver.maps.LatLng(35.862259, 128.626323),
					    zoom: 13
					};
					 
					var map = new naver.maps.Map('map', mapOptions);
					
					var marker = new naver.maps.Marker({
					    position: new naver.maps.LatLng(35.862259, 128.626323),
					    map: map
					});
					
				</script>
		</div>
	</section>
	<footer>
	
	</footer>
</body>
</html>