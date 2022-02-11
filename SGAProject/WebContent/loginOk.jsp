<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("admin") && pass.equals("1234")){
		session.setAttribute("id",id);
		response.sendRedirect("login.jsp");
	}else if(id.equals("admin")){
		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>");
	}else if(pass.equals("1234")){
		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>");
	}else{
		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>");
	}
		%>
</body>
</html>