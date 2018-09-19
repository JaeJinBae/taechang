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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=3">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=0"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
	header{
		width:100%;
		height:100px;
		background: yellow;
		border-bottom:1px solid black;
	}
	section{
		width:100%;
		background: #d1d1d1;
	}
	footer{
		width:100%;
		height:100px;
		background: black;
	}
	.mainSlider{
		width:100%;
		height:600px;
		background: #033c60;
	}
	.contentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.content01{
		overflow:hidden;
		float:left;
	}
	.mainInfo{
		width:250px;
		height:300px;
		background: green;
		border:1px solid black;
		float:left;
	}
	.content02{
		float:right;
	}
	.questionBox{
		width:330px;
		height:50px;
		background: red;
		border-bottom:1px solid black;
	}
	.callInfo{
		width:330px;
		height:150px;
		background: blue;
	}
	.content03{
		clear:both;
		width:100%;
		height:400px;
		background: violet;
	}
</style>
</head>
<body>
	<header>
	
	</header>
	<section>
		<div class="mainSlider">
			
		</div>
		<div class="contentWrap">
			<div class="content01">
				<div class="mainInfo">
					
				</div>
				<div class="mainInfo">
					
				</div>
				<div class="mainInfo">
					
				</div>
			</div><!-- content01 end -->
			<div class="content02">
				<div class="questionBox">
				
				</div>
				<div class="questionBox">
				
				</div>
				<div class="questionBox">
				
				</div>
				<div class="callInfo">
				
				</div>
			</div><!-- content02 end -->
			<div class="content03">
			
			</div>
		</div><!-- contentWrap -->
	</section>
	<footer>
	
	</footer>
</body>
</html>