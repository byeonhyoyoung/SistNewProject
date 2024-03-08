package intropp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import mysql.db.DbConnect;

public class IntroppDao {

	DbConnect db=new DbConnect();
	
	public void introppInsert(IntroppDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into intropp values(null,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			
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
	public List<IntroppDto> getAllDatas()
	{
		List<IntroppDto> list=new Vector<IntroppDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from intropp order by num";
		
		
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next())
				{
					IntroppDto dto=new IntroppDto();
					
					dto.setNum(rs.getString("num"));
					dto.setName(rs.getString("name"));
					
					
					
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
}
