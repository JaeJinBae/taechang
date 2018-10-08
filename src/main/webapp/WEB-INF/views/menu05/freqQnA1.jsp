<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회생자주하는질문 | 태창법무사사무소</title>
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
		/* margin-left:25px;  */
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
		font-size:16px;
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
		text-decoration: underline;
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
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
	}
	.topImg > img{
		width:100%;
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
	.collapsible_title  >a{
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
		text-decoration: underline;
		font-weight: bold;
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
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
	}
	.topImg > img{
		width:100%;
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
		text-decoration: underline;
		font-weight: bold;
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
			<img src="${pageContext.request.contextPath}/resources/images/menu05TopImg.png">
		</div>
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<div class="sideMenu">
					<h3>자주하는질문</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/menu05_1">개인회생질문</a></li>
						<li><a href="${pageContext.request.contextPath}/menu05_2">개인파산질문</a></li>
						<li><a href="${pageContext.request.contextPath}/menu05_3">민사질문</a></li>
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
							<a href="#none">개인회생질문<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu05_2">개인파산질문</a></li>
								<li><a href="${pageContext.request.contextPath}/menu05_3">민사질문</a></li>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- sideMenuWrap end -->
			<div class="content">
				<ul class="collapsibleWrap">
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 채무자의 채무액수가 금액 제한이 있는지?</a></h2>
					<p class="collapsibleContent">
						금액이 너무 작으면 벌어서 갚을 수 있다고 볼 수 있기 때문에 대부분 2천만원 이상의 경우	신청해왔습니다. 하지만 상황마다 다를 수 있습니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 소득의 액수가 어느 정도 있어야만 할 수 있는지?</a></h2>
					<p class="collapsibleContent">
						  보건복지부 기준 최저생계비 이상의 소득이 있어야만 개인회생 신청이 가능합니다. 보건복지부	기준 최저생계비보다 소득이 적은 분들은 개인회생절차는 진행이 어렵고 파산면책을 검토해야 합니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 최저 생계비를 소액 넘는 소득만 있어도 신청이 가능한지?</a></h2>
					<p class="collapsibleContent">
						경우에 따라 조금씩 다르지만 대부분 가능합니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 자녀가 성년이 된 경우 이 자녀도 부양가족에 포함이 가능한지?</a></h2>
					<p class="collapsibleContent">
						부양가족은 미성년 자녀에게만 해당이 되는 사항입니다. 다만 성년의 자녀라고 해도 장애가 있거나 질병이 있어 가족의 보호 및 부양이 필요한 경우는 인정됩니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 부모님도 부양가족에 포함이 가능한지?</a></h2>
					<p class="collapsibleContent">
						부모님은 만 60세 이상 부양가족으로 신청이 가능합니다. 단, 60세 미만의 부모님이라 하더라도 질병 또는 장애로 가족의 보호와 부양이 필요한 경우 부양가족으로 인정되며, 
						60세 이상이라 해도 소득이 있으시거나 어느 정도 이사의 재산을 보유하고 계시다면 부양가족에 포함시킬 수 없습니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 배우자도 부양가족에 포함이 가능한지?</a></h2>
					<p class="collapsibleContent">
						배우자는 경우에 따라 다릅니다. 미취학 아동이 있는 경우나, 취업이 불가능한 사유를 소명할 수 있다면 부양가족으로 포함이 가능합니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 배우자가 임대보증금이 있으면 개인회생이 불가능 한지?</a></h2>
					<p class="collapsibleContent">
						직접적인 관련은 없습니다. 다만 배우자 임대보증금의 저반 액수와 채무자의 재산을 합한 금액보다 변제계획안의 총 변제액이 더 커야 합니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 채무액수의 한도는 있는지?</a></h2>
					<p class="collapsibleContent">
						무담보채무액수는 5억원 이하인 경우만 가능하고 담보채무액수는 10억원 이하인 경우에만 가능합니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 도박을 한 경우 또는 주식투자에 실패한 경우도 개인회생을 할 수 있는지?</a></h2>
					<p class="collapsibleContent">
						상황에 따라 다르지만 가능 할 수도 있습니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 부동산을 소유하고 있으면 개인회생을 할 수 없는지?</a></h2>
					<p class="collapsibleContent">
						가능합니다. 다만 개인회생 요건 검토가 사전에 필요합니다. 즉, 재산보다 빚이 많아야 하고 변제 계획안의 변제총액이 가지고 있는 재산보다 많아야 합니다. 구체적인 상담을 해봐야 개인회생 가능성에 대해 자세히 알아볼 수 있습니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 취직해서 월급을 받은지 1개월 밖에 되지 않아도 개인회생이 가능한지?</a></h2>
					<p class="collapsibleContent">
						가능하지만 계속하여 근무를 할 것인지에 대한 심사가 있습니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 신청인 채무에 대하여 보증을 선 사람이 있는데 그 보증인도 면책이 되는지?</a></h2>
					<p class="collapsibleContent">
						되지않습니다. 보증인은 보증채무를 이행해야 하고, 보증인도 면책이 되려면 개인회생 또는 파산면책을 별도로 진행해야 합니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 신청인 채무에 대한 보증을 선 사람도 채권자 목록에 포함이 되는지?</a></h2>
					<p class="collapsibleContent">
						보증인이 신청인 대신 변제하면 보증인은 신청인에 대하여 구상금채권자가 됩니다. 따라서	채권자 목록에 포함시켜야 합니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 소득신고가 되지않는 일용직인데 개인회생이 가능한지?</a></h2>
					<p class="collapsibleContent">
						가능합니다. 하지만 몇가지 준비사항이 있으며 개인회생개시결정 이후에는 인건비를 통장을 통해 받아야 합니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 급여가 압류되어 있는 상태인데 개인회생을 하면 압류가 다시 풀리는지?</a></h2>
					<p class="collapsibleContent">
						개인회생개시결정이 나면 중지명령의 효력이 중단되고, 개인회생인가결정이 되면 압류를 취소하면 됩니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 최근 발생한 채무가 있으면 개인회생을 할 수 없는지?</a></h2>
					<p class="collapsibleContent">
						매번 그렇지는 않습니다. 최근 발생한 채무의 금액, 사유, 사용처에 대한 소명을 해야하고 합리적인 이유가 있는 경우에는 상관없습니다. 
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