<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	session.invalidate();
	out.println("<script>alert('로그아웃되었습니다'); history.back();</script>");
	response.sendRedirect("login.jsp");
	%>
</body>
</html>