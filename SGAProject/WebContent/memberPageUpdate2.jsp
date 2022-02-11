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
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
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
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<head>

</head>
<body>
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">

		<div class="container d-flex align-items-center flex-column">
			<form action="memberPageUpdate2.jsp" method="post">
				<div id="member_modify">
					<input type="hidden" name="uId" value="<%=uId%>">
					<p style="font-size: 20pt; font-weight: bold">회원정보 수정</p>
					<br>

					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="uPassword" id="m_password"
								disabled="disabled"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="uPassword" id="m_password"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><input type="text" name="id" maxlength="20" value="<%=nickName%>">
							<td></td>
						</tr>

						<tr>
							<td>전화번호</td>
							<td><input type="text" name="number_1" maxlength="11"
								placeholder="-없이 ex)01012345678 입력바랍니다."></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="text" name="email" maxlength="20"></td>
							<td></td>
						</tr>

						<tr>
							<td>생일</td>
							
							<td><select name="birth_mm">
									<option value="">본인확인질문</option>
									<option value="01">보물 1호는?</option>
									<option value="02">내가 태어난 지역은?</option>
									<option value="03">졸업한 초등학교는?</option>
									<td>
							</select> <input type="text" name="birth_dd" maxlength="15"
								placeholder="답변" size="25"></td>
									
						</tr>

					</table>

					<br> <br> <br>


					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="main.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">회원정보
								수정</button>
						</form>
					</div>
					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="main.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">취소</button>
						</form>
					</div>
					<div id="btn-group" class="btn-group" aria-label="Basic example"
						style="display: inline-block;">
						<form action="Deletecheck.jsp" method="post">
							<button type="submit"
								class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">회원탈퇴</button>
						</form>
					</div>
				</div>
			</form>
</body>
</html>