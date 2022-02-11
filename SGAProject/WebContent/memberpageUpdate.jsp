<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>memberpageUpdate</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<script type="text/javascript">
	function test() {
		var p1 = document.getElementById('password1').value;

		if (p1.length < 6) {
			alert('입력한 글자가 6글자 이상이어야 합니다.');
		}
		return false;
	}
</script>
<style type="text/css">
h1 {
	text-align: center;
}

hr {
	border: solid 1px gray;
	width: 200px;
	margin: 0 auto;
}

p {
	text-align: center;
}

div {
	background-color: green;
	width: 400px;
	padding: 50px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<h1>회원정보</h1>
	<hr></hr>

	<p>비밀번호확인</p>

	<div class="bg-success p-2 text-white">
		<p>회원정보를 안전하게 보호하기 위해 비밀번호를 한번 더 확인해주세요.
		<p>

			비밀번호
			<input type="password" id="password1">
		<form action="memberPageUpdate2.jsp" method="post">
			<input type="submit" value="확인" class="btn btn-success d-grid gap-2 col-6 mx-auto btn btn-dark btn-sm">
		</form>
	</div>
</body>
</html>