package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.RoomReservationVO;
import db.RoomReservationDAO;

/**
 * Servlet implementation class reservationServlet
 */
@WebServlet("/reservationServlet.do")
public class reservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RoomReservationDAO dao = new RoomReservationDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String id = request.getParameter("uid");
		String name = request.getParameter("uname");
		String roomnumber = request.getParameter("uroomnumber");
		String checkin = request.getParameter("ucheckin");
		String checkout = request.getParameter("ucheckout");
		int stayday = Integer.parseInt(request.getParameter("ustayday"));
		
		RoomReservationVO v = new RoomReservationVO();
		
		v.setId(id);
		v.setName(name);
		v.setRoomnumber(roomnumber);
		v.setCheckin(checkin);
		v.setCheckout(checkout);
		v.setStayday(stayday);
		
		dao.roomRervation(v);
	}

}
