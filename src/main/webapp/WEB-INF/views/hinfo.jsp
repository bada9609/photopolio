<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">	
	/* banner */
	.banner {position: relative; width: 340px; height: 210px; top: 50px;  margin:0 auto; padding:0; overflow: hidden;}
	.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	.banner ul li {float: left; width: 340px; height: 210px; margin:0; padding:0;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script language="JavaScript">
<!--
	$(document).ready(function() {
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	}); 
//-->  
</script>
<meta charset="UTF-8">
<title>오호병원</title>
<link href="resources/css/main.css" rel="stylesheet">

</head>
<body>
<%@ include file="main_top.jsp" %>

<div class="contents">

		<h3>병원사진시바러ㅏ시바릿비라시시발시발비삽ㄹ비삽립삽립삽리밧비랍십라ㅣ시발
		병원사진시바러ㅏ시바릿비라시시발시발비삽ㄹ비삽립삽립삽리밧비랍십라ㅣ시발
		병원사진시바러ㅏ시바릿비라시시발시발비삽ㄹ비삽립삽립삽리밧비랍십라ㅣ시발
		병원사진시바러ㅏ시바릿비라시시발시발비삽ㄹ비삽립삽립삽리밧비랍십라ㅣ시발
		
		 </h3>

		<div class="banner">
			<ul>
				<li><img src="./resources/images/hospital.png" width="340" height="210px"></li>
				<li><img src="./resources/images/logo.jpg" width="340" height="210px"></li>
				<li><img src="./resources/images/mes.GIF" width="340" height="210px"></li>
				<li><img src="./resources/images/slide02.jpg" width="340" height="210px"></li>
				<li><img src="./resources/images/slide03.jpg" width="340" height="210px"></li>
			</ul>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br>
<%@ include file="main_bottom.jsp" %>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>