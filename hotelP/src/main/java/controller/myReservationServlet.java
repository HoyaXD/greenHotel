package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import VO.RoomReservationVO;
import db.HotelMemberDAO;

/**
 * Servlet implementation class myReservationServlet
 */
@WebServlet("/myReservationServlet.do")
public class myReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HotelMemberDAO dao = new HotelMemberDAO(); 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String id = request.getParameter("id");
		
		List<RoomReservationVO> list = dao.reservationView(id);
		for(int i=0; i < list.size(); i++) {
			System.out.println(list.get(i).getId());
		}
		JSONArray jobj = new JSONArray(list);
		PrintWriter out = response.getWriter();
		out.print(jobj);
	}



}
