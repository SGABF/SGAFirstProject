<%@page import="nl.captcha.Captcha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars
String answer = request.getParameter("answer");
System.out.println(answer);
if (captcha.isCorrect(answer)) { %>
    <b>일치!</b>
<% } else { %>
    <b>불일치!</b>
<% } %>

