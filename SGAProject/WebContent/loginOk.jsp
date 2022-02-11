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
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	SqlSession sqlSession = null;
	MemberVO vo = new MemberVO(); 
	MemberDAO dao = MemberDAOImpl.getInstance();
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("idx", "" + vo.getIdx());
	map.put("id", vo.getId());
	map.put("password", vo.getPassword());
	dao.memberLogin(sqlSession, map);
	
	
	out.println(map);
	
	vo.setId(vo.getId());
	vo.setPassword(vo.getPassword());
	
	LoginServiceImpl.getInstance().memberLogin(vo);
	
	
// 	MemberDAOImpl.getInstance().memberLogin(sqlSession, map);
	
// 	LoginServiceImpl.getInstance().getMember(idx);

	if (id.equals("id") && password.equals("password")) {
		session.setAttribute("id", id);
		response.sendRedirect("welcome.jsp");
	} else if (id.equals("id")) {
		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>");
	} else if (password.equals("password")) {
		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>");
	} else {
		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>");
	}
	%>
</body>
</html>