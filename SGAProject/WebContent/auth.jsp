<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
class User {
    private String id;
    private String password;
    public User(String id, String password) {
        this.id = id;
        this.password = password;
    }
    public boolean check(String id, String password) {
        // 아이디가 같지않다면?
        if (!id.equalsIgnoreCase(this.id))
            return false;
        // 비밀번호가 다르다면?
        if (!password.equals(this.password))
            return false;
        // 모두 통과했다면?
        return true;
    }
}
%>
<%
/* 1. 폼 데이터를 받아오시오. (구글링: jsp request form 값 받기) */
String inputid = request.getParameter("id");
String inputPassword = request.getParameter("password");
// 등록된 사용자 데이터.
String[] id = {"admin", "tester", "user"};
String[] passwords = {"admin123", "tester123", "user123"};
User[] users = new User[id.length];
for (int i = 0; i < id.length; i++) {
    users[i] = new User(id[i], passwords[i]);
}
// 폼 데이터 정보가 등록된 사용자들 중 있는지 검사.
for (User u: users) {
    // 이메일과 패스워드가 일치한다면?
    if (u.check(inputid, inputPassword)) {
        /* 2. main.jsp로 이동시키시오. (구글링: jsp response 페이지 redirect)*/
        response.sendRedirect("welcome.jsp?id=" + inputid);
        return;
    } 
}
// 사용자 인증을 못받았다면?
/* 3. login.jsp 페이지로 이동시키시오. (구글링: jsp response 페이지 redirect) */
response.sendRedirect("login.jsp?error=login-failed");
%>