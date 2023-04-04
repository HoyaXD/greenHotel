package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.MemberBoardVO;

public class MemberBoardDAO {
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<MemberBoardVO> mboardlist(String id) {
		ArrayList<MemberBoardVO> list = new ArrayList<>();
		String query = "SELECT * FROM hmemberquestion WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberBoardVO v = new MemberBoardVO();
				v.setNum(rs.getInt("num"));
				v.setTitle(rs.getString("title"));
				v.setContents(rs.getString("contents"));
				v.setId(rs.getString("id"));
				list.add(v);
				System.out.println(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
