<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호병원</title>

<!-- css 필수항목 -->
<link href="resources/css/login.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>오호병원</title>

</head>
<style>
#wrapper {
	border: 2px solid gray;
	border-radius: 5px;;
	width: 500px;
	height: 660px;
	margin: auto;
}

.title {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: black;
	margin: 20px 0px 20px 0px;
}

label {
	width: 95px;
	display: inline-block;
	text-align: right;
	font-size: 13px;
}

input {
	margin: 3px 5px;
	border-radius: 3px;
	background-color: transparent;
	border: 1px solid darkgray;
	height: 20px;
	outline: none;
}

#signup {
	text-align: center;
	margin: 5px;
}

input[type=button], input[type=reset] {
	border: 1px solid salmon;
	border-radius: 3px;
	background-color: transparent;
	margin: 0px;
	height: 24px;
	color: salmon;
}

input[type=button]:hover, input[type=reset]:hover {
	background-color: salmon;
	transition-duration: 1s;
	color: white;
	outline: none;
}

#roadAddress, #detailAddress {
	width: 280px;
}

.regex {
	font-size: 12px;
	text-align: center;
}
</style>
<body>
	<!-- 상단 필수항목 -->
	<%@ include file="main_top.jsp"%>


	<br>
	<form action="patientinsert" method="POST" id="signform">
		<div id="wrapper">
			<div class="title">회원 가입 정보 입력</div>

			<label for="id">아이디</label> <input type="text" id="p_id" name="p_id"
				placeholder="ID">
			<div class="id regex"></div>



			<label for="pw">비밀번호</label> <input type="password" id="p_pw"
				name="p_pw" placeholder="PASSWORD">
			<div class="pw regex"></div>



			<label for="p_name">이름</label> <input type="text" id="p_name"
				name="p_name" placeholder="Name">
			<div class="name regex"></div>


			<label for="p_birth">생년월일</label> <input type="tel" id="p_birth"
				name="p_birth" placeholder="ex) 19990101">
			<div class="birth regex"></div>


			<label for="p_email">이메일 주소</label> <input type="email" id="p_email"
				name="p_email" placeholder="E-mail">
			<div class="email regex"></div>

			<label for="p_tel">휴대폰 번호</label> <input type="tel" id="p_tel"
				name="p_tel" placeholder="('-'없이 번호만 입력해주세요)">
			<div class="phone regex"></div>


			<label for="p_gen">성별 </label> <select id="p_gen" name="p_gen">
				<option name="p_gen1" value="남자">남</option>
				<option name="p_gen2" value="여자">여</option>
			</select> <br> <label>주소: </label> <input style="width: 60%;"
				placeholder="시,구,동까지 입력 " name="p_addr" id="p_addr" type="text">

			<br> <label for="p_height">키 입력</label> <input type="text"
				id="p_height" name="p_height">cm <br> <label
				for="p_weight">몸무게 입력</label> <input type="text" id="p_weight"
				name="p_weight">kg <br> <label> 비고사항: </label>
			<textarea rows="10" cols="50" id="p_etc" name="p_etc"
				style="margin-left: 10%"></textarea>
			<div id="signup">
				<input type="button" name="signup" value="회원가입" id="signupbtn">
			</div>
		</div>

	</form>

	<script>
		$(function() {
			

			//비밀번호 유효성검사
			$("#p_pw").on("input", function() {
				var regex = /^[A-Za-z\d]{3,12}$/;
				var result = regex.exec($("#p_pw").val())

				if (result != null) {
					$(".pw.regex").html("");
				} else {
					$(".pw.regex").html("영어대소문자,숫자 3-11자리");
					$(".pw.regex").css("color", "red")
				}
			});

			//이름 유효성검사
			$("#p_name").on("input", function() {
				var regex = /[가-힣]{2,}/;
				var result = regex.exec($("#p_name").val());

				if (result != null) {
					$(".name.regex").html("");
				} else {
					$(".name.regex").html("한글만 입력 가능합니다.");
				}

			})

			//전화번호 유효성검사
			$("#p_tel").on("input", function() {
				var regex = /^01\d\d{3,4}\d{4}$/;
				var result = regex.exec($("#p_tel").val());

				if (result != null) {
					$(".phone.regex").html("");
				} else {
					$(".phone.regex").html("올바른 번호가 아닙니다");
				}

			})

			//email유효성 검사
			$("#p_email").on("input", function() {
				var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
				var result = regex.exec($("#p_email").val());

				if (result != null) {
					$(".email.regex").html("");
				} else {
					$(".email.regex").html("올바른 이메일이 아닙니다");
				}
			})
			//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
			$("#signupbtn").on("click", function() {
				var id = $("#p_id").val();
				var pw = $("#p_pw").val();
				var name = $("#p_name").val();
				var phone = $("#p_tel").val();
				var email = $("#p_email").val();

				var idregex = /^[a-z][a-z\d]{4,11}$/;
		
				var nameregex = /[가-힣]{2,}/;
				var phoneregex = /^01\d\d{3,4}\d{4}$/;
				var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;

				var idregex = idregex.exec(id);
				if (idregex == null) {
					alert("아이디양식을 다시 확인해주세요");
					return;
				}
			
				var nameregex = nameregex.exec(name);
				if (nameregex == null) {
					alert("이름양식을 다시 확인해주세요");
					retrun;
				}
				var phoneregex = phoneregex.exec(phone);
				if (phoneregex == null) {
					alert("핸드폰번호양식을 다시 확인해주세요");
					retrun;
				}
				var emailregex = emailregex.exec(email);
				if (emailregex == null) {
					alert("이메일양식을 다시 확인해주세요");
					retrun;
				}

				//빈칸 없을 때 제출.
				$("#signform").submit();

			})
		})
	</script>

	<!-- 하단 필수항목 -->
	<%@ include file="main_bottom.jsp"%>

	<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/menu.js"></script>
</body>
</html>