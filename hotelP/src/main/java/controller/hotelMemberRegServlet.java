package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.HotelMemberVO;
import db.HotelMemberDAO;

/**
 * Servlet implementation class hotelMemberRegServlet
 */
@WebServlet("/hotelMemberRegServlet.do")
public class hotelMemberRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HotelMemberDAO dao = new HotelMemberDAO(); 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		HotelMemberVO v = new HotelMemberVO();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");

		v.setId(id);
		v.setPw(pw);
		v.setName(name);
		v.setGender(gender);
		v.setTel(tel);	
		dao.minsert(v);
		request.getRequestDispatcher("mainPage.jsp").forward(request, response);


	}

}
