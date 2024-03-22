<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GuestDao"%>
<%@page import="data.dto.GuestDto"%>
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
	GuestDao dao=new GuestDao();

//전체갯수
int totalCount=dao.getTotalCount();
int perPage=3; //한페이지당 보여질 글의 갯수
int perBlock=5; //한블럭당 보여질 페이지 갯수
int startNum; //db에서 가져올 글의 시작번호(mysql은 첫글이0번, 오라클은1번)
int startPage; //각 블럭당 보여질 시작페이지
int endPage; //각 블럭당 보여질 끝페이지
int currentPage; //현재페이지
int totalPage; //총페이지수 ->8개값 동일
int no; //각페이지당 출력할 시작번호

//현재페이지 읽는데 단 null일 경우는 1페이지로 준다
if(request.getParameter("currentPage")==null)
	currentPage=1;
else
	currentPage=Integer.parseInt(request.getParameter("currentPage")); //계산해야하니까 int로 변환
	
//총페이지수 구하기	
//총글갯수/한페이지당 보여질 갯수로 나눔(7/5=1)
//나머지가 1이라도 있으면 무조건 1페이지 추가한다(1+1=2페이지가 필요) //로직 복사사용하기
totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);

//각 블럭당(하단 숫자1 2 3 4 5 6) 보여질 시작페이지
//perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가 1,끝페이지가 5
//현재가 13일경우 시작:11 끝:15
startPage=(currentPage-1)/perBlock*perBlock+1; //이런 공식이다..
endPage=startPage+perBlock-1;

//총페이지가 23일경우 마지막블럭은 끝페이지 25가 아니라 23
if(endPage>totalPage)
	endPage=totalPage;

//각페이지에서 보여질 시작번호
//1페이지:0, 2페이지:5, 3페이지:10.....
startNum=(currentPage-1)*perPage;
	
//각페이지당 출력할 시작번호 구하기
//총글갯수가 23 ,(내림차순) 1페이지:23, 2페이지:18, 3페이지:13
no=totalCount-(currentPage-1)*perPage;

//페이지에서 보여질 글만 가져오기
List<GuestDto>list=dao.getList(startNum, startPage);

//List<SimpleBoardDto>list=dao.getAllDatas();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
//int count=list.size();
%>

<body>
<%
   //로그인상태확인
   String loginok=(String)session.getAttribute("loginok");

%>

<%
  if(loginok!=null){
	  %>
	  <jsp:include page="guestform.jsp"/>
	  <hr width="700" align="left" style="margin-left: 100px;">
  <%}
%>
<div style="margin: 50px 100px; width: 650px">
<b>방명록 리스트</b>
<br>
<h6><b>총<%=totalCount %>개의 방명록글이 있습니다</b></h6>
<table class="table table-bordered">
	<tr class="table-light">
		<th width="100" height="300"></th>
	</tr>
	
	<tr class="table-light">
		<th width="100" height="300"></th>
	</tr>
	
	<tr class="table-light">
		<th width="100" height="300"></th>
	</tr>
	
	<%
		if(totalCount==0)
		{%>
			<tr>
				<td align="center">		
					<h6>등록된 방명록글이 없습니다</h6>
				</td>
			</tr>
		<%}else{
			for(int i=0; i<list.size(); i++)
			{
				GuestDto dto=list.get(i);
				%>
				
				<tr>
					<td align="left"><%=no-- %></td>
					<%-- <td>
						<a href="guestform.jsp?num=<%=dto.getNum()%>"></a>
					</td> --%>
					
					<td align="center"><%=dto.getMyid() %></td>
					<td align="center"><%=dto.getContent() %></td>
					<td align="center"><%=dto.getPhotoname() %></td>
					<td align="center"><%=dto.getWriteday() %></td>
				</tr>
			<%}
		}
	%>
</table>

<!-- 페이지 번호 출력 -->
<ul class="pagination justify-content-center">
<%
//이전
if(startPage>1)
{%>
	<li class="page-item ">
	   <a class="page-link" href="guestlist.jsp?currentPage=<%=startPage-1%>" style="color: black;">이전</a>
	</li>
<%}
	for(int pp=startPage;pp<=endPage;pp++)
	{
		if(pp==currentPage)
			//css주기
		{%>
    		<li class="page-item active">
    		<a class="page-link" href="guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
    		</li>
    	<%}else
    	{%>
    		<li class="page-item">
    		<a class="page-link" href="guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
    		</li>
    	<%}
	}
	
	//다음
	if(endPage<totalPage)
	{%>
	<li class="page-item">
		<a  class="page-link" href="guestlist.jsp?currentPage=<%=endPage+1%>"
		style="color: black;">다음</a>
	</li>
	<%}
%>
</ul>

</div>
</body>
</html>