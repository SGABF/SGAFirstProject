<%@page import="org.apache.ibatis.session.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!doctype html>
<html lang="ko">
<title>login</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<head>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="container" id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-success text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">SGAProject</a>
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
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			<div class="jumbotron" style="font-weight: bold">
				<h1 style="text-align: center">login</h1>
			</div>
			<!-- 로그인 실패 시 경고: https://getbootstrap.com/docs/4.1/components/alerts/#dismissing -->
			<%
				if (request.getParameter("error") != null) {
			%>
			<div class="alert alert-warning alert-dismissible fade show" role="alert" style="text-align: center">
				<strong>로그인 에러!</strong> 아이디 또는 비밀번호가 일치하지 않습니다.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<%
				}
			%>
			<!-- 로그인 폼: https://getbootstrap.com/docs/4.1/components/forms/ -->
			<form action="welcome.jsp" method="post">
				<div class="form-group">
					<label>아이디</label>
					<input name="id" type="text" class="form-control" />
				</div>
				<br>
				<div class="form-group">
					<label>비밀번호</label>
					<input name="password" type="password" class="form-control" />
				</div>
				<br>
				<div class="d-grid gap-2 col-6 mx-auto">
					<button type="submit" class="btn btn-success">로그인하기</button>
				</div>
				<br>
				<div style="text-align: center;">
					<a href="welcomeForm.jsp">회원가입</a>
					<a href="findIDForm.jsp">아이디 찾기</a>
					<a href="findpasswordForm.jsp">비밀번호 찾기</a>
				</div>
			</form>
			<!-- Optional JavaScript -->
			<Script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
			<Script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
			<!-- 카카오 로그인  -->
			<a id="kakao-login-btn"></a>
			<!-- 카카오 로그인 -->
			<script type="text/javascript">
			<!-- 카카오 로그인 -->
				function unlinkApp() {
					Kakao.API.request({
						url : '/v1/user/unlink',
						success : function(res) {
							alert('success: ' + JSON.stringify(res))
						},
						fail : function(err) {
							alert('fail: ' + JSON.stringify(err))
						},
					})
				}
			</script>
			<script type="text/javascript">
				Kakao.init('a8d7550af3ad302336d7c581f9f3ec11');
				console.log(Kakao.isInitialized());

				Kakao.Auth
						.createLoginButton({
							container : '#kakao-login-btn',
							success : function(authObj) {
								Kakao.API
										.request({
											url : '/v2/user/me',
											success : function(result) {
												$('#result').append(result);
												id = result.id
												connected_at = result.connected_at
												kakao_account = result.kakao_account
												$('#result').append(
														kakao_account);
												resultdiv = "<h2>로그인 성공 !!"
												resultdiv += '<h4>id: ' + id
														+ '<h4>'
												resultdiv += '<h4>connected_at: '
														+ connected_at + '<h4>'
												email = "";
												gender = "";
												if (typeof kakao_account != 'undefined') {
													email = kakao_account.email;
													gender = kakao_account.gender;
												}
												resultdiv += '<h4>email: '
														+ email + '<h4>'
												resultdiv += '<h4>gender: '
														+ gender + '<h4>'
												$('#result').append(resultdiv);

											},
											fail : function(error) {
												alert('login success, but failed to request user information: '
														+ JSON.stringify(error))
											},
										})
							},
							fail : function(err) {
								alert('failed to login: ' + JSON.stringify(err))
							},
						});
				<!--카카오 로그인 -->
			</script>
			<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
</body>
</html>