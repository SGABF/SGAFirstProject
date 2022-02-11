<%@page import="nl.captcha.Captcha"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
`
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>회원가입 화면</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>


<style>
</style>
</head>
<body id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-success text-uppercase fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="Main.jsp">SGAProject</a>
		<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">

				<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="Main.jsp">Main</a></li>
				<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-body bg-opacity-25 text-dark text-center">
	<div class="container d-flex align-items-center flex-column">
		<!-- Masthead Avatar Image-->

		<!-- 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
		<div id="wrap">
			<br> <br> <b><font size="6">회원가입</font></b> <br> <br> <br>

			<form method="post" action="MemberJoinAction.do" name="userInfo" onsubmit="return checkValue();">

				<table>
					<tr>
						<td id="title">아이디</td>
						<td>
							<input type="text" name="id" id="id" maxlength="50" onkeydown="inputIdChk()"> <input type="button" value="중복확인" onclick="openIdChk()" class="btn btn-success btn-sm"> <input type="hidden" name="idDuplication" value="idUncheck">
					</tr>

					<tr>
						<td id="title">비밀번호</td>
						<td>
							<input type="password" name="password" id="password" maxlength="15">
						</td>
					</tr>

					<tr>
						<td id="title">비밀번호 확인</td>
						<td>
							<input type="password" name="password2" maxlength="15">
						</td>
					</tr>

					<tr>
						<td id="title">생일</td>
						<td>
							<input type="text" name="birth_yy" maxlength="8" placeholder="ex) 000101" />
						</td>
					</tr>

					<tr>
						<td id="title">이름</td>
						<td>
							<input type="text" name="name" maxlength="40">
						</td>
					</tr>
					<tr>
						<td id="title">닉네임</td>
						<td>
							<input type="text" name="nickname" maxlength="40">
						</td>
					</tr>
					<tr>
						<td id="title">이메일</td>
						<td>
							<input type="text" name="email_1" maxlength="30">@ <input type="text" name="email_2" maxlength="15" placeholder="" size="25">
						</td>
					</tr>

					<tr>
						<td id="title">휴대전화</td>
						<td>
							<input type="text" name="phone" placeholder="-없이 입력바랍니다." />
						</td>
					</tr>
					<tr>
						<td id="title">본인확인 질문</td>
						<td>
							<select name="me">
								<option value="">본인확인질문</option>
								<option value="01">보물 1호는?</option>
								<option value="02">내가 태어난 지역은?</option>
								<option value="03">졸업한 초등학교는?</option>
							</select>
							<input type="text" name="me" maxlength="15" placeholder="답변" size="25">
						</td>
					</tr>
				</table>
				<br>
			</form>
			<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
				<jsp:include page="index.jsp" /> <br>
			</div>
		</div>
		<div style="text-align: center;">
			<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
				<form action="login.jsp" method="post" onclick="return checkValue()">
					<button type="submit" id="check22" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">회원가입</button> <br/>
				</form>
			</div>
			<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
				<form action="welcomeForm.jsp" method="post">
					<button type="submit"  class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">취소</button> <br/>
				</form>

			</div>
		</div>



		<script type="text/javascript">
		const btn = document.querySelector('.check22');
		btn.disabled = false;
	
			// 회원가입 화면의 입력값들을 검사한다.
			function checkValue() {
				var form = document.userInfo;

				if (!form.id.value) {
					alert("아이디를 입력하세요.");
					return false;
				}
				if (!form.name.value) {
					alert("이름을 입력하세요.");
					return false;
				}

				if (!form.password.value) {
					alert("비밀번호를 입력하세요.");
					return false;
				}
				if (!form.password2.value) {
					alert("비밀번호확인을 입력하세요.");
					return false;
				}
				if (!form.birth_yy.value) {
					alert("년도를 입력하세요.");
					return false;
				}
				if (!form.email_1.value) {
					alert("메일 주소를 입력하세요.");
					return false;
				}

				if (!form.phone.value) {
					alert("전화번호를 입력하세요.");
					return false;
				}
				if (form.id2.value != "idCheck") {
					alert("아이디 중복체크를 해주세요.");
					return false;
				}
				if (!form.nickname.value) {
					alert("닉네임을 입력해주세요.");
					return false;
				}
				if (!form.me.value) {
					alert("본인확인 질문을 입력해주세요.");
					return false;
				}

				// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
				if (form.password.value != form.password2.value) {
					alert("비밀번호를 동일하게 입력하세요.");
					return false;
				}

				if (isNaN(form.birth_yy.value)) {
					alert("생일은 숫자만 입력가능합니다.");
					return false;
				}

				if (isNaN(form.phone.value)) {
					alert("전화번호는 - 제외한 숫자만 입력해주세요.");
					return false;
				}
			}

			// 취소 버튼 클릭시 첫화면으로 이동
			function goFirstForm() {
				location.href = "wecomeRealFome.jsp";
			}

			// 아이디 중복체크 화면open
			function openIdChk() {

				window.name = "parentForm";
				window
						.open("IdCheckForm.jsp", "chkForm",
								"width=500, height=300, resizable = no, scrollbars = no");
			}

			// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
			// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
			// 다시 중복체크를 하도록 한다.
			function inputIdChk() {
				document.userInfo.idDuplication.value = "idUncheck";
			}
		</script>

		<script type="text/javascript">
			// 취소 버튼 클릭시 첫화면으로 이동
			function goFirstForm() {
				location.href = "wecomeRealFome.jsp";
			}

			// 아이디 중복체크 화면open
			function openemail() {

				window.name = "parentForm";
				window
						.open("IdCheckForm2.jsp", "chkForm",
								"width=500, height=300, resizable = no, scrollbars = no");
			}

			// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
			// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
			// 다시 중복체크를 하도록 한다.
			function inputemail() {
				document.userInfo.idDuplication.value = "emailUncheck";
			}
		</script>
		<script type="text/javascript">
			window.onload = function() {
				//1. 아이디 중복 체크
				document.getElementById("id_request").onclick = function() {
					var gsWin = window.open("about:blank", "winName",
							"width=400,height=300,top=100,left=200");
					var fr = document.getElementById("server");
					fr.action = "idconfirm.jsp";
					fr.target = "winName";
					fr.submit();
				}
			}
			
			// Disable function
			jQuery.fn.extend({
			    disable: function(state) {
			        return this.each(function() {
			            this.disabled = state;
			        });
			    }
			});

		
		</script>
		
		
</body>
</html>
