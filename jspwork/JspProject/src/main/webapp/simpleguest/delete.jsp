<%@page import="simpleguest.model.GuestDto"%>
<%@page import="simpleguest.model.GuestDao"%>
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
	String num=request.getParameter("num");
	GuestDao dao=new GuestDao();
	GuestDto dto=dao.getData(num);
%>
<body>
<div style="margin: 50px 100px;">
    <h3>게시물 삭제</h3>
    <form action="deleteAction.jsp" method="post">
        <input type="hidden" name="num" value="<%=dto.getNum()%>">
        <p>다음 게시물을 삭제하시겠습니까?</p>
        <p>닉네임: <%=dto.getNickname()%></p>
        <p>내용: <%=dto.getContent()%></p>
        <p>작성일: <%=dto.getWriteday()%></p>
        <input type="submit" value="삭제" class="btn btn-outline-danger" style="width: 100px;">
        <input type="button" value="취소" onclick="location.href='guestList.jsp'" class="btn btn-outline-secondary" style="width: 100px;">
    </form>
</div>
</body>
</html>