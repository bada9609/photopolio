<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/menu.css" rel="stylesheet">
<style>
ol {
	
	padding: 10px;
}

ol ul {
	background: rgb(243, 248, 252);
	padding: 5px;
	margin-left: 20px;
}


</style>
</head>
<body>
	<%@ include file="main_top.jsp"%>
	<ol>
		<h2>B1</h2>
		<ul> 주차장 <ol>
			<div>단면도 넣기</div>
		</ul> 
	</ol>
	
	<ol>
		<h2>1F</h2>
		<ul> 접수창구 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
		<ul> 카페, 식당, 편의점 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
	</ol>
	
	<ol>
		<h2>2F</h2>
		<ul> 소아과 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
		<ul> 내과 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
	</ol>
	
	<ol>
		<h2>3F</h2>
		<ul> 이비인후과 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
		<ul> 신경외과<ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
	</ol>
	
	<ol>
		<h2>4F</h2>
		<ul> 휴게실 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
		<ul> 입원실 <ol>
			<div>아마도 이미지 넣기</div>
		</ul> 
	</ol>


	<div class="dropdown">
		<button class="dropbtn">드롭다운 메뉴</button>
		<div class="dropdown-content">
			<a href="#">홈</a> <a href="#">회사소개</a> <a href="#">제품소개</a> <a
				href="#">오시는길</a>
		</div>
	</div>

	<%@ include file="main_bottom.jsp"%>
	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>