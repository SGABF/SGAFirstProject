<%@page import="kr.green.login.service.LoginServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
String foundId = "";
String email = request.getParameter("email");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
foundId = LoginServiceImpl.getInstance().findId(email, name, phone);
// 	out.println(foundId);		

if (foundId == "") {
	out.println("<script>alert('해당 아이디를 찾을 수 없습니다.');history.back();</script>");
} else {
	session.setAttribute("foundId", foundId);
	out.println("<script>alert('고객님의 아이디는 " + foundId + "입니다.');</script>");
	out.println("<script>window.open('login.jsp');</script>");
}
// 		response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk</title>
</head>
<body>

</body>
</html>