<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
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
<%-- <%
	String num=request.getParameter("num");
	SmartDao dao=new SmartDao();
	
	SmartDto dto=dao.getdData(num);
	
	dao.updateReadcount(num);
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<input type="hidden" id="num" width="500px;">
	<table class="table table-bordered">
		<caption align="top"><b style="font-size: 15pt"><%=dto.getSubject() %></b></caption>
		<tr>
			<td>
				<b>작성자: <%=dto.getWriter() %></b><br>
				<span class="day"><%=dto.format(dto.getWriteday()) %></span>
				&nbsp;&nbsp;&nbsp;&nbsp;조회: <%=dto.getReadcount() %>
			</td>
		</tr>
		<tr height="250">
			<td>
				<%=dto.getContent().replace("\n", "<br>") %>
			</td>
		</tr>
		
		<tr>
			<td align="center">
				<button type="button" class="btn btn-outline-info btn-sm"
				onclick="location.href=''"><i class="bi bi-pencil"></i>글쓰기</button>
				<button type="button" class="btn btn-outline-success btn-sm"
				onclick="location.href=''"><i class="bi bi-list-check"></i>목록</button>
				<button type="button" class="btn btn-outline-info btn-sm"
				onclick="location.href=''"><i class="bi bi-pencil-square"></i>수정</button>
				<button type="button" class="btn btn-outline-danger btn-sm"
				onclick="location.href=''"><i class="bi bi-trash"></i>삭제</button>
			</td>
		</tr>
	</table> --%>

<body>
	<!-- 상세페이지 적당히 만들어볼것!
	작성자,글제목,날짜,내용등등..조회수 증가도 포함
	맨아래에는 목록,글쓰기,수정,삭제 버튼 만들기 -->
</body>
</html>