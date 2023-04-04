package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.RoomReservationDAO;

/**
 * Servlet implementation class roomcheckServlet
 */
@WebServlet("/roomcheckServlet.do")
public class roomcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RoomReservationDAO dao = new RoomReservationDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String roomnumber = request.getParameter("uroomnumber");
		String checkin = request.getParameter("ucheckin");
		String checkout = request.getParameter("ucheckout");
		System.out.println(roomnumber);
		if(dao.roomCheck(roomnumber, checkin, checkout) >= 1) {
			out.println("<span style='color:red;'>예약불가능<br>예약일정을 다시 설정해주세요!</span>");
		}else {
			out.println("<span style='color:green;'>예약가능</span>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
