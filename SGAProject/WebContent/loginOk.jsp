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
	out.println(nickName);
	
// 	MemberDAOImpl.getInstance().memberLogin(sqlSession, map);
	
// 	LoginServiceImpl.getInstance().getMember(idx);

// 	if (id.equals("id") && password.equals("password")) {
// 		session.setAttribute("id", id);
// 		response.sendRedirect("welcome.jsp");
// 	} else if (id.equals("id")) {
// 		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>");
// 	} else if (password.equals("password")) {
// 		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>");
// 	} else {
// 		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>");
// 	}
	
// 	// 폼 데이터 정보가 등록된 사용자들 중 있는지 검사.
// 	for (User u: users) {
// 	    // 이메일과 패스워드가 일치한다면?
// 	    if (u.check(inputid, inputPassword)) {
// 	        /* 2. main.jsp로 이동시키시오. (구글링: jsp response 페이지 redirect)*/
// 	        response.sendRedirect("welcome.jsp?id=" + inputid);
// 	        return;
// 	    } 
// 	}
	
	%>
</body>
</html>