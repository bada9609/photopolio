<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/service.css" rel="stylesheet">
</head>
<body>
<%@ include file="main_top.jsp" %>
<br>
<div float:right;>
<h1>진단서</h1>
<table border="1";>
	<tr>
		<th>진단명</th>
			<td>
			<input type="text" name="td_title">
			</td>
	</tr>
	<tr>
		<th>내원여부</th>
			<td>
			<input type="text" name="td_">
			</td>
	</tr>
	<tr>
		<th>증상</th>
			<td>
			<textarea rows="40" cols="80" name="cont"></textarea>
			</td>
	</tr>
	<tr>
		<td>
		<input type="submit" value="등록">
		</td>
	</tr>
</table>
</div>

</div>

<div float:left>
<table border="1">
	<tr>
		<th>진료과</th>
			<td>
			<input type="text" name="d_class">
			</td>
		<th>담당의</th>
			<td>
			<input type="text" name="d_name">
			</td>
	</tr>
	<tr>
		<th>환자명</th>
			<td>
			<input type="text" name="p_name">
			</td>
		<th>생년월일</th>
			<td>
			<input type="text" name="p_birth">
			</td>
	</tr>
	<tr>
		<th>복용약</th>
			<td>
			<input type="text" name="tp_medicine">
			</td>
		<th>체온</th>
			<td>
			<input type="text" name="tp_tem">
			</td>
	</tr>
	<tr>
		<th>증상</th>
			<td>
			<textarea rows="40" cols="80" name="cont"></textarea>
			</td>
	</tr>
</table>

</div>
<br>
<%@ include file="main_bottom.jsp" %>
</body>
</html>