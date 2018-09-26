<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
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
		color:gray;
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
</style>
<script>
	$(function(){
		$(".mainMenuUl").hover(function(){
			/* $(".subMenuWrap").addClass("displayBlock"); */
			subMenuChk();
		},function(){
			/* subMenuChk(); */
		});
		
		$(".subMenuWrap").hover(function(){
			$(this).css("display","block");
		},function(){
			$(this).css("display","none");
		});
	});
	function subMenuChk(){
		var state=$(".subMenuWrap").css("display");
		subMenuDisplayFunc(state);
	}
	
	function subMenuDisplayFunc(state){
		if(state=="none"){
			$(".subMenuWrap").slideDown("fast");
		}else if(state=="block"){
			$(".subMenuWrap").slideUp("fast");
		}
	}
</script>
<body>
	<div class="headerWrap">
		<div class="mainMenuWrap">
			<div class="mainLogo">
				<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/testLogo2.png"></a>
			</div>
			<ul class="mainMenuUl">
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
		<div class="subMenuWrap">
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
						<li><a href="">운영방침</a></li>
						<li><a href="">오시는 길</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="">개인회생이란</a></li>
						<li><a href="">개인회생절차</a></li>
						<li><a href="">개인회생서류</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="">개인파산이란</a></li>
						<li><a href="">개인파산절차</a></li>
						<li><a href="">개인파산서류</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="">민사소송이란</a></li>
						<li><a href="">민사진행절차</a></li>
					</ul>
					<ul class="subMenuUl">
						<li><a href="">개인회생질문</a></li>
						<li><a href="">개인파산질문</a></li>
						<li><a href="">민사질문</a></li>
					</ul>
				</div>
			</div><!-- subMenuContentWrap -->
		</div><!-- subMenuWrap -->
	</div><!-- headerWrap end -->
</body>