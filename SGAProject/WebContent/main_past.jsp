<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>

<html lang="en">

<head>

<title>Main</title>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="css/custom.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<style>
</style>


<body>



	<%
		// 아이디 세션 확인

	String userID = null;

	if (session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}
	%>



	<!-- navigation bar start -->

	<nav class="navbar navbar-default">

		<div class="navbar-header">

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">

				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>

			<a class="navbar-brand" href="Main.jsp">SGAProject</a>

		</div>

		<div class="navbar navbar-expand-lg navbar-light bg-light"
			id="bs-example-navbar-collapse-3">

			<ul class="nav navbar-expand-lg navbar-light bg-light"
				id="bs-example-navbar-collapse-3">

				<li class="active"><a href="Main.jsp">MAIN</a></li>

				<li><a href="Calc/calc.jsp">calc</a></li>

				<li><a href="Calendar/Calendar.jsp">Calender</a></li>

			</ul>

			<jsp:include page="Search/SearchBar.jsp" />

			<%
				if (userID == null) {
			%>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-hashpopup="true"
					aria-expanded="false">접속하기</a>

					<ul class="dropdown-menu">

						<li><a href="login.jsp">Sign In</a></li>

						<li><a href="welcomeForm.jsp">Sign Up</a></li>

					</ul></li>

			</ul>

			<%
				} else {
			%>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-hashpopup="true"
					aria-expanded="false">회원관리</a>

					<ul class="dropdown-menu">

						<li><a href="LogoutAction.jsp">Log Out</a></li>

					</ul></li>

			</ul>



			<%
				}
			%>

		</div>

	</nav>

	<!-- navigation bar end -->






	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">

				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>

				<li data-target="#myCarousel" data-slide-to="1"></li>

				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol>

			<div class="carousel-inner">

				<div class="item active" style="width: 500px; height: 670px">

					<jsp:include page="/Calc/calc.jsp" />



				</div>

				<div class="item">


					<jsp:include page="/Calendar/Calendar.jsp" />

				</div>

			</div>

			<a class="left carousel-control" href="#myCarousel" data-slide="prev">

				<span class="glyphicon glyphicon-chevron-left"></span>

			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>

			</a>

		</div>

	</div>

	<div class="container">

		<div class="jumbotron">

			<div class="container">

				<h1>Trainer</h1>

				<p style="margin: 0 auto">Trainer 소개 입니다.</p>

				<div style="float: left; width: 35%; padding: 15px;">
					<img src="image/1.jpg" width="250px" height="200px">
					<p>
						트레이너 김나영<br> xx대학교 졸업<br> 12년차 헬스 트레이너
					</p>
				</div>
				<div style="float: left; width: 30%; padding: 15px;">
					<img src="image/2.jpg" width="200px" height="200px">
					<p>
						트레이너 김영삼<br> xx대학교 졸업<br> 10년차 헬스 트레이너
					</p>
				</div>
				<div style="float: left; width: 35%; padding: 15px;">
					<img src="image/3.jpg" width="270px" height="200px">
					<p>
						트레이너 다니엘<br> xx대학교 졸업<br> 6년차 헬스트레이너
					</p>
				</div>
				<div>
				
				<div>
				
				<h2>review</h2>
				<p style="font-size: 15px;">
				
				트레이너와 전화 혹은 문자를 통해 자세한 내용에 대해서는 상담이 가능하구요 ​ 나의 코치를 찾는웹을
					통하니 상담받는것도 굉장히 편하고 여러 다양한 정보를 획득한 후 선택한 트레이너는 만족도가 굉장히 높았습니다 ​
					여러분들도 운동앱 운동닥터를 한번 사용해보시면 아주 좋을 것 같네요 ㅎㅎㅎ</p>
				</div>
				</div>
			</div>
			<br />
			<a class="btn btn-primary btn-pull" href="#" role="button">알아보기</a>

		</div>

	</div>
	<br>
	
	
	<p style="font-size: 15px;" align="center">
		고객센터 ☎ 02-1234-5678<br /> <a href="welcomeForm.jsp">이용약관</a>
	</p>

</body>

</html>



