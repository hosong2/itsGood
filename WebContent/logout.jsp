<%/*=======================================================================
	파일명 : 
	변경이력 : 	
	프로그램 내용 : 
===========================================================================*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	response.sendRedirect("main.jsp");
%>