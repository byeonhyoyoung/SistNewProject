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
<h2>Quiz</h2>
	<form action="quizWrite_03.jsp" method="post">
		<table>
			<tr>
				<th width="100" class="table-info">사원명</th>
				<td>
					<input type="text" name="name" placeholder="이름" required="required" style="width:120px">
				</td>
			</tr>
			
			<tr>
				<th width="100" class="table-info">입사 일자</th>
				<td>
					<input type="date" name="ipsadate" required="required" style="width:120px">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">점심 메뉴</th>
				<td>
					<input type="radio" name="lunch" value="" required="required" style="width:120px">
					<img alt="" src="../image/Food/10.jpg" width="100">
					<!-- <img alt="" src="../image/Food/11.jpg" width="100">
					<img alt="" src="../image/Food/12.jpg" width="100"> -->
					
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">건의 메뉴</th>
				<td>
					<input type="select" name="suggest" required="required" style="width:120px">
                </select>
				</td>
			</tr>
			
				<td colspan="2" align="center">
					<input type="submit" class="btn btn=success" value="전송" style="width: 100px">
					<input type="reset" class="btn btn=danger" value="초기화" style="width: 100px">
				</td>
		</table>
	
	</form>

</body>
</html>