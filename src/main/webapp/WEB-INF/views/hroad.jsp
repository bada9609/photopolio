<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<link href="resources/css/main.css" rel="stylesheet">
<style>
ol {
	background: #ebeded;
	padding: 10px;
}

ol ul {
	background: #d7d9d9;
	padding: 5px;
	margin-left: 20px;
}
</style>

</head>
<body>
<%@ include file="main_top.jsp" %>
   
		
		<div>
		<img src="./resources/images/road.png" alt="" usemap="#map"/>
			<map name="map">
			<area href="https://map.naver.com/v5/directions/-/14140717.61280403,4508886.673033226,KIC%EC%BA%A0%ED%8D%BC%EC%8A%A4,37812238,PLACE_POI/-/transit?c=14140250.6798170,4508886.5337430,15,0,0,0,dh"  shape="rect" coords="100,404,412,464" target="_blank" alt="빠른길찾기" />
			</map>
		</div>	
	

<%@ include file="main_bottom.jsp" %>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>