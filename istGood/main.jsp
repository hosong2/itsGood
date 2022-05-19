<%/*=======================================================================
	파일명 : 
	변경이력 : 	
	프로그램 내용 : 
===========================================================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>좋았다 쇼핑몰</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<style>
#title_background {
    padding-top: 10px;
    padding-bottom: 30px;
}

#title_name {
    font-size: 40px;
    margin: 10px;
    font-weight: bold;
    padding-left: 10px;
}

#searchForm {
    position: relative;
    border: 0px;
    border-radius: 25px;
    margin-top: 30px;
    margin-right: 70%;
}

#searchKeyword {
    position: absolute;
    border: 0px;
    background-color: #EEEEEE;
    margin-top: 20px;
    margin-left: 100px;
    border-radius: 25px;
    width: 350px;
    height: 35px;
}

.searchbtn {
    position: absolute;
    border: none;
    outline: none;
    margin-left: 400px;
    margin-right: 500px;
    margin-top: 25px;
}

#Login {
    font-size: 20px;
    font-weight: bold;
    text-decoration: none;
    margin-left: 5px;
    margin-right: 5px;
}

.kategorie_background {
    width: 100%;
    height: 30px;
    margin-top: 0px;
    margin-bottom: 40px;
}

.Kgbtn {
    background-color: white;
    border: 1px;
    width: 200px;
    height: 40px;
    font-size: 24px;
    font-weight: bold;
}

body {
    font-family: '맑은 고딕', verdana;
    padding: 0;
    margin: 0;
}

ul {
    padding: 0;
    margin: 0;
    list-style: none;
}

nav#nav {
    padding: 10px;
    text-align: right;
}

nav#nav ul li {
    display: inline-block;
    margin-left: 10px;
}

section#container {
    padding: 20px 0;
    border-top: 2px solid #eee;
    border-bottom: 2px solid #eee;
}

section#container::after {
    content: "";
    display: block;
    clear: both;
}

#search {
    align-items: center;
    height: 40px;
    width: 400px;
    border: 1px solid #1b5ac2;
    background: #ffffff;
}

#searchbtn {
		margin-top: 25px;
    width: 50px;
    height: 100%;
    border: 0px;
    background: 1b5ac2;
    outline: none;
    float: right;
    color: #070505;
}


div#container_box {
    float: left;
    width: 1800px;
    display: flex;
    align-content: flex-start;
    flex-direction: column;
    flex-wrap: wrap;
    margin-left: 30px;
}

#container ul li {
    text-align: center;
    margin-bottom: 10px;
    display: block;
    padding: 10px 0;
}

#imgs li {
    text-align: center;
    margin-right: 130px;
    float: left;
    display: block;
}

#imgs li:hover {
    border: 2px solid #eee;
}

#imgs li {
    width: 300px;
    height: 280px;
}

#container ul {
    text-align: center;
}

#category {
    display: flex;
    align-content: flex-start;
    flex-direction: column;
    flex-wrap: wrap;
    float: left;
    width: 150px;
}

#category li {
    margin: 5px;
    border: 2px solid #eee;
    width: 100px;
    height: 100px;
}

#category li:hover {
    background-color: #eee;
}

footer#footer {
    background: #f9f9f9;
    padding: 20px;
}

footer#footer ul li {
    display: inline-block;
    margin-right: 10px;
}
.kategorie_background ul {
    float: left;
    text-align: center;
    margin-left: 20%;
    font-size: 24px;
    font-weight: bold;
}

a:link {
    color: rgb(126, 76, 105);
    text-decoration: none;
}

a:visited {
    color: rgb(126, 76, 105);
    text-decoration: none;
}

</style>
<script>
function changeIframe(url) {
    document.getElementById("main_frame").src = url;
}
</script>
<body>
<div >
	<div id="title_background">
		<span id="title_name">좋았다</span>
		<from id="searchForm" method="POST">
			<input id="searchKeyword" placeholder=" 찾으시는 물건을 검색해주세요">
			<button class="searchbtn">
				<i class="tiny material-icons">search</i>
			</button>
		</from>
		<span id="title_Login">
			<a id="Login" href="login.jsp">로그인</a> <a id="Login" href="signUp.jsp">회원가입</a><a id="Login">장바구니</a>
		</span>
	</div>
        <section id="container">
       	<div class="kategorie_background">
       	
		<ul>
                    <a href="homecon.html" target="iframe">가 전 제 품</a></ul>
                <ul>
                    <a href="food.html" target="iframe">식 료 품</a></ul>
                <ul>
                    <a href="cloth.html" target="iframe">의 류</a></ul>
            </div>
            <div id="container_box">
                <iframe src="homecon.html" name="iframe" frameborder="0" scrolling="yes" width="1800px" height="600px" id="main_iframe"></iframe>
	</div>

    </div>
    </section>

    <footer id="footer">
        <div id="footer_box">
            <ul>
                <li>사이트 소개</li>
                <li><a href="boardlist.jsp">Q&A 게시판</a></li>
            </ul>
        </div>
    </footer>

    </div>
</body>
</html>