<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	.footerWrap{
		width:350px;
		margin:0 auto;
		padding: 20px 3px;
	}
	.leftFInfo{
		width:45%;
		margin:0 auto;
	}
	.leftFInfo > img{
		width:100%;
	}
	.rightFInfo{
		width:100%;
		margin:0 auto;
		margin-top:20px;
	}
	.rightFInfo > p{
		color: #f1f1f1;
		font-size:13px;
	}
}
@media only screen and (min-width:767px) and (max-width:1099px){
	.footerWrap{
		width:767px;
		margin:0 auto;
		overflow:hidden;
		padding: 20px 5px;
	}
	.leftFInfo{
		float:left;
	}
	.rightFInfo{
		float:right;
	}
	.rightFInfo > p{
		color: #f1f1f1;
		font-size:14px;
	}
}
@media only screen and (min-width:1100px){
	.footerWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		padding: 20px 5px;
	}
	.leftFInfo{
		float:left;
	}
	.rightFInfo{
		float:right;
	}
	.rightFInfo > p{
		color: #f1f1f1;
		font-size:14px;
	}
}
</style>
<div class="footerWrap">
	<div class="leftFInfo">
		<img src="${pageContext.request.contextPath}/resources/images/bottomLogo.png">
	</div>
	<div class="rightFInfo">
		<p>상호 : 법무사태창분사무소 / 사업자등록번호 : 502-05-53556</p>
		<p>대표 : 김만출 / 전화 : 053-745-1332 / 이메일 : tc119@naver.com</p>
		<p>소재지 : 대구광역시 수성구 동대구로 355, 307호(범어동, 범어빌딩)</p>
		<p>Copyright(c)태창법무사사무소. All Rights Reserved.</p>
	</div>
</div>
