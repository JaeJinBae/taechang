<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	.headerWrap{
		display:none;
	}
	.mHeaderWrap{
		width:100%;
	}
}
@media only screen and (min-width:767px) and (max-width:1099px){
	.mHeaderWrap{
		display:none;
	}
	.mHeaderWrap{
		display:none;
	}
	.headerWrap{
		width:100%;
		position: relative;
	}
	.whiteBack{
		width:100%;
		height:95px;
		background: #fff;
		position: absolute;
		top:0;
		z-index: 99;
	}
	.mainMenuWrap{
		width:767px;
		margin:0 auto;
		overflow:hidden;
		position: relative;
		z-index: 999;
	}
	.mainMenuUl{
		width:100%;
		overflow:hidden;
	}
	.mainMenuUl > li{
		float:left;
		width:93px;
		text-align: center;
		padding-top:38px;
	}
	.mainMenuUl > li > a{
		display:block;
		font-size:16px;
		font-weight:600;
		margin-bottom:40px;
		color: #5E5E5E;
	}
	.mainMenuUl > li:first-child{
		width:290px;
		padding-top:23px;
	}
	.logoDiv{
		width:220px;
		text-align: left;
		margin-bottom:23px;
		margin-left:10px;
	}
	.logoWrap > .logoDiv > a{
		display:block;
		width:220px;
	}
	.logoWrap > .logoDiv > a > img{
		width:100%;
	}
	.mainMenuUl > li:hover > a{
		color:black;
	}
	.subMenuWrap{
		display:none;
		width:100%;
		padding-top:10px;
/*		background: #033c60;*/
	}
	.subMenuCallInfo{
		float:left;
		margin:10px;
		text-align: center;
	}
	.subMenuCallInfo > p{
		font-size:13px;
		font-weight:600;
		color:lightgray;
		line-height:25px;
	}
	#bigtxt{
		font-size:17px;
		font-weight:bold;
	}
	.subMenuCallInfo > p:nth-child(2){
		margin-bottom:10px;
	}
	.subMenuCallInfo > h1{
		font-weight: bold;
		color:#ff6d00;
		font-size:25px;
	}
	.subMenuUl{
		padding:23px 0;
	}
	.subMenuUl > li{
		margin-bottom:25px;
	}
	.subMenuUl > li > a{
		font-size:14px;
		color:#e1e1e1;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold !important;
	}
}
@media only screen and (min-width:1100px){
	.mHeaderWrap{
		display:none;
	}
	.headerWrap{
		width:100%;
		position: relative;
	}
	.whiteBack{
		width:100%;
		height:115px;
		background: #fff;
		position: absolute;
		top:0;
		z-index: 99;
	}
	.mainMenuWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		position: relative;
		z-index: 999;
	}
	.mainMenuUl{
		width:100%;
		overflow:hidden;
	}
	.mainMenuUl > li{
		float:left;
		width:120px;
		text-align: center;
		padding-top:45px;
	}
	.mainMenuUl > li > a{
		display:block;
		font-size:20px;
		font-weight:600;
		margin-bottom:47px;
		color: #5E5E5E;
	}
	.mainMenuUl > li:first-child{
		width:500px;
		padding-top:24px;
	}
	.logoDiv{
		width:500px;
		text-align: left;
		margin-bottom:23px;
	}
	.logoWrap > a{
		display:block;
		width:300px;
	}
	.logoWrap > a > img{
		width:100%;
	}
	.mainMenuUl > li:hover > a{
		color:black;
	}
	.subMenuWrap{
		display:none;
		width:100%;
		padding-top:10px;
	}
	.subMenuCallInfo{
		float:left;
		margin:35px 15px;
		text-align: center;
	}
	.subMenuCallInfo > p{
		font-size:16px;
		font-weight:600;
		color:lightgray;
		line-height:25px;
	}
	#bigtxt{
		font-size:20px;
		font-weight:bold;
	}
	.subMenuCallInfo > p:nth-child(2){
		margin-bottom:10px;
	}
	.subMenuCallInfo > h1{
		font-weight: bold;
		color:#ff6d00;
	}
	.subMenuUl{
		padding:23px 0;
	}
	.subMenuUl > li{
		margin-bottom:25px;
	}
	.subMenuUl > li > a{
		font-size:17px;
		color:#e1e1e1;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold !important;
	}
}
</style>
<script>
	$(function(){
		$(".mainMenuUl>li>a.mMenu").mouseenter(function(){
            $(".subMenuWrap").stop(true,true).slideDown();
        });
        $(".mainMenuUl").mouseleave(function(){
            $(".subMenuWrap").stop(true,true).slideUp();
        });
        $(".logoDiv").mouseenter(function(){
            $(".subMenuWrap").stop(true,true).slideUp();
        });
        $(".menuIcon").click(function(){
            $(".menuBg").css({"display":"block"});
        });
        $(".closebtn").click(function(){
            $(".menuBg").css({"display":"none"});
        });
	});
	
</script>
<body>
	<div class="headerWrap">
		<div class="whiteBack">
		
		</div>
		<div class="mainMenuWrap">
			<ul class="mainMenuUl">
				<li class="logoWrap">
					<div class="logoDiv">
						<a href="${pageContext.request.contextPath}/">
							<img src="${pageContext.request.contextPath}/resources/images/logo.png">
						</a>
					</div>
					<div class="subMenuWrap">
						<div class="subMenuCallInfo">
						<p>개인회생/개인파산/민사 똑같다고 생각 마세요.</p>
						<p>여러분의 최고 파트너 <span id="bigtxt">태창</span>의 문을 두드리세요.</p>
						<h1>1877-0757</h1>
						<h1>053-745-1332</h1>
					</div><!-- subMenuCallInfo -->
					</div>
				</li>
				<li>
					<a class="mMenu" href="#none">태창소개</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="${pageContext.request.contextPath}/menu01_1">인사말</a></li>
							<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
							<li><a href="${pageContext.request.contextPath}/menu01_3">오시는 길</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a class="mMenu" href="#none">개인회생</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생이란</a></li>
							<li><a href="${pageContext.request.contextPath}/menu02_2">개인회생절차</a></li>
							<li><a href="${pageContext.request.contextPath}/menu02_3">개인회생서류</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a class="mMenu" href="#none">개인파산</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="${pageContext.request.contextPath}/menu03_1">개인파산이란</a></li>
							<li><a href="${pageContext.request.contextPath}/menu03_2">개인파산절차</a></li>
							<li><a href="${pageContext.request.contextPath}/menu03_3">개인파산서류</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a class="mMenu" href="#none">민사</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="${pageContext.request.contextPath}/menu04_1">민사소송이란</a></li>
							<li><a href="${pageContext.request.contextPath}/menu04_2">민사진행절차</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a class="mMenu" href="#none">자주하는질문</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="${pageContext.request.contextPath}/menu05_1">개인회생질문</a></li>
							<li><a href="${pageContext.request.contextPath}/menu05_2">개인파산질문</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div><!-- mainMenuWrap end -->
	</div><!-- headerWrap end -->
	<div class="mHeaderWrap">
		<jsp:include page="mHeader.jsp"></jsp:include>
	</div>
</body>