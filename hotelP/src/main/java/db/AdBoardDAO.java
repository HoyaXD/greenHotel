package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import VO.AdminBoardVO;

public class AdBoardDAO {
	
		Connection conn = DBconn.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		public void admboard(AdminBoardVO b) {
			
			String query = "INSERT INTO adboard(num, title, contents, id) VALUES(?, ?, ?, ?)";
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, b.getNum());
				pstmt.setString(2, b.getTitle());
				pstmt.setString(3, b.getContents());
				pstmt.setString(4, b.getId());
				rs=pstmt.executeQuery();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
}
