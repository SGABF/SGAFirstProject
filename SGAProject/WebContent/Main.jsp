<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<%

	String id = (String) session.getAttribute("id");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>SGAProject</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<head>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-success text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">SGAProject</a>
			<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#">Search</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Calendar</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Calculator</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-success bg-opacity-25 text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->


			<jsp:include page="Search/SearchBar.jsp" />

			<!-- Masthead Heading-->
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Calendar</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div>
							<jsp:include page="fullCalendarEx2.jsp" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">BMI CALCULATOR</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<div class="container d-flex align-items-center flex-column">
					<jsp:include page="/Calc/calc.jsp" />
				</div>
			</div>
		</div>
	</section>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Trainer</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1">
						<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="image/1.jpg" alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
						<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="image/2.jpg" alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
						<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="image/3.jpg" alt="..." style="height: 45%" />
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">

			<!-- About Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-white">Review</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->


			<div class="row">

				<div class="col-lg-4 ms-auto">
					<p class="lead">트레이너와 전화 혹은 문자를 통해 자세한 내용에 대해서는 상담이 가능하구요 ​ 나의 코치를 찾는웹을 통하니 상담받는것도 굉장히 편하고 여러 다양한 정보를 획득한 후 선택한 트레이너는 만족도가 굉장히 높았습니다 ​ 여러분들도 운동웹을 한번 사용해보시면 아주 좋을 것 같네요 ㅎㅎㅎ</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">비싼 금액이지만 의지가 약해서 트레이너 선생님들이 잘 관리해주시니 정말 살빼고 싶고 돈은 있다 하시면 PT강력 추천 합니다. ​ 운동기구 사용법을 다 알 수 있으니 시간이 지나도 꾸준히 스스로 할 수 있기 때문에 초보자자분들은 꼭 PT 한번쯤 경험하는 것을 추천합니다!!</p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4"></div>
		</div>
	</section>
	<!-- Contact Section-->

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">20, Migeumil-ro 74beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-facebook-f"></i>
					</a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-twitter"></i>
					</a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-linkedin-in"></i>
					</a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-dribbble"></i>
					</a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">Maker</h4>
					<p class="lead mb-0">
						by team SGVBF
						<a href="https://github.com/SGABF/SGAFirstExam">github.com</a>

					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; SGAProject 2022 <br> Chrome 97.0.4692.99v 버전에 최적화되어 있습니다. <br> <a href="welcomeForm2.jsp">이용약관</a></small>
		</div>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Trainer</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5" src="image/1.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">트레이너 김영숙</p>
								<p>경력 : 10년
								<p>xx 체육 대학교 출신</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Trainer</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5" src="image/2.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">트레이너 김영삼</p>
								<p>경력 : 15년차</p>
								<p>xx 체육대학교 출신</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Trainer</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5" src="image/3.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">트레이너 : 다니엘</p>
								<p>경력 : 5년차</p>
								<p>호주 대학교 출신</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 4-->

	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
