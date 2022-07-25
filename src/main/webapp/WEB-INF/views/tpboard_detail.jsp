<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h2 style="text-align: center;">홈닥터 신청서</h2>
		<table border="1">
			<tr>
				<td>글번호 : ${data.tp_num }</td>
				<td>작성일 : ${data.tp_date }</td>

			</tr>
			<tr>
				<td>환자번호 : ${data.tp_pn }</td>
				<td>의사번호 : ${data.tp_dn }</td>

			</tr>
			<tr>
				<td>진료과 : ${data.d_class }</td>
				<td>담당의 : ${data.d_name }</td>
			</tr>
			<tr>
				<td>환자명 : ${data.p_name }</td>
				<td>생년월일 : ${data.p_birth }</td>
			</tr>
			<tr>
				<td>복용약 : ${data.tp_medicine }</td>
				<td>체온 : ${data.tp_tem }</td>
			</tr>
			<tr>
				<td colspan="2">제목 : ${data.tp_title }</td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="5" cols="50"
						readonly="readonly">${data.tp_content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="button" onclick="location.href='tpboard?page=1'" value="목록">
					<input type="button"
					onclick="location.href='delete?tp_num=${data.tp_num}&page=${page}'"
					value="삭제"></td>
			</tr>
			</tr>
		</table>
		<h2 style="text-align: center;">진단서</h2>
		<table border="1">
			<tr>
				<td>진단명: ${data.td_title }</td>
			</tr>
			<tr>
				<td>내원여부: ${data.td_inter }</td>
			</tr>
			<tr>
				<td>처방약 : ${data.td_medicine }</td>
			</tr>
			<tr>
				<td><textarea rows="5" cols="50" readonly="readonly">
				${data.td_content }
				</textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="button" onclick="location.href='tpboard?page=1'" value="목록"></td>
		</table>
		<br> <br>
	</form>
	<br>
	<br>
	<!-- 하단 필수항목 -->
	<%@ include file="main_bottom.jsp"%>
	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>