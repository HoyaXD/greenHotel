package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import VO.RoomReservationVO;

public class RoomReservationDAO {
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void roomRervation(RoomReservationVO r) {
		
		String query = "INSERT INTO hotelreservation(id, name, roomnumber, checkin, checkout, stayday) VALUES(?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getId());
			pstmt.setString(2, r.getName());
			pstmt.setString(3, r.getRoomnumber());
			pstmt.setString(4, r.getCheckin());
			pstmt.setString(5, r.getCheckout());
			pstmt.setInt(6, r.getStayday());
			pstmt.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int roomCheck(String roomnumber, String checkin, String checkout) {
		
		/*
		String query = "SELECT count(*) FROM hotelreservation WHERE roomnumber = '" + roomnumber
				+ "' AND (checkin > '" + checkin + "' and checkout < '" + checkout + "')" 
				+ " OR (checkin <= '" + checkin + "' and checkout >= '" + checkin + "')"
				+ " OR (checkin <= '" + checkin + "' and checkout >= '" + checkout + "')";
				*/
		String query = "SELECT COUNT(*) from hotelreservation WHERE roomnumber = '" + roomnumber
	            + "'AND (checkin BETWEEN '" + checkin +"'AND '" + checkout + "'"
	            + "OR checkout BETWEEN '" + checkin + "' AND '" + checkout + "'"
	            + "OR '" + checkin +"' BETWEEN checkin AND checkout "
	            + "OR '" + checkout + "' BETWEEN checkin AND checkout)";

		
		System.out.println(query);
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
