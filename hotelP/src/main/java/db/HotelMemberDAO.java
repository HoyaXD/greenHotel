package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import VO.HotelMemberVO;
import VO.MemberBoardVO;
import VO.RoomReservationVO;

public class HotelMemberDAO {
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	//����媛���
	public void minsert(HotelMemberVO m) {
	
		String query = "INSERT INTO hotelmember(id, pw, name, gender, tel) VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPw());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getGender());
			pstmt.setString(5, m.getTel());
			rs=pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	//濡�洹몄�� ����
	public int mloginCheck(String id, String pw) {
		
		String query = "SELECT count(*) FROM hotelmember WHERE id = ? AND pw = ?";
		int result = 0;
		try {
			System.out.println(id + 1);
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			System.out.println(pw + 1);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
		
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//���대�� 以�蹂듭껜��
	public int idOverlapCheck(String id) {
		String query = "SELECT count(*) FROM hotelmember WHERE id = ?";
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
	
	//���대��瑜� 諛����� ���쎈ぉ濡� 異��ν��湲�
	public ArrayList<RoomReservationVO> reservationView(String id) {
		ArrayList<RoomReservationVO> list = new ArrayList<>();
		RoomReservationVO v = new RoomReservationVO();
		
		String query = "SELECT * FROM hotelreservation WHERE id = ?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
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
	//��湲곕ぉ濡� ����
	public void update(String pw, String name, String tel, String id) {
		String query = "UPDATE hotelmember SET pw=?, name=?, tel=? WHERE id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			pstmt.setString(4, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void mboard(MemberBoardVO b) {
		
		String query = "INSERT INTO hmemberquestion(title, contents, id) VALUES(?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContents());
			pstmt.setString(3, b.getId());
			rs=pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	


}
