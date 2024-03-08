<%@page import="intro.model.IntroDao"%>
<%@page import="intro.model.IntroDto"%>
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
	//수정된 데이터를 받아온다
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String birthday=request.getParameter("birthday");
	String hometown=request.getParameter("hometown");
	String[] hobby=request.getParameterValues("hobby");
	String memo=request.getParameter("memo");
	
	//수정된 데이터를 IntroDto 객체에 설정한다
	IntroDto dto=new IntroDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAge(age);
	dto.setBirthday(birthday);
	dto.setHometown(hometown);
	String myHobby="";
	if(hobby!=null){
		for(int i=0; i<hobby.length; i++){
			myHobby+=hobby[i]+",";
			
		}
		myHobby=myHobby.substring(0, myHobby.length()-1);
	}
	dto.setHobby(myHobby);
	dto.setMemo(memo);
	
	//IntroDao 객체를 생성하여 수정 메서드를 호출한다
	IntroDao dao=new IntroDao();
	dao.updateIntro(dto);
	
	//수정이 완료되면 목록 페이지로 리다이렉트한다
	response.sendRedirect("introList.jsp");
	
	
%>
</body>
</html>