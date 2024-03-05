<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<data>
<%

	DbConnect db=new DbConnect();
	Connection conn=db.getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null; //조회
	
	String sql="select * from food order by num"; //number의 오름차순으로 조회
	
	
	try{
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()) //전체조회 while문
		{
			String num=rs.getString("num");
			String foodname=rs.getString("foodname");
			String foodphoto=rs.getString("foodphoto");
			int price=rs.getInt("price");
			int cnt=rs.getInt("cnt");
			
			//자바를 닫고 data3.xml 보여지도록
			//food=table, name이라는 속성
			%>
			
			<food num="<%=num %>">
				<foodname><%=foodname %></foodname>
				<foodphoto><%=foodphoto %></foodphoto>
				<price><%=price %></price>
				<cnt><%=cnt %></cnt>
			</food>
			
		<%}
		
	}catch(SQLException e){
		
	}finally{
		db.dbClose(rs, pstmt, conn);
	}
	
%>
</data>