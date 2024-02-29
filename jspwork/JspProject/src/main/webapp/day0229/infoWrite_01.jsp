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
<body>
<%
	request.setCharacterEncoding("utf-8");

	String grade=request.getParameter("grade");
	String [] lang=request.getParameterValues("lang");
	String like=request.getParameter("like");
	String height=request.getParameter("height");
	String weight=request.getParameter("weight");
	String ipsaday=request.getParameter("ipsaday");
	
%>

	<h3 class="alert alert-danger">***사원 정보***</h3><br><br>
	최종학력선택: <b><%=grade %></b><br>
	가능한 컴퓨터 언어:<br>
	<%
		if(lang==null)
		{%>
			<font color="green">아무언어도 못합니다</font>
		<%}else
		{
			for(int i=0; i<lang.length; i++)
			{%>
				&nbsp;&nbsp;<b><%=lang[i] %></b><br>
			<%}
		}
	%>
	
	같은조 하고 싶은 사람: <%=like %><br>
	<%
		if(like==null)
		{%>
			<font></font>
		<%}
	%>
	
	
	당신의 키?: <%=height %><br>
	당신의 몸무게?: <%=weight %><br>
	날짜선택: <%=ipsaday %>
	
	
	
	
	
</body>
</html>