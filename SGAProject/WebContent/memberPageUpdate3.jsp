<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	String uId = (String) session.getAttribute("uId");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>PasswordUpdateOKForm</title>
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
<head>
</head>
<body id="page-top">
	<!-- Navigation-->
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
			<div id="member_modify">
				<input type="hidden" name="uId" value="<%=uId%>">
				<p style="font-size: 20pt; font-weight: bold">��й�ȣ �缳��</p>
				<br>
				<table>

					<tr>
						<td>��й�ȣ</td>
						<td><input type="password" name="uPassword" id="m_password"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>��й�ȣ Ȯ��</td>
						<td><input type="password" name="uPassword2" id="m_password2"></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<br> <br>
				<form action="login.jsp" method="post" >
					<input type="submit" class="btn btn-success btn-sm"
						id="member_modify_btn" onclick="test()" value="����"/>
				</form>
				
				<script type="text/javascript">
					function test() {
						
						var p1 = document.getElementById('m_password').value;
						var p2 = document.getElementById('m_password2').value;

						if (p1.length < 6) {
							alert('�Է��� ���ڰ� 6���� �̻��̾�� �մϴ�.');
							return false;
						}

						if (p1 != p2) {
							alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
							return false;
						} else {
							alert("��й�ȣ�� ��ġ�մϴ�");
							return true;
						}
					}
				</script>

			</div>
</body>
</html>
