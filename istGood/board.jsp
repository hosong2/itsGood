<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.* %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
		<h1>좋았다 게시판</h1>
		<div class="container">
				<form action="wirte.jsp">
					<table class="table table-striped">
						<thead>
							<tr>
								<td><input type="text" class="form-control" placeholder="글 제목" name="boardTitle" maxlength="50"></td>							
							</tr>
							<tr>
								<td><input type="text" class="form-control" placeholder="글 내용" name="boardContent" maxlength="3000" height="350px"></td>							
							</tr>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="저장하기">
				</form>
		</div>
</body>
</html>