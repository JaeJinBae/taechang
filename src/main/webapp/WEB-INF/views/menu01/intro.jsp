<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말 | 태창법무사사무소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
		width:45%;
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
		margin-left:25px; 
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
	}
	.navWrap .navUl > li:last-child a > .btnArrow{
		margin-left:60px;
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
	}
	.content > img{
		width:100%;
	}
	.pcContent{
		display:none;
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
	.sideMenuUl > li:first-child{
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:first-child > a{
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
	.callInfo > h5:last-child{
		font-weight:600;
		font-size:18px;
	}
	.blank{
		display:block;
		margin-left:30px; 
	}
	.navWrap{
		display:none;
	}
	.content{ 
		float:right;
		width:607px;
	}
	.content > img{
		width:100%;
	}
	.pcContent{
		display:none;
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
	.sideMenuUl > li:first-child{
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:first-child > a{
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
	.callInfo > h5:last-child{
		font-weight:600;
		font-size:20px;
	}
	.navWrap{
		display:none;
	}
	.content{ 
		float:right;
		width:870px;
		background: #fff;
	}
	.content > h2{
		width:100%;
		text-align: center;
		font-weight:bold;
		padding:30px 0;
	}
	.contentBox{
		width:100%;
		height:825px;
		background: url("${pageContext.request.contextPath}/resources/images/menu01TopImgTest2.png") no-repeat;
		background-size:cover;
		position: relative;
	}
	.contentBox > p{
		width:697px;
		margin:0 auto;
		padding-top:440px;
		font-size:17px;
		line-height: 35px;
	}
	.content > img{
		width:100%;
	}
	.tmContent{
		display:none;
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
					<h3>태창소개</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/menu01_1">인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_3">오시는 길</a></li>
					</ul>
				</div><!-- sideMenu end -->
				<div class="callInfo">
					<h4 class="callInfoTitle" id="callInfoTitle">상담센터</h4>
					<h3>1877 - 0757</h3>
					<h3 class="secondChild">053-745-1332</h3>
					<h5>Fax. 053-751-1696</h5>
					<h5>E-mail. tc119@naver.com</h5>
					<h4 class="callInfoTitle">운영시간</h4>
					<h5>AM 09:00<span class="blank"> ~ PM 06:00</span></h5>
				</div><!-- callInfo end -->
				<div class="navWrap">
					<ul class="navUl"> 
						<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
						<li>
							<a href="#none">태창소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생</a></li>
								<li><a href="${pageContext.request.contextPath}/menu03_1">개인파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_1">민사</a></li>
								<li><a href="${pageContext.request.contextPath}/menu05_1">자주하는질문</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">인사말<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
								<li><a href="${pageContext.request.contextPath}/menu01_3">오시는 길</a></li>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- sideMenuWrap end -->
			<div class="content">
				<!-- <h2>인사말</h2>
				<div class="contentBox">
					<p>
						태창법무사무소는 개인회생/파산에 관하여 10년 이상의 경험과 노하우를 가진 실무진이 사건 진행을 하며,
						회생/파산 전문가가 직접 사건을 검토하여 최종 결론을 도출합니다. 개인회생/파산사건은 각 지역 법원마다
						요구하는 보정 정도가 달라 그러한 경험이 없다면 기각될 우려가 높고, 성공하더라도 매월 납입하는
						납입금이 높을 수도 있습니다. 그렇기에 태창법무사무소에서 진행한다면 그 경험과 노하우에 의하여 사건 처리
						결과가 달라질 수 있습니다. 그 점이 태창에서 개인회생/파산을 하여야 하는 이유입니다. 
						저희는 특히 개인회생/파산의 전문가가 각 사건마다 담당자로 정하여져 사건을 처리하기에 사건처리에 관하여
						문제가 발생할 여지가 적습니다. 기존에 타법무사나 무리하게 수임하는 법률사무소와는 다르다는 점 다시
						말씀드리며, 어떤 상담에도 저희가 드릴 조언을 아끼지 않을 것입니다.<br>
						감사합니다.
					</p>
				</div> -->
				<img class="pcContent" src="${pageContext.request.contextPath}/resources/images/menu01_1contentImg.png">
				<img class="tmContent" src="${pageContext.request.contextPath}/resources/images/tmMenu01_1contentImg.png">
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>