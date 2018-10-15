<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인파산자주하는질문 | 태창법무사사무소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/collapsibleQnA.js"></script>
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
		font-size: 16px;
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
		/* margin-left:25px; */ 
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
	}
	.navWrap .navUl > li:last-child a > .btnArrow{
		margin-left:15px;
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
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:98%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title > a{
		display:block;
		font-size:18px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
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
	.sideMenuUl > li:nth-child(2){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(2) > a{
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
		background: #fff;
	}
	.content > img{
		width:100%;
	}
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:90%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title > a{
		display:block;
		font-size:18px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
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
	.sideMenuUl > li:nth-child(2){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(2) > a{
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
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:90%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title > a{
		display:block;
		font-size:18px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
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
			<img class="pcTopImg" src="${pageContext.request.contextPath}/resources/images/menu05TopImg.png">
			<img class="mTopImg" src="${pageContext.request.contextPath}/resources/images/mMenu05TopImg.png">
		</div>
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<div class="sideMenu">
					<h3>자주하는질문</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/menu05_1">개인회생질문</a></li>
						<li><a href="${pageContext.request.contextPath}/menu05_2">개인파산질문</a></li>
						<%-- <li><a href="${pageContext.request.contextPath}/menu05_3">민사질문</a></li> --%>
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
							<a href="#none">자주하는질문<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu01_1">태창소개</a></li>
								<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생</a></li>
								<li><a href="${pageContext.request.contextPath}/menu03_1">개인파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_1">민사</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">개인파산질문<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu05_1">개인회생질문</a></li>
								<%-- <li><a href="${pageContext.request.contextPath}/menu05_3">민사질문</a></li> --%>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- sideMenuWrap end -->
			<div class="content">
				<ul class="collapsibleWrap">
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#none">Q. 소득이 전혀 없는 채무자만 개인파산을 신청할 수 있나요?</a></h2>
						<p class="collapsibleContent">
							개인파산은 채무자가 소득이 없거나 소득이 있다고 하더라도 최저생활을 할 수 있는 수준의 소득만 있다면 신청할 수 있습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 최저생계비는 어떻게 산정하나요?</a></h2>
						<p class="collapsibleContent">
							  최저생계비는 채무자 개인 또는 생계를 함께 하는 가족들이 일상생활을 하는데 소요되는 최소한의 생활비를 국가에서 정하는 것으로, 보건복지부에서 매년 고시하고 있습니다.
							  법원에서는 이 고시를 기준으로 150%의 범위 내에서 생계비를 인정하는 편입니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 파산신청 후 취업이 가능한가요?</a></h2>
						<p class="collapsibleContent">
							파산신청 후에도 취업이 가능하고 소득활동을 할 수 있으며 면책을 받은 후에도 불이익은 없습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 파산을 신청할 수 있는 채무의 한계 및 종류는 무엇이 있나요?</a></h2>
						<p class="collapsibleContent">
							인파산의 경우 부채의 한도는 없고, 채무의 종류 역시 제한이 없으므로 금융권 채무 뿐 아니라 개인간의 채무, 휴대폰요금 등도 면책이 가능합니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 파산신청에서 면책까지 얼마나 걸리나요?</a></h2>
						<p class="collapsibleContent">
							채무자별로 다르기는 하지만 대부분 6개월에서 1년 사이에 절차가 완료됩니다. 
							하지만 절차 진행 도중 법원의 보정명령 등에 불응하는 등 채무자의 비협조로 절차가 지연되면 그만큼 처리기간도 늘어납니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 채권 중 면책이 되지 않는것에는 어떤것이 있나요?</a></h2>
						<p class="collapsibleContent">
							조세채권, 벌금, 추징금, 과태료, 채무자의 불법행위로 인한 손해배상금 등은 면책이 되지 않습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법무사나 변호사의 도움없이 혼자  파산진행을 할 수 있나요?</a></h2>
						<p class="collapsibleContent">
							가능합니다. 다만 신청서를 제출한 이후에도 법원에서 수시로 보정을 요구하는데 이에 제대로 대응하지 못하면 기각될 확률이 높고, 다시 새롭게 절차를 진행해야 되므로 그만큼 시일이 오래 걸리는 불편함이 있을 수 있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 파산하면 은행거래가 불가능한가요?</a></h2>
						<p class="collapsibleContent">
							파산을해도 통장개설은 가능합니다. 다만 채무자 명의로 대출이 불가능할 것 입니다.
							또한 파산신청후 아직 면책을 받지 않았다면 채권자의 강제집행 염려 때문에 대부분 금융권에 예금을 개설하지 않는 경우가 많습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 은행에서 민사소송을 걸어 비용을 부담하겠다는 통지가 온 경우는 어떻게 해야하나요?</a></h2>
						<p class="collapsibleContent">
							소장이나 지급명령결정문이 법원으로부터 온다면 채무액을 확인한 후 이에 대해 답변서나 이의신청서를 제출해야 합니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법원예납금을 납부하지 않는다면 어떻게되나요?</a></h2>
						<p class="collapsibleContent">
							파산을 신청한 이후 법원에서는 파산관재인 보수 등과 같은 비용을 예납하도록 안내하고 있습니다. 
							이에 불응하여 납부하지 않는다면 법원에서는 파산신청에 대해 기각결정을 내립니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 부모가 개인파산을 신청하게 되면 자녀에게 피해가 가나요?</a></h2>
						<p class="collapsibleContent">
							개인파산 신청 후 면책을 받게 되면 파산자는 자동으로 복권이 됩니다. 
							그러면 아무런 문제없이 은행거래가 가능하며 개인사업자 등록을 하는데도 문제가 되지 않는 등 공·사법상 활동에 제약이 없기에 자녀에게 피해가 가지 않습니다.
						</p>
					</li>				
				</ul><!-- collapsibleWrap end -->
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>