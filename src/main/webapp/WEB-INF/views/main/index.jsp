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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	body{
		position: relative;
	}
	header{
		width:100%;
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
	}
	.slick-dots{
		bottom:0;
	}
	.slick-dots li button:before{
		font-size:12px;
	}
	#section1{
		
	}
	.smallTitle > h2{
		font-size:27px;
		font-weight: bold;
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
		height:164px;
		background: green;
		float:left;
	}
	.mainInfo:nth-child(2){
		margin:0 8px;
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
		width:188px;
		height:215px;
		background: red;
	}
	.contentBox2{
		width:388px;
		height:215px;
		background:blue;
	}
	.contentBox3{
		width:188px;
		height:215px;
		background:green;
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
		background: #123456;
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
		background: green;
		float:left;
	}
	.mainInfo:nth-child(2){
		margin:0 25px;
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
	#section3{
		padding:50px 0;
	}
	.contentWrap3{
		width:1100px;
		margin:0 auto;
	}
	.mapWrap{
		width:100%;
		height:300px;
		background: #123456;
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
					<div class="mainInfo">
					
					</div>
					<div class="mainInfo">
						
					</div> 
					<div class="mainInfo">
						
					</div>
				</div><!-- boxWrap end -->
			</div><!-- content01 end -->
		</div><!-- contentWrap -->
	</section><!-- section1 end -->
	<section id="section2">
		<div class="contentWrap2">
			<div class="contentBox1 contentBox">
				<div class="section2Content_title">
					<h3>태창 인사말</h3>
				</div>
			</div>
			<div class="contentBox2 contentBox">
				<div class="section2Content_title">
					<h3>태창 업무방침</h3>
				</div>
			</div>
			<div class="contentBox3 contentBox">
				<div class="section2Content_title">
					<h3>고객센터</h3>
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
				<h2>오시는 길</h2>
				<p><a href="#none">더보기+</a></p>
			</div>
		</div>
		<div class="mapWrap">
		
		</div>
	</section>
	<footer>
	
	</footer>
</body>
</html>