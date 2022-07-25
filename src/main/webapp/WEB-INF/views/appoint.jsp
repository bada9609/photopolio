<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>오호병원</title>
<!-- css 필수항목 -->
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/menu.css" rel="stylesheet">
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
<!-- 기본 BASE -->    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

//의사, 과명 스크립트
$(document).ready(function() {  
	   $("#ap_showDoctor").empty();
	   $("#ap_showbuser").change(doctorshow);
	   $("#ap_dday").change(dayselect);
	   $("#ap_dtime").change(timeselect);
	   $(document).change(patient);
	   $("#submit").click(function(a){ // 빈칸 경고메시지
			if($("#ap_pname").val()==""){
				alert("이름을 입력해주세요");
				return false;
			} else {
				$("#ap_pname").focus(); 
			}
			if($("#ap_tell").val()==""){
				alert("연락처를 입력해주세요");
				return false;
			} else { 
				$("#ap_tell").focus(); 
			}
			if($("#ap_pbirth").val()==""){
				alert("생년월일을 입력해주세요");
				return false;
			} else {  
				$("#ap_pbirth").focus(); 
			}
			if($("#ap_buser_show").val()==""){
				alert("진료과를 선택해주세요");
				return false;
			} else {  
				$("#ap_buser_show").focus();
			}
			if($("#ap_doctor_show").val()==""){
				alert("진료의를 선택해주세요");
				return false;
			} else {  
				$("#ap_doctor_show").focus(); 
			}
			if($("#ap_doctor_day").val()==""){
				alert("진료일을 선택해주세요"); 
				return false;
			} else { 
				$("#ap_doctor_day").focus(); 
			}
			if($("#ap_doctor_time").val()==""){
				alert("진료시간을 선택해주세요");
				return false;
			} else {  
				$("#ap_doctor_time").focus(); 
			}
		});
});
	
function doctorshow(c_class){ //과 선택후 의사 보여주기
	$("#ap_showDoctor").empty();
	var show = $("#ap_showbuser option:selected").val();
	document.getElementById("ap_buser_show").value = show; // 과선택시 밑 화면 출력
	$.ajax({
	      type:"get",
	      url:"doctor",
	      data:{"c_class":$("#ap_showbuser option:selected").val()},
	      dataType:"json",
	      success:function(doctors){
	        var list = doctors.datas;
	       	var str ="<option name='select' value = '선택하세요'>"+"선택하세요"+"</option>";
	         $(list).each(function(idx, objArr){
	        	 str += "<option value= '"+objArr.d_name+"'>"+objArr["d_name"]+ "</option>";
	         });
				$("#ap_showDoctor").append(str);
				$("#ap_showDoctor").change(doctorselect); // 의사선택시 밑 화면 출력
	
	      },
	      error:function(){
	         $("#ap_showDoctor").text("에러발생 "); 
	      }
			  
	   });
}


function doctorselect(d_name){// 의사선택시 밑 화면 출력 and 의사번호 불러오기
	$.ajax({
	      type:"get",
	      url:"doctor_no",
	      data:{"d_name":$("#ap_showDoctor> option:selected").val()},
	      dataType:"json",
	      success:function(doctorsnum){
	        var list = doctorsnum.ddatas;
	         $(list).each(function(idx, objArr){
	        	 $("#ap_dno").val(objArr.d_number);
	        	 var show5 = $("#ap_showDoctor> option:selected").val();
	        	 document.getElementById("ap_doctor_show").value = show5;
	         });
	      },
	      error:function(){
	         $("#ap_dno").text("에러발생 "); 
	      }
	});
}


function dayselect(){// 예약일 설정시 밑 화면 출력
	//alert("c");
	var show3 = $("#ap_dday").val();
	document.getElementById("ap_doctor_day").value = show3;

}
function timeselect(){// 시간 출력
	var show4 = $("#ap_dtime").val();
	document.getElementById("ap_doctor_time").value = show4;
}



</script>
</head>
<body>
<%@ include file="main_top.jsp" %>
<br><br><br><br><br><br><br><br><br><br>
<table style="align-content: center; margin-left: auto; margin-right: auto;">
<tr>
	<td align="center">
		<form action="appinsert" method="post">
			<table border="1">
				<tr align="center" style="background-color: #556677">
					<td colspan="5">
					<b style="color: #FFFFFF">예약하기</b>
					</td>
				</tr>
				
				<tr>			
					<td>진료과
					<select id="ap_showbuser" name="ap_showbuser">
						<option name="first" value="0">선택하세요</option>
						<c:forEach var="b" items="${classdatas}">
						<option name="b_select" id="b_select" value="${b.c_class}">${b.c_class}</option>
						</c:forEach>
					</select>
					</td>
					
					<!-- 해결해야하는 문제 -->
					<td>담당의
					<select id="ap_showDoctor" name="ap_showDoctor">
					</select>
					</td>
					
					<td>날짜선택
						<input type="date" id="ap_dday" name="ap_dday" min="2020-10-16">
					</td>
					
					<td>진료시간
						<input type="time" id="ap_dtime" name="ap_dtime" value="09:00:00"min="09:00:00" max="18:00:00">
					</td>
				</tr>
		
				<tr><!-- submit 할때 DB로 보내질 친구들 -->
					<td>환자이름<input type="text" readonly name="ap_pname" id="ap_pname" size="15" value="${pdata.getP_name()}" ></td> 
					<td>연락처<input type="text" readonly name="ap_tell" id="ap_tell" size="15" value="${pdata.getP_tel() }"></td>
					<td>생년월일<input type="date" readonly name="ap_pbirth" id="ap_pbirth" max="2020-10-16" value="${pdata.getP_birth() }"></td>
				</tr>
				
				<tr><!-- submit 할때 DB로 보내질 친구들 -->
					<td>진료과<input type="text" name="ap_buser_show" id="ap_buser_show" readonly></td> 
					<td>담당의<input type="text" name="ap_doctor_show" id="ap_doctor_show" ></td> 
					<td>진료일<input type="text" name="ap_doctor_day" id="ap_doctor_day" readonly></td>
					<td>예약시간<input type="text" name="ap_doctor_time" id="ap_doctor_time" readonly></td>
					
				</tr>
				<tr>
					<td colspan="4" style="text-align: center;">
						환자번호 : <input type="text" name="ap_pno" id="ap_pno" value="${pdata.getP_number()}">
						의사번호 : <input type="text" name="ap_dno" id="ap_dno" >
						<input type="submit" id="submit" value="예약하기">
						<input type="button" value="목록" onclick="location.href='appoint_list'">
					</td>	
				</tr>	
		</table>
	</form>
</td>
</tr>
</table>	

<br><br><br><br><br><br><br><br><br><br><br>
<!-- 하단 필수항목 -->
<%@ include file="main_bottom.jsp" %>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>