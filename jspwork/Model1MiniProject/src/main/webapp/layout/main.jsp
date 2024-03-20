<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<%
	//프로젝트 절대경로
	String root=request.getContextPath();
%>
<body>
	<img alt="" src="<%=root %>/image/banner_04.jpg" style="width: 805px;"><br><br>
	
	<h3>주요 제품보기</h3>
	<br>
	<img alt="" src="<%=root %>/image/8.jpg" style="width: 400px;">
	<img alt="" src="<%=root %>/image/5.jpg" style="width: 400px;"><br>
	<img alt="" src="<%=root %>/image/2.jpg" style="width: 400px;">
	<img alt="" src="<%=root %>/image/1.jpg" style="width: 400px;">
</body>
</html>