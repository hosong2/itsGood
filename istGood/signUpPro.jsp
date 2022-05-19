<%@ page import="cs.dit.SignUpDao" %>
<%@ page import="cs.dit.SignUpDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
 %>
 <%
 request.setCharacterEncoding("UTF-8");
 
 String id = request.getParameter("id");
 String pwd = request.getParameter("pwd");
 String name = request.getParameter("name");
 String birth = request.getParameter("birth");
 String address = request.getParameter("address");
 String phone = request.getParameter("phone");
 
 SignUpDto dto = new SignUpDto(id, pwd, name, birth, address, phone);
 SignUpDao dao = new SignUpDao();
 
 dao.insert(dto);
 
 response.sendRedirect("main.jsp");
 
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

</body>
</html>