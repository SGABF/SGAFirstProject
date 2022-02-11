<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String nickName = (String) session.getAttribute("nickName");
	String phone = (String) session.getAttribute("phone");
	String email = (String) session.getAttribute("email");
	String birth = (String) session.getAttribute("birth");
	int question = (Integer) session.getAttribute("question");
	String answer = (String) session.getAttribute("answer");
%>
<!DOCTYPE html>
<html>
<title>회원정보 수정</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Favicon-- >
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<style type="text/css">
h1 {
	text-align: center;
}

p {
	text-size: 40px;
	font-weight: bold;
	padding: 15px;
}

.btn-group {
	margin: auto;
	display: block;
}

label {
	display: block;
}

td {
	text-align: left;
}
</style>
<head>

</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-success text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="Main.jsp">SGAProject</a>
			<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-black rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			<p>회원정보 수정</p>
			<div>
				<br>
				<table>
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" name="id" id="id" disabled="disabled" value="<%=id%>">
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td>
							<input type="password" name="password" id="password">
						</td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>비밀번호 확인</td>
						<td>
							<input type="password" name="uPassword" id="m_password">
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>이름</td>
						<td>
							<input type="text" name="name" id="name" value="<%=name%>">
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>
							<input type="text" name="nickName" maxlength="20" value="<%=nickName%>">
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone" maxlength="11" placeholder="-없이 ex)01012345678 입력바랍니다." value="<%=phone%>">
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
							<input type="text" name="email" maxlength="20" value="<%=email%>">
						</td>
						<td></td>
					</tr>

					<tr>
						<td>생일</td>
						<td>
							<input type="text" name="birth" maxlength="20" value="<%=birth%>">
						</td>
						<td></td>
						<td>
							<select name="question">
								<option value="none" selected="selected">본인확인질문</option>
								<option value="01">보물 1호는?</option>
								<option value="02">내가 태어난 지역은?</option>
								<option value="03">졸업한 초등학교는?</option>
							</select>
							<input type="text" name="birth_dd" maxlength="15" placeholder="답변" size="25">
						</td>
					</tr>
				</table>
				<br> <br> <br>
				<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
					<form action="main.jsp" method="post">
						<button type="submit" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">회원정보 수정</button>
					</form>
				</div>
				<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
					<form action="main.jsp" method="post">
						<button type="submit" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">취소</button>
					</form>
				</div>
				<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
					<form action="Deletecheck.jsp" method="post">
						<button type="submit" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">회원탈퇴</button>
					</form>
				</div>
			</div>
	</header>
</body>
</html>