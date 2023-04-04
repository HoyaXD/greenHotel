package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import VO.HotelMemberVO;
import VO.RoomReservationVO;
import db.AdminDAO;

/**
 * Servlet implementation class adViewMemberServlet
 */
@WebServlet("/adViewMemberServlet.do")
public class adViewMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AdminDAO dao = new AdminDAO();

    public adViewMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		ArrayList<HotelMemberVO> list = dao.Memberlist();
		JSONArray jobj = new JSONArray(list);
		out.print(jobj);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
