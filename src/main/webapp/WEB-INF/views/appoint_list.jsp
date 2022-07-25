<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%
 if(session.getAttribute("p_id") == null) {
	 %>
	 <script type="text/javascript">
	 alert("로그인 후 이용할 수 있습니다!");
	 window.location.href = "login";
	 </script>
	 <%
 }
%>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/service.css" rel="stylesheet">

</head>


<body>
	<%@ include file="main_top.jsp"%>
	<div class="inner-wrap">
		<hr>
		<table border="1" style="border-color: #1f4568;">
			<tr><th>등록일</th><th>예약 선택일</th><th>예약 시간</th><th>진료과</th><th>진료의</th><th>예약자명</th><th>예약상태</th></tr>
			<c:forEach var="al" items="${apdata }">
			<tr>
			<td>${al.ap_date}</td>
			<td>${al.ap_doctor_day}
			<td>${al.ap_doctor_time}
			<td>${al.ap_buser_show }</td>
			<td>${al.ap_doctor_show}</td>
			<td>${al.ap_pname }</td>
			<c:set var="state" value="${al.ap_state}" />
			<td>
				<c:if test="${state eq '1'}">
					예약 대기 중 
				</c:if>
				<c:if test="${state eq '2'}">
					예약 확인
				</c:if>
				<c:if test="${state eq '3'}">
					예약 취소
				</c:if>
			</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	

	<%@ include file="main_bottom.jsp"%> 
	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>

</html>