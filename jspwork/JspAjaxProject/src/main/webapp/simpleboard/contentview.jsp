<%@page import="java.text.SimpleDateFormat"%>
<%@page import="simpleboard.model.SimpleBoardDao"%>
<%@page import="simpleboard.model.SimpleBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
	body{
		font-family: 'Noto Sans KR';
		font-size: 11pt;
	}
	
	span.day{
		color: 
	}
</style>
</head>
<!-- boardlist에서 Num을 받는 -->
<%
	String num=request.getParameter("num");
	SimpleBoardDao dao=new SimpleBoardDao();
	//dto
	SimpleBoardDto dto=dao.getContent(num);
	//조회수1증가
	dao.updateReadCount(num);
	//날짜
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
%>
<div style="margin: 50px 100px; width: 500px;">
	<table class="table table-bordered">
		<caption align="top"><b style="font-size: 15pt;"><%=dto.getSubject() %></b></caption>
		<tr>
			<td>
				<b>작성자: <%=dto.getWriter() %></b><br>
				<span class="day"><%=sdf.format(dto.getWriteday()) %></span>
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
				<button type="button" class="btn btn-outline-info"
				onclick="location.href='addform.jsp'"><i class="bi bi-pencil"></i>글쓰기</button>
				<button type="button" class="btn btn-outline-success"
				onclick="location.href='boardlist.jsp'"><i class="bi bi-list-check"></i>목록</button>
				<button type="button" class="btn btn-outline-primary"
				onclick="location.href='updatepassform.jsp?num=<%=dto.getNum() %>'"><i class="bi bi-recycle"></i>수정</button>
				<button type="button" class="btn btn-outline-danger"
				onclick="location.href='deletepassform.jsp?num=<%=dto.getNum() %>'"><i class="bi bi-trash"></i>삭제</button>
			</td>
		</tr>
	
	</table>
</div>
<body>
</body>
</html>