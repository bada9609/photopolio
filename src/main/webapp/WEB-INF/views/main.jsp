<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="https://image.ibb.co/fOur3b/favicon.png" />
<meta name="theme-color" content="#1885ed">
<title>오호병원</title>
<!-- css 적용 (main, menu) -->
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/menu.css" rel="stylesheet">
<link href="resources/css/mainimage.css" rel="stylesheet">

</head>

<body>
	<%@ include file="main_top.jsp"%>

	<div class="col-md-12">
		<div class="site">
			<%
				if (session.getAttribute("p_id") != null) {
			%>
			<h1 class="site__title"><%=session.getAttribute("p_id")%>님! 오호 병원에 오신 것을 환영합니다 :)
			</h1>
			<%
				} else {
			%>
			<h1 class="site__title">오호 병원에 오신 것을 환영합니다 :)</h1>
			<%
				}
			%>
			<h2 class="site__subtitle">건강하세요 ^^;</h2>
			<!-- 슬라이드 -->
			<div class="section">
				<input type="radio" name="slide" id="slide01" checked> <input
					type="radio" name="slide" id="slide02"> <input type="radio"
					name="slide" id="slide03">
				<div class="slidewrap">

					<ul class="slidelist">
						<!-- 슬라이드 영역 -->
						<li class="slideitem"><a>
								<div class="textbox">
									<h3>코로나 조심</h3>
									<p>코로나 이이이이잉이잉.</p>
								</div> <img src="./resources/images/slide03.png">
						</a></li>
						<li class="slideitem"><a>

								<div class="textbox">
									<h3>두번째 슬라이드</h3>
									<p>두번째 슬라이드 입니다.</p>
								</div> <img src="./resources/images/slide01.png">
						</a></li>
						<li class="slideitem"><a>

								<div class="textbox">
									<h3>세번째 슬라이드</h3>
									<p>세번째 슬라이드 입니다.</p>
								</div> <img src="./resources/images/slide02.png">
						</a></li class="slideitem">

						<!-- 좌,우 슬라이드 버튼 -->
						<div class="slide-control">
							<div>
								<label for="slide03" class="left"></label> <label for="slide02"
									class="right"></label>
							</div>
							<div>
								<label for="slide01" class="left"></label> <label for="slide03"
									class="right"></label>
							</div>
							<div>
								<label for="slide02" class="left"></label> <label for="slide01"
									class="right"></label>
							</div>
						</div>

					</ul>
					<!-- 페이징 -->
					<ul class="slide-pagelist">
						<li><label for="slide01"></label></li>
						<li><label for="slide02"></label></li>
						<li><label for="slide03"></label></li>
					</ul>
				</div>


			</div>
			<br>
			<br>
			<br>
			<div class="site__box-link">
				<a class="btn btn--width" href="tpboard?page=1">온라인 진단 신청</a> <a
					class="btn btn--revert btn--width" href="appoint">방문 예약</a>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 로그인 후 아이디 넘겨주기 -->
	<form action="tpboard" method="post" >
		<input type="hidden" name="p_id" value="<%=session.getAttribute("p_id")%>">
	</form>

	<%@ include file="main_bottom.jsp"%>
	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>


</body>
</html>