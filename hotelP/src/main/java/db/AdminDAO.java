package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.AdminBoardVO;
import VO.AdminMemberVO;
import VO.HotelMemberVO;
import VO.RoomReservationVO;

public class AdminDAO {
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//愿�由ъ�� ����媛���
	public void insert(AdminMemberVO m) {
		
		String query = "INSERT INTO hoteladmember(id, pw, name, tel) VALUES(?, ?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPw());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getTel());
			pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//愿�由ъ�� 濡�洹몄��
	public int loginCheck(String id, String pw) {
		
		String query = "SELECT count(*) FROM hoteladmember WHERE id = ? AND pw = ?";
		int result = 0;
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
		
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//愿�由ъ��媛� ���쎈ぉ濡� 蹂닿린
	public ArrayList<RoomReservationVO> list() {
		ArrayList<RoomReservationVO> list = new ArrayList<>();
		String query = "SELECT * FROM hotelreservation";
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RoomReservationVO v = new RoomReservationVO();
				v.setId(rs.getString("id"));
				v.setName(rs.getString("name"));
				v.setRoomnumber(rs.getString("roomnumber"));
				v.setCheckin(rs.getString("checkin"));
				v.setCheckout(rs.getString("checkout"));
				v.setStayday(rs.getInt("stayday"));
				list.add(v);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//愿�由ъ��媛� ����紐⑸� 蹂닿린
	public ArrayList<HotelMemberVO> Memberlist() {
		ArrayList<HotelMemberVO> list = new ArrayList<>();
		String query = "SELECT * FROM hotelmember";
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HotelMemberVO v = new HotelMemberVO();
				v.setId(rs.getString("id"));
				v.setPw(rs.getString("pw"));
				v.setName(rs.getString("name"));
				v.setGender(rs.getString("gender"));
				v.setTel(rs.getString("tel"));
				list.add(v);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//愿�由ъ��媛� ����紐⑸� ����
	public void del(String id) {
		String query="DELETE FROM hotelmember WHERE id = ?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//愿�由ъ��媛� ����臾몄��紐⑸�蹂닿린
		public ArrayList<AdminBoardVO> mboardlist() {
			ArrayList<AdminBoardVO> list = new ArrayList<>();
			String query = "SELECT * FROM hmemberquestion";
			try {
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					AdminBoardVO v = new AdminBoardVO();
					v.setNum(rs.getInt("num"));
					v.setId(rs.getString("id"));
					v.setTitle(rs.getString("title"));
					v.setContents(rs.getString("contents"));
					list.add(v);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		public int idOverlapCheck(String id) {
			String query = "SELECT count(*) FROM hoteladmember WHERE id = ?";
			int result = 0;
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				rs.next();
				result = rs.getInt(1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}

}
