<%@page import="nl.captcha.Captcha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctx = request.getContextPath();	//콘텍스트명 얻어오기.	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

</head>
<body>

<img src="<%=ctx%>/simpleCaptcha.png"><br />
<form method="post" action="captchaSubmit.jsp">
	Answer: <input name="answer" /><input type="submit" />
</form>
</body>
</html>

