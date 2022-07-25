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
	<%@ include file="dmain_top.jsp"%>
	<br>
	<form action="reply" method="post">
		<input type="hidden" name="page" value="${page}"> <input
			type="hidden" name="d_class" value="${data.d_class }"> <input
			type="hidden" name="d_name" value="${data.d_name }"> <input
			type="hidden" name="p_name" value="${data.p_name }"> <input
			type="hidden" name="p_birth" value="${data.p_birth }"> <input
			type="hidden" name="tp_medicine" value="${data.tp_medicine }">
		<input type="hidden" name="tp_tem" value="${data.tp_tem }"> <input
			type="hidden" name="tp_content" value="${data.tp_content }">
			<input type="hidden" name="tp_pn" value="${data.tp_pn }">
			<input type="hidden" name="tp_dn" value="${data.tp_dn }">
			<input type="hidden" name="td_num" value="${data.tp_num }" readonly="readonly">
			<input type="hidden" name="td_check" value="발급완료">
			
			
			<input type="hidden" name="gnum" value="${data.gnum }">
			<input type="hidden" name="onum" value="${data.onum }">
			
			<h2 style="text-align: center;">증상</h2>
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
					type="button" onclick="location.href='tpboard?page=1'" value="목록"></td>
			</tr>
		</table>

		<table border="1">
			<h1 style="text-align: center;">진단서</h1>
			<tr>
				<th>제목</th>
				<td><input type="text" name="tp_title" readonly="readonly"
					value="&nbsp;&nbsp;&nbsp;<b>▶[진단서 발급완료]:<b>${data.tp_title }"></td>
			</tr>
			<tr>
				<th>진단명</th>
				<td><input type="text" name="td_title"></td>
			</tr>
			<tr>
				<th>내원여부</th>
				<td><input type="text" name="td_inter"></td>
			</tr>
			<tr>
				<th>처방약</th>
				<td><input type="text" name="td_medicine"></td>
			</tr>
			<tr>
				<th>진단내용</th>
				<td><textarea rows="40" cols="60" name="td_content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="등록"> <input type="button" value="목록"
					onclick="location.href='tdboard?page=1'"></td>
			</tr>
		</table>

	</form>

	<br>
	<!-- 하단 필수항목 -->
	<%@ include file="dmain_bottom.jsp"%>

	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>