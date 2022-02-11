<%@page import="java.util.HashMap"%>
<%@page import="kr.green.login.dao.MemberDAO"%>
<%@page import="kr.green.login.dao.MemberDAOImpl"%>
<%@page import="kr.green.login.vo.MemberVO"%>
<%@page import="kr.green.login.service.LoginServiceImpl"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String nickName = "";

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	int idx = LoginServiceImpl.getInstance().selectIdx(id, password);
		MemberVO vo = LoginServiceImpl.getInstance().getMember(idx);
		nickName = LoginServiceImpl.getInstance().memberLogin(vo);
		
	if (idx == 0) {
		out.println("<script>alert('입력하신 사용자의 정보가 일치하지 않습니다.');history.back();</script>");
	} else {
		out.println("<script>alert('로그인 성공');</script>");
		session.setAttribute("id", id);
		session.setAttribute("name", vo.getName());
		session.setAttribute("nickName", nickName);
		session.setAttribute("phone", vo.getPhone());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("question", vo.getQuestion());
		session.setAttribute("answer", vo.getAnswer());
		response.sendRedirect("welcome.jsp");
	}
			
	%>
</body>
</html>