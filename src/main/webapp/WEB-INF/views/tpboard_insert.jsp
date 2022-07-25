<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<!-- css 필수항목 -->
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/menu.css" rel="stylesheet">

<link href="resources/css/homedoctor.css" rel="stylesheet">
</head>
<body>
	<%@ include file="main_top.jsp"%>
	<br>
	<form action="insert" method="post">
		<input type="hidden" name="td_title" value="발급받은 진단서에서 확인하십시오">
		<input type="hidden" name="td_inter" value="발급받은 진단서에서 확인하십시오">
		<input type="hidden" name="td_content" value="발급받은 진단서에서 확인하십시오">
		<input type="hidden" name="td_medicine" value="발급받은 진단서에서 확인하십시오">
		<input type="hidden" name="td_check" value="발급하기">

		<h2 style="text-align: center;">홈닥터 신청서</h2>
		<table border="1">
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" id="title" name="tp_title"
					placeholder="ex) 두통 문의"></td>
			</tr>
			<tr>
				<th>환자번호</th>
				<td><input type="text" name="tp_pn"></td>
				<!-- 로그인한 환자 번호 자동으로 들어가도록 나중에 수정해야함 -->
				<th>의사번호</th>
				<td>
						<input type="text" name="tp_dn" list="browser" placeholder="선택">
						<datalist id="browser">
							<option value="1" label="김의사-내과"></option>
							<option value="2" label="이의사-내과"></option>
							<option value="3" label="임의사-외과"></option>
							<option value="4" label="나의사-외과"></option>
							<option value="5" label="박의사-신경과"></option>
							<option value="6" label="남의사-신경과"></option>
							<option value="7" label="심의사-정형외과"></option>
							<option value="8" label="사의사-정형외과"></option>
						</datalist>
				</td>
				<!-- 옆에 alert로 설명덧붙이기 추가 필요 -->
			</tr>
			<tr>
				<th>진료과</th>
				<td>
						<select name="searchClass">
							<option value="select" selected="selected" name="d_class">선택</option>
							<option value="class">내과</option>
							<option value="class">외과</option>
							<option value="class">신경과</option>
							<option value="class">정형외과</option>
						</select>
				</td>
				<th>담당의</th>
				<td>
						<select name="searchName">
							<option value="select" selected="selected" name="d_name">선택</option>
							<option value="name">김의사</option>
							<option value="name">이의사</option>
							<option value="name">임의사</option>
							<option value="name">나의사</option>
							<option value="name">박의사</option>
							<option value="name">남의사</option>
							<option value="name">심의사</option>
							<option value="name">사의사</option>
						</select>
				</td>
			</tr>
			<tr>
				<th>환자명</th>
				<td><input type="text" name="p_name"></td>
				<!-- 로그인한 환자 이름 자동으로 들어가도록 나중에 수정해야함 -->
				<th>생년월일</th>
				<td><input type="text" name="p_birth"></td>
				<!-- 로그인한 환자 생년월일 자동으로 들어가도록 나중에 수정해야함 -->
			</tr>
			<tr>
				<th>복용약</th>
				<td><input type="text" name="tp_medicine"
					placeholder="현재 복용중이신 약"></td>
				<th>체온</th>
				<td><input type="text" name="tp_tem" placeholder="ex) 36.5"></td>
			</tr>
			<tr>
				<th>증상</th>
				<td colspan="3"><textarea rows="40" cols="80" name="tp_content"
						placeholder="ex) 머리가 어지럽고 속이 답답하며 메슥거립니다."></textarea></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;"><input
					type="hidden" name="td_dn" value="${dto.td_dn }"> <input
					type="hidden" name="td_pn" value="${dto.td_pn }"> <input
					type="submit" value="등록"> <input type="button" value="목록"
					onclick="location.href='tpboard?page=1'"></td>
			</tr>
		</table>
	</form>

	<br>
	<!-- 하단 필수항목 -->
	<%@ include file="main_bottom.jsp"%>

	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>