<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("utf-8");

	String uId = (String) session.getAttribute("uId");
	String nickName = (String)session.getAttribute("nickName");
	

%>
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
<%-- ��Ʈ��Ʈ���� ����ϱ� ���� �غ� �� --%>
<head>

</head>
<body>
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">

		<div class="container d-flex align-items-center flex-column">
			<form action="memberPageUpdate2.jsp" method="post">
				<div id="member_modify">
					<input type="hidden" name="uId" value="<%=uId%>">
					<p style="font-size: 20pt; font-weight: bold">ȸ������ ����</p>
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
							<td><input type="text" name="id" maxlength="20" value="<%=nickName%>">
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
						</form>
					</div>
				</div>
			</form>
</body>
</html>