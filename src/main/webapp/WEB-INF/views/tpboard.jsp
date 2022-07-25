<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>
<!-- css 필수항목 -->
  <link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/menu.css" rel="stylesheet">

<link href="resources/css/homedoctor.css" rel="stylesheet">
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
</head>
<body>
<%@ include file="main_top.jsp" %>


<table border="1" style="border-color: #1f4568;">
  <tr>
  	<td>
  		<a href="tpboard?page=1">최근목록</a>&nbsp;
  		<a href="tpboard_insert">홈닥터 신청</a>
  	</td>
  </tr>
</table>
<table border="1" style="border-color: #1f4568;">
  <tr>
  	<th>글번호</th><th>환자번호</th><th>제목</th><th>작성일</th><th>상세보기</th>
  </tr>
  
  <c:forEach var="b" items="${data}">
  <tr>
  	<td style="text-align: center;">${b.tp_num }</td>
  	<td style="text-align: center;">${b.tp_pn }</td>
  	<td>${b.tp_title }</td>
  	<td style="text-align: center;">${b.tp_date }</td>
  	<td style="text-align: center;">${tab}<a href="tpboard_detail?tp_num=${b.tp_num}&page=${page}">확인</a></td>
  </tr>
   </c:forEach>

   <!-- paging -->
  <tr style="text-align: center;">
    <td colspan="5">
    <c:forEach var="i" begin="1" end="${pageSu }">
      <c:if test="${i == page }">
      	<b>${i }</b>
      </c:if>
      <c:if test="${i != page }">
      	<a href="tpboard?page=${i}">${i}</a>
      </c:if>
    </c:forEach>
    </td>
  </tr>
  
  <!-- search -->
  <tr style="text-align: center;">
  	<td colspan="5">
  	<br><br>
  	<form action="search" method="post">
  		<select name="searchName">
  			<option value="title" selected="selected">글제목</option>
  			<option value="name">작성자</option> 
  		</select>
  		<input type="text" name="searchValue">
  		<input type="submit" value="검색">
  	</form>
  	</td>
  </tr>
</table>
<br>
<br>
<br>
 <!-- 하단 필수항목 -->
<%@ include file="main_bottom.jsp" %>

<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>