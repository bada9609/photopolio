<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
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

	<div class="contents">


		<ol>
			<h2>전화예약</h2>
			<ul style="list-style-type: square">

				<li>전화번호 02-0001-0000번으로 전화하시면 편리하게 진료예약을 도와드립니다.<br></li>
				<li>처음 진료예약을 하시는 (신환,초진) 분들의 자세한 질환 상담을 위하여＂진료상담간호사가 설명(상담)을
					해드리고 있습니다.<br>
				</li>
				<li>1,2차 의료기관에서 진료 후 상급종합병원으로 진료가 필요하다고 결정되어 요양급여의뢰서(진료의뢰서)를
					받으신 분들은 02-0001-0001으로 연락 주십시오 (평일: 오전 8시 ~ 오후 5시)<br>
				</li>

			</ul>
		</ol>
		<ol>
			<h2>온라인 예약</h2>
			<ul style="list-style-type: square">

				<li>홈닥터 서비스 및 온라인 진료예약을 도와드립니다.<br></li>
				<li>24시간 서비스 이용이 가능하며 온라인 진단서 발급도 가능합니다.<br></li>
				<a href="#">홈닥터 서비스 바로가기</a>
				<a href="#">온라인예약 바로가기</a>

			</ul>
		</ol>
		<ol>
			<h2>전화/ 온라인 예약 시 유의 사항</h2>
			<ul style="list-style-type: square">

				<li>예약 당일, 예약시간 10분 전까지 해당 진료과 간호 접수로 가서 예약상황을 확인하고 진료를 받으시면
					됩니다.</li>
				<li>진찰료는 진료 후 가까운 원무 접수, 수납창구에서 건강보험증(구의료보험증), 요양급여의뢰서(진료의뢰서)와
					같이 납부하시기 바랍니다.</li>
				<li>진료예약 취소는 예약 하루 전일까지 전화(02)000-0000번으로 연락 주시기 바랍니다.</li>
				<li>삼성서울병원 홈페이지와 모바일에서는 진료예약 변경의 오류를 최소화 하고자 진료예약 확인 및 취소만
					가능합니다.</li>
				<li>진료예약 사항을 e-mail/핸드폰을 통해 전송해 드리고 있사오니, 서비스를 원하시는 분은 가까운
					수납창구에 신청바랍니다.</li>

			</ul>
		</ol>
		<div class="section-heading">
			<ol>
				<h2 class="section-heading-title">외래 접수·수납 예약 및 진료시간</h2>
				<ul>
					<table class="table-default table-text-center">

						<tr>
							<th scope="col">접수•수납시간</th>
							<th scope="col">진료시간</th>
						</tr>

						<tr>
							<td>평 일 : 오전 8시 ~ 오후 7시 <br>본관2층 : 오전 7시 ~ 오후 5시<br>토요일
								: 오전 8시 ~ 오후 12시
							</td>
							<td>평 일 : 오전 9시 ~ 오후 4시 <br>토요일 : 오전 9시 ~ 오후 12시
							</td>
						</tr>

					</table>
				</ul>
			</ol>
		</div>

	</div>
	</div>

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