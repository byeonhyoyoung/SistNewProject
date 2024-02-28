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

	String name=request.getParameter("name");
	String ipsadate=request.getParameter("ipsadate");
	String lunch=request.getParameter("lunch");
	String[] suggests=request.getParameterValues("suggest");
%>

<h3 class="alert alert-danger">결과값 출력</h3>
	사원명 : <%=name %><br>
	입사 일자 : <%=ipsadate %><br>
	오늘 점심메뉴 : <%=lunch %>&nbsp;<img src="../image/Food/10.jpg" style="width:100px"><br>
	건의 메뉴 : <%=suggest %> 
</body>
</html>