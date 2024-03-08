<%@page import="myworld.model.WorldDao"%>
<%@page import="myworld.model.WorldDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
</body>
</html> -->

<%
	//한글엔코딩
	request.setCharacterEncoding("utf-8");
	//num,writer,content,avata(worldInsert확인해봐)
	String num=request.getParameter("unum");
	String writer=request.getParameter("uwriter");
	String content=request.getParameter("ucontent");
	String avata=request.getParameter("uavata");
	
	//dto담기
	WorldDto dto=new WorldDto();
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setAvata(avata);
	
	//dao선언
	WorldDao dao=new WorldDao();
	
	//수정메서드 호출
	dao.updateWorld(dto);
	
%>