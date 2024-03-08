package intro.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import mysql.db.DbConnect;

public class IntroDao {

	DbConnect db=new DbConnect();
	
	//insert
	public void insertIntro(IntroDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into intro values (null,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//Dto에서 값을 가져와 순서대로 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAge());
			pstmt.setString(3, dto.getBirthday());
			pstmt.setString(4, dto.getHometown());
			pstmt.setString(5, dto.getHobby());
			pstmt.setString(6, dto.getMemo());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	//전체조회
	//getAllDatas: 데이터베이스에서 모든 데이터를 검색하는 메서드
	public List<IntroDto> getAllDatas()
	{
		List<IntroDto> list=new Vector<IntroDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from intro order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			//결과를 반복문을 통해 Dto에 설정한 후 리스트에 추가
			while(rs.next())
			{
				IntroDto dto=new IntroDto();
				
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setBirthday(rs.getString("birthday"));
				dto.setHobby(rs.getString("hobby"));
				dto.setHometown(rs.getString("hometown"));
				dto.setMemo(rs.getString("memo"));
				dto.setAge(rs.getString("age"));
				
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return list;
	}
	
	//detailView..num에 해당하는 하나의 dto반환
	//getOneData: 특정 번호에 해당하는 데이터를 검색하는 메서드
	public IntroDto getOneData(String num)
	{
		IntroDto dto=new IntroDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from intro where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setBirthday(rs.getString("birthday"));
				dto.setHobby(rs.getString("hobby"));
				dto.setHometown(rs.getString("hometown"));
				dto.setMemo(rs.getString("memo"));
				dto.setAge(rs.getString("age"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return dto;
		
	}
	
	//수정 (나이,생년월일,거주지역,취미,성격)
	public void updateIntro(IntroDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update intro set age=?, bitrhday=?, hometown=?, hobby=?, memo=? where num=?";
		
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1, dto.getAge());
				pstmt.setString(2, dto.getBirthday());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
			
	}

	
	
	//삭제 (시퀀스(num)에 해당하는 db삭제)
	public void deleteIntro(String num)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from intro where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
			
	}
	
}