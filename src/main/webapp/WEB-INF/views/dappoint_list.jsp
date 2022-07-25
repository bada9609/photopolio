<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>오호병원</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/service.css" rel="stylesheet">
<%
 if(session.getAttribute("d_id") == null) {
	 %>
	 <script type="text/javascript">
	 alert("로그인 후 이용할 수 있습니다!");
	 window.location.href = "login";
	 </script>
	 <%
 }
	 
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
</head>


<body>
	<%@ include file="dmain_top.jsp"%>
	<input type="hidden" id="ap_num" value="${al.ap_num}"> <!-- 번호불러오는 친구여서 아무곳이나 있어도 좋아요 -->
	<div class="inner-wrap">
		<hr>
		<table border="1" style="border-color: #1f4568;">
			<tr><th>예약등록일</th><th>예약자명</th><th>예약자전화번호</th><th>예약자생년월일</th><th>예약일</th><th>예약시간</th><th>예약상태</th></tr>
			<c:forEach var="al" items="${apdata }">
			<tr>
			<td>${al.ap_date }</td>
			<td>${al.ap_pname }</td>
			<td>${al.ap_tell }</td>
			<td>${al.ap_pbirth }</td>
			<td>${al.ap_doctor_day }</td>
			<td>${al.ap_doctor_time }</td>
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
			<td><a href="dappoint_up?ap_num=${al.ap_num}">수정</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	

	<%@ include file="dmain_bottom.jsp"%> 
	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>

</html>