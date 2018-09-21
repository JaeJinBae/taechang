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
	
</style>
<script>
	$(function(){
		
	});
	
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
					<div class="subMenuWrap">
						<ul class="subMenuUl">
							<li><a href="">인사말</a></li>
							<li><a href="">운영방침</a></li>
							<li><a href="">오시는 길</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#none">개인회생</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
						<li><a href="">개인회생이란</a></li>
						<li><a href="">개인회생절차</a></li>
						<li><a href="">개인회생서류</a></li>
					</ul>
					</div>
				</li>
				<li>
					<a href="#none">개인파산</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
						<li><a href="">개인파산이란</a></li>
						<li><a href="">개인파산절차</a></li>
						<li><a href="">개인파산서류</a></li>
					</ul>
					</div>
				</li>
				<li>
					<a href="#none">민사</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
						<li><a href="">민사소송이란</a></li>
						<li><a href="">민사진행절차</a></li>
					</ul>
					</div>
				</li>
				<li>
					<a href="#none">자주하는질문</a>
					<div class="subMenuWrap">
						<ul class="subMenuUl">
						<li><a href="">개인회생질문</a></li>
						<li><a href="">개인파산질문</a></li>
						<li><a href="">민사질문</a></li>
					</ul>
					</div>
				</li>
			</ul>
		</div><!-- mainMenuWrap end -->
	</div><!-- headerWrap end -->
</body>