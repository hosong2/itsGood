<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.SignUpDao"%>
<%@page import="cs.dit.SignUpDto"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import = "java.sql.*"     
%>
<%
	SignUpDao dao = new SignUpDao();
	ArrayList<SignUpDto> dtos = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<title>회원목록</title>
</head>
<body>
<table class="table table-striped">
	<tr>
		<th>id</th>
		<th>pwd</th>
		<th>name</th>
		<th>birth</th>
		<th>address</th>
		<th>phone</th>
	</tr>
	<tr>
<%
	for(SignUpDto dto : dtos){
%>
		<td><a href="updateForm.jsp?id=<%=dto.getId() %>">  <%=dto.getId() %>  </a></td>
		<td><%=dto.getPwd() %></td>
		<td><%=dto.getName() %></td>
		<td><%=dto.getBirth() %></td>
		<td><%=dto.getAddress() %></td>
		<td><%=dto.getPhone() %></td>
	</tr>
<%	}

%>

</table>
</body>
</html>