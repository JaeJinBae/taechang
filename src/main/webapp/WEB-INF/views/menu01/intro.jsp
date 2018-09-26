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
		background: yellow;
	}
	.sideMenu{
		float:left;
		width:200px;
		height:500px;
		background: gray;
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
			<div class="sideMenu">
			
			</div>
			<div class="content">
			
			</div>
		</div>
	</section>
	<footer>
	
	</footer>
</body>
</html>