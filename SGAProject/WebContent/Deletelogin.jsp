<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DeleteForm</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<body>
	<h1>회원탈퇴</h1>
	<hr></hr>
	<script type="text/javascript">
		
	</script>
	<style type="text/css">
h1 {
	text-align: center;
}

hr {
	border: solid 1px gray; s
	width: 200px;
	margin: 0 auto;
}

p {
	text-align: center;
}
</style>
</head>

<br>
<div style="background-color: #F5F5F5; width: 450px; height: 250px; padding: 15px; margin: 0 auto;">
	<p>고객님의 소중한 개인정보보호를 위해서 본인확인을 진행합니다</p>
	<table>

		<tr>

			<td>아이디</td>
			<td>
				<input type="text" name="uPassword" id="m_password">
			</td>
			<td></td>
			<td></td>

		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="uPassword" id="m_password">
			</td>
			<td></td>
			<td></td>
		</tr>

	</table>

	<div class="d-grid gap-2 col-6 mx-auto">
		<form action="DeleteForm.jsp" method="post">
			<input type="submit" value="확인" class="btn btn-primary">
		</form>
	</div>
</div>

</body>

</html>
