<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	String uId = (String) session.getAttribute("uId");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<title>findIDForm</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<head>

</head>
<body id="page-top">
	<nav
		class="navbar navbar-expand-lg bg-success text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">SGAProject</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Main.jsp">Main</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<form action="findIDForm.jsp" method="post">

				<div id="findID">
					<input type="hidden" name="uId" value="<%=uId%>">
					<p style="font-size: 20pt; font-weight: bold">아이디 찾기</p>
					<br>
				</div>
				<table>

					<tr>
						<td>이메일</td>
						<td><input type="text" name="email" maxlength="20"></td>
						<td></td>
					</tr>

					<tr>
						<td>이름</td>
						<td><input type="text" name="uName" id="m_name"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>전화번호</td>
						<td><input type="text" name="number_1" maxlength="11"
							placeholder="-없이 입력바랍니다."></td>
					</tr>

				</table>

				<br> <br> <br>

				<button type="submit" class="btn btn-success btn-sm"
					id="id_confirm_btn" onclick="alert('고객님의 id는 id 입니다.');">확인</button>

				<button type="submit" class="btn btn-success btn-sm"
					id="id_confirm_btn" onclick="window.open('login.jsp');">취소</button>
			</form>
</body>
</html>
