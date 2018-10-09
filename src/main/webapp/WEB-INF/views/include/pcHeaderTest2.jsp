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
	.headerWrap{
		width:100%;
	}
	.mainMenuWrap{
		width:767px;
		height:95px;
		margin:0 auto;
		overflow:hidden;
	}
	.mainLogo{
		width:220px;
		float:left;
		margin-top:22px;
		margin-left:10px;
	}
	.mainLogo > a{
		width:100%;
	}
	.mainLogo > a > img{
		width:100%;
	}
	.mainMenuUl{
		width:465px;
		float:right;
		overflow:hidden;
		text-align: right;
		margin-right:15px;
	}
	.mainMenuUl > li{
		float:left;
		width:93px;
		height:95px;
		text-align: center;
		padding-top:38px;
	}
	.mainMenuUl > li > a{
		font-size:16px;
		font-weight:600;
	}
	.mainMenuUl > li:hover{
		border-bottom:4px solid red;
	} 
	.subMenuWrap{
		display:none;
		width:100%;
		background: #033c60;
	}
	.displayBlock{
		display:block;
		transition-property:all;
		transition-duration:1s;
	}
	.subMenuContentWrap{
		width:767px;
		margin:0 auto;
		overflow:hidden;
		padding:23px 0;
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
	.subMenuUlWrap{
		float:right;
		margin-right:15px;
	}
	.subMenuUl{
		float:left;
		width:93px;
		text-align: center;
	}
	.subMenuUl > li{
		/* padding:15px 0; */
		padding-bottom:25px;
	}
	.subMenuUl > li > a{
		font-size:14px;
		color:#e1e1e1;
	}
}
@media only screen and (min-width:1100px){
	.mHeaderWrap{
		display:none;
	}
	.headerWrap{
		width:100%;
	}
	.mainMenuWrap{
		width:1100px;
		height:115px;
		margin:0 auto;
		overflow:hidden;
	}
	.mainLogo{
		width:300px;
		float:left;
		margin-top:22px;
	}
	.mainLogo > a{
		width:100%;
	}
	.mainLogo > a > img{
		width:100%;
	}
	.mainMenuUl{
		width:600px;
		float:right;
		overflow:hidden;
		text-align: right;
	}
	.mainMenuUl > li{
		float:left;
		width:120px;
		height:114px;
		text-align: center;
		padding-top:45px;
	}
	.mainMenuUl > li > a{
		font-size:20px;
		font-weight:600;
	}
	.mainMenuUl > li:hover{
		border-bottom:4px solid red;
	} 
	.subMenuWrap{
		display:none;
		width:100%;
		background: #033c60;
	}
	.displayBlock{
		display:block;
		transition-property:all;
		transition-duration:1s;
	}
	.subMenuContentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		padding:23px 0;
	} 
	.subMenuCallInfo{
		float:left;
		margin:20px;
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
	.subMenuUlWrap{
		float:right;
	}
	.subMenuUl{
		float:left;
		width:120px;
		text-align: center;
	}
	.subMenuUl > li{
		/* padding:15px 0; */
		padding-bottom:25px;
	}
	.subMenuUl > li > a{
		font-size:17px;
		color:#e1e1e1;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold;
	}
}
</style>
<script>
	$(function(){
		var menuNum = 0;
		var menuArr = [0,0,0,0];
		
		$(".mainMenuUl").hover(function(){
			menuArr[0]=1;
			console.log(menuArr);
			$(".subMenuWrap").slideDown("fast");
		},function(){
			menuArr[0] = 0;
			menuArr[1] = 1;
			console.log(menuArr);
			if(menuArr[3]==1){
				$(".subMenuWrap").slideUp("fast");
				menuArr=[0,0,0,0];
				console.log(menuArr);
			}
		});
		
		$(".subMenuWrap").hover(function(){
			menuArr[2]=1;
			console.log(menuArr);
		},function(){
			menuArr[3]=1;
			console.log(menuArr);
			if(menuArr[1] == 1){
				$(".subMenuWrap").slideUp("fast");
			}
		});
		
		/* $(".menu").hover(function(){
			
		},function(){
			$(".subMenuWrap").slideUp("fast");
		}); */
		
		var selectIndex=0;
		$(".subMenuUl").hover(function(){
			selectIndex=$(this).index();
			$(".mainMenuUl > li").eq(selectIndex).css("border-bottom","4px solid red");
		},function(){
			$(".mainMenuUl > li").eq(selectIndex).css("border","0");
		});
	});
	
	function subMenuDisplayFunc(state){
		if(state > 0){
			$(".subMenuWrap").slideDown("fast");
		}else if(state <= 0){
			$(".subMenuWrap").slideUp("fast");
		}
	}
</script>
<body>
	<div class="headerWrap">
		<div class="mainMenuWrap">
			<div class="mainLogo">
				<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
			</div>
			<ul class="mainMenuUl menu">
				<li>
					<a href="#none">태창소개</a>
				</li>
				<li>
					<a href="#none">개인회생</a>
				</li>
				<li>
					<a href="#none">개인파산</a>
				</li>
				<li>
					<a href="#none">민사</a>
				</li>
				<li>
					<a href="#none">자주하는질문</a>
				</li>
			</ul>
		</div><!-- mainMenuWrap end -->
		<div class="subMenuWrap menu">
			<div class="subMenuContentWrap">
				<div class="subMenuCallInfo">
					<p>개인회생/개인파산/민사 똑같다고 생각 마세요.</p>
					<p>여러분의 최고 파트너 <span id="bigtxt">태창</span>의 문을 두드리세요.</p>
					<h1>1877-0757</h1>
					<h1>053-745-1332</h1>
				</div><!-- subMenuCallInfo -->
				<div class="subMenuUlWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu01_1">인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_2">운영방침</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_3">오시는 길</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생이란</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_2">개인회생절차</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_3">개인회생서류</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu03_1">개인파산이란</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_2">개인파산절차</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_3">개인파산서류</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu04_1">민사소송이란</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_2">민사진행절차</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu05_1">개인회생질문</a></li>
						<li><a href="${pageContext.request.contextPath}/menu05_2">개인파산질문</a></li>
						<li><a href="${pageContext.request.contextPath}/menu05_3">민사질문</a></li>
					</ul>
				</div>
			</div><!-- subMenuContentWrap -->
		</div><!-- subMenuWrap -->
	</div><!-- headerWrap end -->
	<div class="mHeaderWrap">
		<jsp:include page="mHeader.jsp"></jsp:include>
	</div>
</body>