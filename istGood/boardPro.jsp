<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import = "java.sql.* %>
<% 
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("boardTitle");
	String content = request.getParameter("boardContent");

	
	Class.forName("org.mariadb.jdbc.Driver");
	
	String url = "jdbc:mariadb://localhost:3306/jhs7735db";
	String user = "jhs7735";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String sql = "insert into login(boardTitle, boardContent) values(?, ?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.executeUpdate();
	%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
<h2>제목</h2><br><br>
<h3><pre><%=title %></pre></h3>
<h2>내용</h2><br><br>
<h3><pre><%= content %></pre></h3>
</body>
</html>