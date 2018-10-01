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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
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
	.topImg{
		width:100%;
		height:350px;
		background: green;
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
	}
	.callInfo{
		width:100%;
		border:1px solid lightgray;
		padding:15px;
		margin-top:20px;
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
	.content{ 
		float:right;
		width:870px;
		height:800px;
		background: blue;
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="topImg">
		
		</div>
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<div class="sideMenu">
					<h3>태창소개</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/">인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/">운영방침</a></li>
						<li><a href="${pageContext.request.contextPath}/">오시는 길</a></li>
						<li><a href="${pageContext.request.contextPath}/">개인회생서류</a></li>
					</ul>
				</div><!-- sideMenuUl end -->
				<div class="callInfo">
					<h4 class="callInfoTitle" id="callInfoTitle">상담센터</h4>
					<h3>1877 - 0757</h3>
					<h3 class="secondChild">053-745-1332</h3>
					<h5>Fax. 053-751-1696</h5>
					<h5>E-mail. tc119@naver.com</h5>
					<h4 class="callInfoTitle">운영시간</h4>
					<h5>AM 09:00 ~ PM 06:00</h5>
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="content">
			
			</div>
		</div>
	</section>
	<footer>
	
	</footer>
</body>
</html>