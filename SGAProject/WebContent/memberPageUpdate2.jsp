<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	 String uId = (String) session.getAttribute("uId");
%>
<!DOCTYPE html>
<html>
<title>memberPageUpdate2</title>
<%-- ��Ʈ��Ʈ���� ����ϱ� ���� �غ� ���� --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<%-- ��Ʈ��Ʈ���� ����ϱ� ���� �غ� �� --%>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Favicon-- >
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
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
td{
text-align: left;
}
</style>
<head>

</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-success text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="Main.jsp">SGAProject</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-black rounded"
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
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
	
	<!-- Masthead-->
	<!-- Masthead Avatar Image-->
	
					<p>ȸ������ ����</p>
			<form action="memberPageUpdate2.jsp" method="post">
				<div id="member_modify">
					<input type="hidden" name="uId" value="<%=uId%>">
					<br>

					<table>
						<tr>
							<td>���̵�</td>
							<td><input type="text" name="uPassword" id="m_password"
								disabled="disabled"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>��й�ȣ</td>
							<td><input type="password" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>��й�ȣ Ȯ��</td>
							<td><input type="password" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>�̸�</td>
							<td><input type="text" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>�г���</td>
							<td><input type="text" name="id" maxlength="20">
							<td></td>
						</tr>

						<tr>
							<td>��ȭ��ȣ</td>
							<td><input type="text" name="number_1" maxlength="11"
								placeholder="-���� ex)01012345678 �Է¹ٶ��ϴ�."></td>
						</tr>
						<tr>
							<td>�̸���</td>
							<td><input type="text" name="email" maxlength="20"></td>
							<td></td>
						</tr>

						<tr>
							<td>����</td>

							<td><select name="birth_mm">
									<option value="">����Ȯ������</option>
									<option value="01">���� 1ȣ��?</option>
									<option value="02">���� �¾ ������?</option>
									<option value="03">������ �ʵ��б���?</option>
									<td>
							</select> <input type="text" name="birth_dd" maxlength="15"
								placeholder="�亯" size="25"></td>

						</tr>

					</table>

					<br> <br> <br>


					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="main.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">ȸ������
								����</button>
						</form>
					</div>
					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="main.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">���</button>
						</form>
					</div>
					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="Deletecheck.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">ȸ��Ż��</button>
						</header></div>
						</form>
						
					</div>
				</div>
			</form>
</body>
</html>